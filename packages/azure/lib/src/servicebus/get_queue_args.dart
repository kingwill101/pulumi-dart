// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicebus_get_queue_get_queue_args_doc}
/// Arguments for getQueue.
/// {@endtemplate}
/// {@macro pulumi_servicebus_get_queue_get_queue_args_doc}
class GetQueueArgs {
  /// The name of this Service Bus Queue.
  final pulumi.Input<String> name;
  /// The ID of the ServiceBus Namespace where the Service Bus Queue exists.
  final pulumi.Input<String>? namespaceId;
  final pulumi.Input<String>? namespaceName;
  final pulumi.Input<String>? resourceGroupName;

  /// Creates a new [GetQueueArgs].
  /// [name] The name of this Service Bus Queue.
  /// [namespaceId] The ID of the ServiceBus Namespace where the Service Bus Queue exists.
  /// [namespaceName] Optional.
  /// [resourceGroupName] Optional.
  GetQueueArgs({
    required String name,
    String? namespaceId,
    String? namespaceName,
    String? resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      namespaceId = pulumi.Input.asOptionalInput<String>(namespaceId),
      namespaceName = pulumi.Input.asOptionalInput<String>(namespaceName),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'namespaceId': ?namespaceId,
      'namespaceName': ?namespaceName,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory GetQueueArgs.fromMap(Map<String, dynamic> map) {
    return GetQueueArgs(
      name: map['name'] as String,
      namespaceId: map['namespaceId'] == null ? null : map['namespaceId'] as String,
      namespaceName: map['namespaceName'] == null ? null : map['namespaceName'] as String,
      resourceGroupName: map['resourceGroupName'] == null ? null : map['resourceGroupName'] as String,
    );
  }
}

