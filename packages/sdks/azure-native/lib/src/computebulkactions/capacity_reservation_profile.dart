// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource.dart';

/// The parameters of a capacity reservation Profile.
class CapacityReservationProfile {
  /// Specifies the capacity reservation group resource id that should be used for allocating the virtual machine provided enough capacity has been reserved. Please refer to https://aka.ms/CapacityReservation for more details.
  final pulumi.Input<SubResource?>? capacityReservationGroup;

  /// Creates a new [CapacityReservationProfile].
  /// [capacityReservationGroup] Specifies the capacity reservation group resource id that should be used for allocating the virtual machine provided enough capacity has been reserved. Please refer to https://aka.ms/CapacityReservation for more details.
  const CapacityReservationProfile({
    this.capacityReservationGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityReservationGroup': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(capacityReservationGroup, (value) => value.toMap()),
    };
  }

  factory CapacityReservationProfile.fromMap(Map<String, dynamic> map) {
    return CapacityReservationProfile(
      capacityReservationGroup: (() { final guardedValue = map['capacityReservationGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
