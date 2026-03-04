// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_launch_template_capacity_reservation_specification_capacity_reservation_target.dart';

class GetLaunchTemplateCapacityReservationSpecification {
  final pulumi.Input<String> capacityReservationPreference;
  final pulumi.Input<
    List<
      GetLaunchTemplateCapacityReservationSpecificationCapacityReservationTarget
    >
  >
  capacityReservationTargets;

  /// Creates a new [GetLaunchTemplateCapacityReservationSpecification].
  /// [capacityReservationPreference] Required.
  /// [capacityReservationTargets] Required.
  GetLaunchTemplateCapacityReservationSpecification({
    required this.capacityReservationPreference,
    required this.capacityReservationTargets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityReservationPreference': capacityReservationPreference,
      'capacityReservationTargets':
          pulumi.Input.mapInputValue<
            List<
              GetLaunchTemplateCapacityReservationSpecificationCapacityReservationTarget
            >,
            List<Map<String, dynamic>>
          >(
            capacityReservationTargets,
            (value) =>
                pulumi.Input.encodeList<
                  GetLaunchTemplateCapacityReservationSpecificationCapacityReservationTarget,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetLaunchTemplateCapacityReservationSpecification.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetLaunchTemplateCapacityReservationSpecification(
      capacityReservationPreference: pulumi.Input.fromValue(
        map['capacityReservationPreference'] as String,
      ),
      capacityReservationTargets: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetLaunchTemplateCapacityReservationSpecificationCapacityReservationTarget
        >(
          map['capacityReservationTargets']!,
          (value) =>
              GetLaunchTemplateCapacityReservationSpecificationCapacityReservationTarget.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}
