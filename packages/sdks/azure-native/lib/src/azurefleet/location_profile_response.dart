// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'base_virtual_machine_profile_response.dart';

/// Represents the profile for a single additional location in the Fleet. The location and the virtualMachineProfileOverride (optional).
class LocationProfileResponse {
  /// The ARM location name of the additional region. If LocationProfile is specified, then location is required.
  final pulumi.Input<String> location;
  /// An override for computeProfile.baseVirtualMachineProfile specific to this region.
  /// This override is merged with the base virtual machine profile to define the final virtual machine profile for the resources deployed in this location.
  final pulumi.Input<BaseVirtualMachineProfileResponse>? virtualMachineProfileOverride;

  /// Creates a new [LocationProfileResponse].
  /// [location] The ARM location name of the additional region. If LocationProfile is specified, then location is required.
  /// [virtualMachineProfileOverride] An override for computeProfile.baseVirtualMachineProfile specific to this region.
  const LocationProfileResponse({
    required this.location,
    this.virtualMachineProfileOverride,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'virtualMachineProfileOverride': ?pulumi.Input.mapOptionalInputValue<BaseVirtualMachineProfileResponse, Map<String, dynamic>>(virtualMachineProfileOverride, (value) => value.toMap()),
    };
  }

  factory LocationProfileResponse.fromMap(Map<String, dynamic> map) {
    return LocationProfileResponse(
      location: pulumi.Input.fromValue(map['location'] as String),
      virtualMachineProfileOverride: (() { final guardedValue = map['virtualMachineProfileOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BaseVirtualMachineProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
