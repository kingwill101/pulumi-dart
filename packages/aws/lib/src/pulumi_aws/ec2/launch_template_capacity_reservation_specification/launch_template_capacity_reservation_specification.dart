// ignore_for_file: unused_element, unnecessary_cast

import '../launch_template_capacity_reservation_specification_capacity_reservation_target/launch_template_capacity_reservation_specification_capacity_reservation_target.dart';

class LaunchTemplateCapacityReservationSpecification {
  /// Indicates the instance's Capacity Reservation preferences. Can be `capacity-reservations-only`, <span pulumi-lang-nodejs="`open`" pulumi-lang-dotnet="`Open`" pulumi-lang-go="`open`" pulumi-lang-python="`open`" pulumi-lang-yaml="`open`" pulumi-lang-java="`open`">`open`</span> or <span pulumi-lang-nodejs="`none`" pulumi-lang-dotnet="`None`" pulumi-lang-go="`none`" pulumi-lang-python="`none`" pulumi-lang-yaml="`none`" pulumi-lang-java="`none`">`none`</span>. If <span pulumi-lang-nodejs="`capacityReservationId`" pulumi-lang-dotnet="`CapacityReservationId`" pulumi-lang-go="`capacityReservationId`" pulumi-lang-python="`capacity_reservation_id`" pulumi-lang-yaml="`capacityReservationId`" pulumi-lang-java="`capacityReservationId`">`capacity_reservation_id`</span> or <span pulumi-lang-nodejs="`capacityReservationResourceGroupArn`" pulumi-lang-dotnet="`CapacityReservationResourceGroupArn`" pulumi-lang-go="`capacityReservationResourceGroupArn`" pulumi-lang-python="`capacity_reservation_resource_group_arn`" pulumi-lang-yaml="`capacityReservationResourceGroupArn`" pulumi-lang-java="`capacityReservationResourceGroupArn`">`capacity_reservation_resource_group_arn`</span> is specified in <span pulumi-lang-nodejs="`capacityReservationTarget`" pulumi-lang-dotnet="`CapacityReservationTarget`" pulumi-lang-go="`capacityReservationTarget`" pulumi-lang-python="`capacity_reservation_target`" pulumi-lang-yaml="`capacityReservationTarget`" pulumi-lang-java="`capacityReservationTarget`">`capacity_reservation_target`</span> block, either omit <span pulumi-lang-nodejs="`capacityReservationPreference`" pulumi-lang-dotnet="`CapacityReservationPreference`" pulumi-lang-go="`capacityReservationPreference`" pulumi-lang-python="`capacity_reservation_preference`" pulumi-lang-yaml="`capacityReservationPreference`" pulumi-lang-java="`capacityReservationPreference`">`capacity_reservation_preference`</span> or set it to `capacity-reservations-only`.
  final String? capacityReservationPreference;

  /// Used to target a specific Capacity Reservation:
  final LaunchTemplateCapacityReservationSpecificationCapacityReservationTarget?
      capacityReservationTarget;

  LaunchTemplateCapacityReservationSpecification({
    this.capacityReservationPreference,
    this.capacityReservationTarget,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final capacityReservationPreferenceValue = capacityReservationPreference;
    if (capacityReservationPreferenceValue != null) {
      map['capacityReservationPreference'] = capacityReservationPreferenceValue;
    }
    final capacityReservationTargetValue = capacityReservationTarget;
    if (capacityReservationTargetValue != null) {
      map['capacityReservationTarget'] = capacityReservationTargetValue.toMap();
    }
    return map;
  }

  factory LaunchTemplateCapacityReservationSpecification.fromMap(
      Map<String, dynamic> map) {
    return LaunchTemplateCapacityReservationSpecification(
      capacityReservationPreference:
          map['capacityReservationPreference'] == null
              ? null
              : map['capacityReservationPreference'] as String,
      capacityReservationTarget: map['capacityReservationTarget'] == null
          ? null
          : LaunchTemplateCapacityReservationSpecificationCapacityReservationTarget
              .fromMap((map['capacityReservationTarget'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
