// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';

/// The parameters of a capacity reservation Profile.
class CapacityReservationProfileResponse {
  /// Specifies the capacity reservation group resource id that should be used for allocating the virtual machine or scaleset vm instances provided enough capacity has been reserved. Please refer to https://aka.ms/CapacityReservation for more details.
  final pulumi.Input<SubResourceResponse?>? capacityReservationGroup;

  /// Creates a new [CapacityReservationProfileResponse].
  /// [capacityReservationGroup] Specifies the capacity reservation group resource id that should be used for allocating the virtual machine or scaleset vm instances provided enough capacity has been reserved. Please refer to https://aka.ms/CapacityReservation for more details.
  const CapacityReservationProfileResponse({
    this.capacityReservationGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityReservationGroup': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(capacityReservationGroup, (value) => value.toMap()),
    };
  }

  factory CapacityReservationProfileResponse.fromMap(Map<String, dynamic> map) {
    return CapacityReservationProfileResponse(
      capacityReservationGroup: (() { final guardedValue = map['capacityReservationGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
