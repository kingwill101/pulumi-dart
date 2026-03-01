// ignore_for_file: unused_element, unnecessary_cast

import 'http_request_response.dart';
import 'retry_policy_response.dart';
import 'service_bus_queue_message_response.dart';
import 'service_bus_topic_message_response.dart';
import 'storage_queue_message_response.dart';

class JobErrorActionResponse {
  /// Gets or sets the storage queue message.
  final StorageQueueMessageResponse? queueMessage;
  /// Gets or sets the http requests.
  final HttpRequestResponse? request;
  /// Gets or sets the retry policy.
  final RetryPolicyResponse? retryPolicy;
  /// Gets or sets the service bus queue message.
  final ServiceBusQueueMessageResponse? serviceBusQueueMessage;
  /// Gets or sets the service bus topic message.
  final ServiceBusTopicMessageResponse? serviceBusTopicMessage;
  /// Gets or sets the job error action type.
  final String? type;

  /// Creates a new [JobErrorActionResponse].
  /// [queueMessage] Gets or sets the storage queue message.
  /// [request] Gets or sets the http requests.
  /// [retryPolicy] Gets or sets the retry policy.
  /// [serviceBusQueueMessage] Gets or sets the service bus queue message.
  /// [serviceBusTopicMessage] Gets or sets the service bus topic message.
  /// [type] Gets or sets the job error action type.
  JobErrorActionResponse({
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
      'type': ?type,
    };
  }

  factory JobErrorActionResponse.fromMap(Map<String, dynamic> map) {
    return JobErrorActionResponse(
      queueMessage: map['queueMessage'] == null ? null : StorageQueueMessageResponse.fromMap((map['queueMessage'] as Map).cast<String, dynamic>()),
      request: map['request'] == null ? null : HttpRequestResponse.fromMap((map['request'] as Map).cast<String, dynamic>()),
      retryPolicy: map['retryPolicy'] == null ? null : RetryPolicyResponse.fromMap((map['retryPolicy'] as Map).cast<String, dynamic>()),
      serviceBusQueueMessage: map['serviceBusQueueMessage'] == null ? null : ServiceBusQueueMessageResponse.fromMap((map['serviceBusQueueMessage'] as Map).cast<String, dynamic>()),
      serviceBusTopicMessage: map['serviceBusTopicMessage'] == null ? null : ServiceBusTopicMessageResponse.fromMap((map['serviceBusTopicMessage'] as Map).cast<String, dynamic>()),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

