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
    pulumi.Output<String>? description,
    pulumi.Output<int>? period,
    pulumi.Output<String>? planCode,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vswitchId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      period = pulumi.Input.asOptionalInput<int>(period),
      planCode = pulumi.Input.asOptionalInput<String>(planCode),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      period: map['period'] == null ? null : pulumi.Output.create<int>(map['period'] as int),
      planCode: map['planCode'] == null ? null : pulumi.Output.create<String>(map['planCode'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
    );
  }
}

