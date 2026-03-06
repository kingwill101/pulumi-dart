// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_yundun_d_baudit_instance_dbaudit_instance_args_doc}
/// The set of arguments for DBAuditInstance.
/// {@endtemplate}
/// {@macro pulumi_yundun_d_baudit_instance_dbaudit_instance_args_doc}
class DBAuditInstanceArgs {
  /// Description of the instance. This name can have a string of 1 to 63 characters.
  final pulumi.Input<String> description;
  /// Duration for initially producing the instance. Valid values: [1~9], 12, 24, 36. At present, the provider does not support modify "period".
  /// &gt; **NOTE:** The attribute `period` is only used to create Subscription instance or modify the PayAsYouGo instance to Subscription. Once effect, it will not be modified that means running `pulumi up` will not effect the resource.
  final pulumi.Input<int> period;
  /// Plan code of the Cloud DBAudit to produce. (alpha.professional, alpha.basic, alpha.premium)
  final pulumi.Input<String> planCode;
  /// The Id of resource group which the DBaudit Instance belongs. If not set, the resource is created in the default resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// vSwtich ID configured to audit
  final pulumi.Input<String> vswitchId;

  /// Creates a new [DBAuditInstanceArgs].
  /// [description] Description of the instance. This name can have a string of 1 to 63 characters.
  /// [period] Duration for initially producing the instance. Valid values: [1~9], 12, 24, 36. At present, the provider does not support modify "period".
  /// [planCode] Plan code of the Cloud DBAudit to produce. (alpha.professional, alpha.basic, alpha.premium)
  /// [resourceGroupId] The Id of resource group which the DBaudit Instance belongs. If not set, the resource is created in the default resource group.
  /// [tags] A mapping of tags to assign to the resource.
  /// [vswitchId] vSwtich ID configured to audit
  const DBAuditInstanceArgs({
    required this.description,
    required this.period,
    required this.planCode,
    this.resourceGroupId,
    this.tags,
    required this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'period': period,
      'planCode': planCode,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
      'vswitchId': vswitchId,
    };
  }

  factory DBAuditInstanceArgs.fromMap(Map<String, dynamic> map) {
    return DBAuditInstanceArgs(
      description: pulumi.Input.fromValue(map['description'] as String),
      period: pulumi.Input.fromValue(map['period'] as int),
      planCode: pulumi.Input.fromValue(map['planCode'] as String),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
    );
  }
}

