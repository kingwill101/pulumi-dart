// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of InstanceMaintenancePolicy
class InstanceMaintenancePolicyResponse {
  /// Specifies the upper threshold as a percentage of the desired capacity of the Auto Scaling group. It represents the maximum percentage of the group that can be in service and healthy, or pending, to support your workload when replacing instances. Value range is 100 to 200. To clear a previously set value, specify a value of ``-1``. Both ``MinHealthyPercentage`` and ``MaxHealthyPercentage`` must be specified, and the difference between them cannot be greater than 100. A large range increases the number of instances that can be replaced at the same time.
  final pulumi.Input<int>? maxHealthyPercentage;
  /// Specifies the lower threshold as a percentage of the desired capacity of the Auto Scaling group. It represents the minimum percentage of the group to keep in service, healthy, and ready to use to support your workload when replacing instances. Value range is 0 to 100. To clear a previously set value, specify a value of ``-1``.
  final pulumi.Input<int>? minHealthyPercentage;

  /// Creates a new [InstanceMaintenancePolicyResponse].
  /// [maxHealthyPercentage] Specifies the upper threshold as a percentage of the desired capacity of the Auto Scaling group. It represents the maximum percentage of the group that can be in service and healthy, or pending, to support your workload when replacing instances. Value range is 100 to 200. To clear a previously set value, specify a value of ``-1``. Both ``MinHealthyPercentage`` and ``MaxHealthyPercentage`` must be specified, and the difference between them cannot be greater than 100. A large range increases the number of instances that can be replaced at the same time.
  /// [minHealthyPercentage] Specifies the lower threshold as a percentage of the desired capacity of the Auto Scaling group. It represents the minimum percentage of the group to keep in service, healthy, and ready to use to support your workload when replacing instances. Value range is 0 to 100. To clear a previously set value, specify a value of ``-1``.
  InstanceMaintenancePolicyResponse({
    this.maxHealthyPercentage,
    this.minHealthyPercentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxHealthyPercentage': ?maxHealthyPercentage,
      'minHealthyPercentage': ?minHealthyPercentage,
    };
  }

  factory InstanceMaintenancePolicyResponse.fromMap(Map<String, dynamic> map) {
    return InstanceMaintenancePolicyResponse(
      maxHealthyPercentage: map['maxHealthyPercentage'] == null ? null : (map['maxHealthyPercentage']! as int).input(),
      minHealthyPercentage: map['minHealthyPercentage'] == null ? null : (map['minHealthyPercentage']! as int).input(),
    );
  }
}

