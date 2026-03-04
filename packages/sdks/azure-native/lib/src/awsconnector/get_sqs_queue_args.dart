// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_sqs_queue_args_doc}
/// Arguments for getSqsQueue.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_sqs_queue_args_doc}
class GetSqsQueueArgs {
  /// Name of SqsQueue
  final pulumi.Input<String> name;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetSqsQueueArgs].
  /// [name] Name of SqsQueue
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetSqsQueueArgs({required this.name, required this.resourceGroupName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetSqsQueueArgs.fromMap(Map<String, dynamic> map) {
    return GetSqsQueueArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
