// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'base_virtual_machine_profile.dart';

/// Represents the profile for a single additional location in the Fleet. The location and the virtualMachineProfileOverride (optional).
class LocationProfile {
  /// The ARM location name of the additional region. If LocationProfile is specified, then location is required.
  final pulumi.Input<String> location;
  /// An override for computeProfile.baseVirtualMachineProfile specific to this region.
  /// This override is merged with the base virtual machine profile to define the final virtual machine profile for the resources deployed in this location.
  final pulumi.Input<BaseVirtualMachineProfile>? virtualMachineProfileOverride;

  /// Creates a new [LocationProfile].
  /// [location] The ARM location name of the additional region. If LocationProfile is specified, then location is required.
  /// [virtualMachineProfileOverride] An override for computeProfile.baseVirtualMachineProfile specific to this region.
  LocationProfile({
    required this.location,
    this.virtualMachineProfileOverride,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'virtualMachineProfileOverride': ?pulumi.Input.mapOptionalInputValue<BaseVirtualMachineProfile, Map<String, dynamic>>(virtualMachineProfileOverride, (value) => value.toMap()),
    };
  }

  factory LocationProfile.fromMap(Map<String, dynamic> map) {
    return LocationProfile(
      location: (map['location'] as String).input(),
      virtualMachineProfileOverride: map['virtualMachineProfileOverride'] == null ? null : (BaseVirtualMachineProfile.fromMap((map['virtualMachineProfileOverride'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

