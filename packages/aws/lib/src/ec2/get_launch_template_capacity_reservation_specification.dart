// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_launch_template_capacity_reservation_specification_capacity_reservation_target.dart';

class GetLaunchTemplateCapacityReservationSpecification {
  final String capacityReservationPreference;
  final List<
          GetLaunchTemplateCapacityReservationSpecificationCapacityReservationTarget>
      capacityReservationTargets;

  /// Creates a new [GetLaunchTemplateCapacityReservationSpecification].
  /// [capacityReservationPreference] Required.
  /// [capacityReservationTargets] Required.
  GetLaunchTemplateCapacityReservationSpecification({
    required this.capacityReservationPreference,
    required this.capacityReservationTargets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['capacityReservationPreference'] = capacityReservationPreference;
    map['capacityReservationTargets'] = pulumi.Input.encodeList<
        GetLaunchTemplateCapacityReservationSpecificationCapacityReservationTarget,
        Map<String,
            dynamic>>(capacityReservationTargets, (value) => value.toMap());
    return map;
  }

  factory GetLaunchTemplateCapacityReservationSpecification.fromMap(
      Map<String, dynamic> map) {
    return GetLaunchTemplateCapacityReservationSpecification(
      capacityReservationPreference:
          map['capacityReservationPreference'] as String,
      capacityReservationTargets: pulumi.Input.decodeList<
              GetLaunchTemplateCapacityReservationSpecificationCapacityReservationTarget>(
          map['capacityReservationTargets'],
          (value) =>
              GetLaunchTemplateCapacityReservationSpecificationCapacityReservationTarget
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
