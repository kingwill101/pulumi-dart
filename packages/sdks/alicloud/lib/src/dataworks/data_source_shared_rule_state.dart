// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DataSourceSharedRule resources.
class DataSourceSharedRuleState {
  /// The creation time of the data source sharing rule.
  final pulumi.Input<int>? createTime;
  /// The ID of the data source, that is, the unique identifier of the data source.
  final pulumi.Input<int>? dataSourceId;
  /// The data source sharing rule ID, that is, the unique identifier of the data source sharing rule.
  final pulumi.Input<String>? dataSourceSharedRuleId;
  /// The environment type of the data source shared to the target project, such as Dev (Development Environment) and Prod (production environment).
  final pulumi.Input<String>? envType;
  /// The target user of the data source permission policy, which is null to share to the project.
  final pulumi.Input<String>? sharedUser;
  /// The ID of the project to which the data source is shared.
  final pulumi.Input<int>? targetProjectId;

  /// Creates a new [DataSourceSharedRuleState].
  /// [createTime] The creation time of the data source sharing rule.
  /// [dataSourceId] The ID of the data source, that is, the unique identifier of the data source.
  /// [dataSourceSharedRuleId] The data source sharing rule ID, that is, the unique identifier of the data source sharing rule.
  /// [envType] The environment type of the data source shared to the target project, such as Dev (Development Environment) and Prod (production environment).
  /// [sharedUser] The target user of the data source permission policy, which is null to share to the project.
  /// [targetProjectId] The ID of the project to which the data source is shared.
  DataSourceSharedRuleState({
    pulumi.Output<int>? createTime,
    pulumi.Output<int>? dataSourceId,
    pulumi.Output<String>? dataSourceSharedRuleId,
    pulumi.Output<String>? envType,
    pulumi.Output<String>? sharedUser,
    pulumi.Output<int>? targetProjectId,
  }) :
      createTime = pulumi.Input.asOptionalInput<int>(createTime),
      dataSourceId = pulumi.Input.asOptionalInput<int>(dataSourceId),
      dataSourceSharedRuleId = pulumi.Input.asOptionalInput<String>(dataSourceSharedRuleId),
      envType = pulumi.Input.asOptionalInput<String>(envType),
      sharedUser = pulumi.Input.asOptionalInput<String>(sharedUser),
      targetProjectId = pulumi.Input.asOptionalInput<int>(targetProjectId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'dataSourceId': ?dataSourceId,
      'dataSourceSharedRuleId': ?dataSourceSharedRuleId,
      'envType': ?envType,
      'sharedUser': ?sharedUser,
      'targetProjectId': ?targetProjectId,
    };
  }

  factory DataSourceSharedRuleState.fromMap(Map<String, dynamic> map) {
    return DataSourceSharedRuleState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<int>(map['createTime'] as int),
      dataSourceId: map['dataSourceId'] == null ? null : pulumi.Output.create<int>(map['dataSourceId'] as int),
      dataSourceSharedRuleId: map['dataSourceSharedRuleId'] == null ? null : pulumi.Output.create<String>(map['dataSourceSharedRuleId'] as String),
      envType: map['envType'] == null ? null : pulumi.Output.create<String>(map['envType'] as String),
      sharedUser: map['sharedUser'] == null ? null : pulumi.Output.create<String>(map['sharedUser'] as String),
      targetProjectId: map['targetProjectId'] == null ? null : pulumi.Output.create<int>(map['targetProjectId'] as int),
    );
  }
}

