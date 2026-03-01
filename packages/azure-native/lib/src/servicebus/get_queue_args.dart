// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicebus_get_queue_args_doc}
/// Arguments for getQueue.
/// {@endtemplate}
/// {@macro pulumi_servicebus_get_queue_args_doc}
class GetQueueArgs {
  /// The namespace name
  final pulumi.Input<String> namespaceName;
  /// The queue name.
  final pulumi.Input<String> queueName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetQueueArgs].
  /// [namespaceName] The namespace name
  /// [queueName] The queue name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetQueueArgs({
    required String namespaceName,
    required String queueName,
    required String resourceGroupName,
  }) :
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      queueName = pulumi.Input.asInput<String>(queueName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceName': namespaceName,
      'queueName': queueName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetQueueArgs.fromMap(Map<String, dynamic> map) {
    return GetQueueArgs(
      namespaceName: map['namespaceName'] as String,
      queueName: map['queueName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

