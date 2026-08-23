// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_logs_log_stream_args_doc}
/// Arguments for getLogsLogStream.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_logs_log_stream_args_doc}
class GetLogsLogStreamArgs {
  /// Name of LogsLogStream
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetLogsLogStreamArgs].
  /// [name] Name of LogsLogStream
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetLogsLogStreamArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetLogsLogStreamArgs.fromMap(Map<String, dynamic> map) {
    return GetLogsLogStreamArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
