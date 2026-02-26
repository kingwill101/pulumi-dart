// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_launch_template_capacity_reservation_specification_capacity_reservation_target/get_launch_template_capacity_reservation_specification_capacity_reservation_target.dart';

class GetLaunchTemplateCapacityReservationSpecification {
  final String capacityReservationPreference;
  final List<
          GetLaunchTemplateCapacityReservationSpecificationCapacityReservationTarget>
      capacityReservationTargets;

  GetLaunchTemplateCapacityReservationSpecification({
    required this.capacityReservationPreference,
    required this.capacityReservationTargets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['capacityReservationPreference'] = capacityReservationPreference;
    map['capacityReservationTargets'] = Input.encodeList<
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
      capacityReservationTargets: Input.decodeList<
              GetLaunchTemplateCapacityReservationSpecificationCapacityReservationTarget>(
          map['capacityReservationTargets'],
          (value) =>
              GetLaunchTemplateCapacityReservationSpecificationCapacityReservationTarget
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
