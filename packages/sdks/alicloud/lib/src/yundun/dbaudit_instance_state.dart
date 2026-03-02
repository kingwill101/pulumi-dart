// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DBAuditInstance resources.
class DBAuditInstanceState {
  /// Description of the instance. This name can have a string of 1 to 63 characters.
  final pulumi.Input<String>? description;
  /// Duration for initially producing the instance. Valid values: [1~9], 12, 24, 36. At present, the provider does not support modify "period".
  /// > **NOTE:** The attribute `period` is only used to create Subscription instance or modify the PayAsYouGo instance to Subscription. Once effect, it will not be modified that means running `pulumi up` will not effect the resource.
  final pulumi.Input<int>? period;
  /// Plan code of the Cloud DBAudit to produce. (alpha.professional, alpha.basic, alpha.premium)
  final pulumi.Input<String>? planCode;
  /// The Id of resource group which the DBaudit Instance belongs. If not set, the resource is created in the default resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// vSwtich ID configured to audit
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [DBAuditInstanceState].
  /// [description] Description of the instance. This name can have a string of 1 to 63 characters.
  /// [period] Duration for initially producing the instance. Valid values: [1~9], 12, 24, 36. At present, the provider does not support modify "period".
  /// [planCode] Plan code of the Cloud DBAudit to produce. (alpha.professional, alpha.basic, alpha.premium)
  /// [resourceGroupId] The Id of resource group which the DBaudit Instance belongs. If not set, the resource is created in the default resource group.
  /// [tags] A mapping of tags to assign to the resource.
  /// [vswitchId] vSwtich ID configured to audit
  DBAuditInstanceState({
    this.description,
    this.period,
    this.planCode,
    this.resourceGroupId,
    this.tags,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'period': ?period,
      'planCode': ?planCode,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
      'vswitchId': ?vswitchId,
    };
  }

  factory DBAuditInstanceState.fromMap(Map<String, dynamic> map) {
    return DBAuditInstanceState(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      period: map['period'] == null ? null : (map['period']! as int).input(),
      planCode: map['planCode'] == null ? null : (map['planCode']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId']! as String).input(),
    );
  }
}

