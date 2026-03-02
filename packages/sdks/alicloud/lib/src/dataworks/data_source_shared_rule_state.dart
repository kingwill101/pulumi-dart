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
    this.createTime,
    this.dataSourceId,
    this.dataSourceSharedRuleId,
    this.envType,
    this.sharedUser,
    this.targetProjectId,
  });

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
      createTime: map['createTime'] == null ? null : (map['createTime'] as int).input(),
      dataSourceId: map['dataSourceId'] == null ? null : (map['dataSourceId'] as int).input(),
      dataSourceSharedRuleId: map['dataSourceSharedRuleId'] == null ? null : (map['dataSourceSharedRuleId'] as String).input(),
      envType: map['envType'] == null ? null : (map['envType'] as String).input(),
      sharedUser: map['sharedUser'] == null ? null : (map['sharedUser'] as String).input(),
      targetProjectId: map['targetProjectId'] == null ? null : (map['targetProjectId'] as int).input(),
    );
  }
}

