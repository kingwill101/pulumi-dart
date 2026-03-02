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
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetLogsLogGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetLogsLogGroupArgs(
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

