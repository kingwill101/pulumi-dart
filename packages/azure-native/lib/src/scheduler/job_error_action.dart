// ignore_for_file: unused_element, unnecessary_cast

import 'http_request.dart';
import 'job_action_type.dart';
import 'retry_policy.dart';
import 'service_bus_queue_message.dart';
import 'service_bus_topic_message.dart';
import 'storage_queue_message.dart';

class JobErrorAction {
  /// Gets or sets the storage queue message.
  final StorageQueueMessage? queueMessage;
  /// Gets or sets the http requests.
  final HttpRequest? request;
  /// Gets or sets the retry policy.
  final RetryPolicy? retryPolicy;
  /// Gets or sets the service bus queue message.
  final ServiceBusQueueMessage? serviceBusQueueMessage;
  /// Gets or sets the service bus topic message.
  final ServiceBusTopicMessage? serviceBusTopicMessage;
  /// Gets or sets the job error action type.
  final JobActionType? type;

  /// Creates a new [JobErrorAction].
  /// [queueMessage] Gets or sets the storage queue message.
  /// [request] Gets or sets the http requests.
  /// [retryPolicy] Gets or sets the retry policy.
  /// [serviceBusQueueMessage] Gets or sets the service bus queue message.
  /// [serviceBusTopicMessage] Gets or sets the service bus topic message.
  /// [type] Gets or sets the job error action type.
  JobErrorAction({
    this.queueMessage,
    this.request,
    this.retryPolicy,
    this.serviceBusQueueMessage,
    this.serviceBusTopicMessage,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queueMessage': ?queueMessage == null ? null : queueMessage!.toMap(),
      'request': ?request == null ? null : request!.toMap(),
      'retryPolicy': ?retryPolicy == null ? null : retryPolicy!.toMap(),
      'serviceBusQueueMessage': ?serviceBusQueueMessage == null ? null : serviceBusQueueMessage!.toMap(),
      'serviceBusTopicMessage': ?serviceBusTopicMessage == null ? null : serviceBusTopicMessage!.toMap(),
      'type': ?type == null ? null : type!.value,
    };
  }

  factory JobErrorAction.fromMap(Map<String, dynamic> map) {
    return JobErrorAction(
      queueMessage: map['queueMessage'] == null ? null : StorageQueueMessage.fromMap((map['queueMessage'] as Map).cast<String, dynamic>()),
      request: map['request'] == null ? null : HttpRequest.fromMap((map['request'] as Map).cast<String, dynamic>()),
      retryPolicy: map['retryPolicy'] == null ? null : RetryPolicy.fromMap((map['retryPolicy'] as Map).cast<String, dynamic>()),
      serviceBusQueueMessage: map['serviceBusQueueMessage'] == null ? null : ServiceBusQueueMessage.fromMap((map['serviceBusQueueMessage'] as Map).cast<String, dynamic>()),
      serviceBusTopicMessage: map['serviceBusTopicMessage'] == null ? null : ServiceBusTopicMessage.fromMap((map['serviceBusTopicMessage'] as Map).cast<String, dynamic>()),
      type: map['type'] == null ? null : JobActionType.fromValue(map['type'] as String),
    );
  }
}

