// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataworks_data_source_shared_rule_data_source_shared_rule_args_doc}
/// The set of arguments for DataSourceSharedRule.
/// {@endtemplate}
/// {@macro pulumi_dataworks_data_source_shared_rule_data_source_shared_rule_args_doc}
class DataSourceSharedRuleArgs {
  /// The ID of the data source, that is, the unique identifier of the data source.
  final pulumi.Input<int> dataSourceId;
  /// The environment type of the data source shared to the target project, such as Dev (Development Environment) and Prod (production environment).
  final pulumi.Input<String> envType;
  /// The target user of the data source permission policy, which is null to share to the project.
  final pulumi.Input<String>? sharedUser;
  /// The ID of the project to which the data source is shared.
  final pulumi.Input<int> targetProjectId;

  /// Creates a new [DataSourceSharedRuleArgs].
  /// [dataSourceId] The ID of the data source, that is, the unique identifier of the data source.
  /// [envType] The environment type of the data source shared to the target project, such as Dev (Development Environment) and Prod (production environment).
  /// [sharedUser] The target user of the data source permission policy, which is null to share to the project.
  /// [targetProjectId] The ID of the project to which the data source is shared.
  DataSourceSharedRuleArgs({
    required pulumi.Output<int> dataSourceId,
    required pulumi.Output<String> envType,
    pulumi.Output<String>? sharedUser,
    required pulumi.Output<int> targetProjectId,
  }) :
      dataSourceId = pulumi.Input.asInput<int>(dataSourceId),
      envType = pulumi.Input.asInput<String>(envType),
      sharedUser = pulumi.Input.asOptionalInput<String>(sharedUser),
      targetProjectId = pulumi.Input.asInput<int>(targetProjectId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSourceId': dataSourceId,
      'envType': envType,
      'sharedUser': ?sharedUser,
      'targetProjectId': targetProjectId,
    };
  }

  factory DataSourceSharedRuleArgs.fromMap(Map<String, dynamic> map) {
    return DataSourceSharedRuleArgs(
      dataSourceId: pulumi.Output.create<int>(map['dataSourceId'] as int),
      envType: pulumi.Output.create<String>(map['envType'] as String),
      sharedUser: map['sharedUser'] == null ? null : pulumi.Output.create<String>(map['sharedUser'] as String),
      targetProjectId: pulumi.Output.create<int>(map['targetProjectId'] as int),
    );
  }
}

