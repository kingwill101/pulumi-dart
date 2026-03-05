// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information about the storage queue destination for an event subscription.
class StorageQueueEventSubscriptionDestinationResponse {
  /// Type of the endpoint for the event subscription destination.
  /// Expected value is 'StorageQueue'.
  final pulumi.Input<String> endpointType;
  /// Storage queue message time to live in seconds. This value cannot be zero or negative with the exception of using -1 to indicate that the Time To Live of the message is Infinite.
  final pulumi.Input<double>? queueMessageTimeToLiveInSeconds;
  /// The name of the Storage queue under a storage account that is the destination of an event subscription.
  final pulumi.Input<String>? queueName;
  /// The Azure Resource ID of the storage account that contains the queue that is the destination of an event subscription.
  final pulumi.Input<String>? resourceId;

  /// Creates a new [StorageQueueEventSubscriptionDestinationResponse].
  /// [endpointType] Type of the endpoint for the event subscription destination.
  /// [queueMessageTimeToLiveInSeconds] Storage queue message time to live in seconds. This value cannot be zero or negative with the exception of using -1 to indicate that the Time To Live of the message is Infinite.
  /// [queueName] The name of the Storage queue under a storage account that is the destination of an event subscription.
  /// [resourceId] The Azure Resource ID of the storage account that contains the queue that is the destination of an event subscription.
  StorageQueueEventSubscriptionDestinationResponse({
    required this.endpointType,
    this.queueMessageTimeToLiveInSeconds,
    this.queueName,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointType': endpointType,
      'queueMessageTimeToLiveInSeconds': ?queueMessageTimeToLiveInSeconds,
      'queueName': ?queueName,
      'resourceId': ?resourceId,
    };
  }

  factory StorageQueueEventSubscriptionDestinationResponse.fromMap(Map<String, dynamic> map) {
    return StorageQueueEventSubscriptionDestinationResponse(
      endpointType: pulumi.Input.fromValue(map['endpointType'] as String),
      queueMessageTimeToLiveInSeconds: (() { final guardedValue = map['queueMessageTimeToLiveInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      queueName: (() { final guardedValue = map['queueName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

