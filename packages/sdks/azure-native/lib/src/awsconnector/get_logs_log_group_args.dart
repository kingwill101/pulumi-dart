// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_logs_log_group_args_doc}
/// Arguments for getLogsLogGroup.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_logs_log_group_args_doc}
class GetLogsLogGroupArgs {
  /// Name of LogsLogGroup
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetLogsLogGroupArgs].
  /// [name] Name of LogsLogGroup
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetLogsLogGroupArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetLogsLogGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetLogsLogGroupArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

