// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_status.dart';
import 'sbclient_affine_properties.dart';

/// {@template pulumi_servicebus_subscription_args_doc}
/// The set of arguments for Subscription.
/// {@endtemplate}
/// {@macro pulumi_servicebus_subscription_args_doc}
class SubscriptionArgs {
  /// ISO 8061 timeSpan idle interval after which the topic is automatically deleted. The minimum duration is 5 minutes.
  final pulumi.Input<String>? autoDeleteOnIdle;
  /// Properties specific to client affine subscriptions.
  final pulumi.Input<SBClientAffineProperties>? clientAffineProperties;
  /// Value that indicates whether a subscription has dead letter support on filter evaluation exceptions.
  final pulumi.Input<bool>? deadLetteringOnFilterEvaluationExceptions;
  /// Value that indicates whether a subscription has dead letter support when a message expires.
  final pulumi.Input<bool>? deadLetteringOnMessageExpiration;
  /// ISO 8061 Default message timespan to live value. This is the duration after which the message expires, starting from when the message is sent to Service Bus. This is the default value used when TimeToLive is not set on a message itself.
  final pulumi.Input<String>? defaultMessageTimeToLive;
  /// ISO 8601 timeSpan structure that defines the duration of the duplicate detection history. The default value is 10 minutes.
  final pulumi.Input<String>? duplicateDetectionHistoryTimeWindow;
  /// Value that indicates whether server-side batched operations are enabled.
  final pulumi.Input<bool>? enableBatchedOperations;
  /// Queue/Topic name to forward the Dead Letter message
  final pulumi.Input<String>? forwardDeadLetteredMessagesTo;
  /// Queue/Topic name to forward the messages
  final pulumi.Input<String>? forwardTo;
  /// Value that indicates whether the subscription has an affinity to the client id.
  final pulumi.Input<bool>? isClientAffine;
  /// ISO 8061 lock duration timespan for the subscription. The default value is 1 minute.
  final pulumi.Input<String>? lockDuration;
  /// Number of maximum deliveries.
  final pulumi.Input<int>? maxDeliveryCount;
  /// The namespace name
  final pulumi.Input<String> namespaceName;
  /// Value indicating if a subscription supports the concept of sessions.
  final pulumi.Input<bool>? requiresSession;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Enumerates the possible values for the status of a messaging entity.
  final pulumi.Input<EntityStatus>? status;
  /// The subscription name.
  final pulumi.Input<String>? subscriptionName;
  /// The topic name.
  final pulumi.Input<String> topicName;

  /// Creates a new [SubscriptionArgs].
  /// [autoDeleteOnIdle] ISO 8061 timeSpan idle interval after which the topic is automatically deleted. The minimum duration is 5 minutes.
  /// [clientAffineProperties] Properties specific to client affine subscriptions.
  /// [deadLetteringOnFilterEvaluationExceptions] Value that indicates whether a subscription has dead letter support on filter evaluation exceptions.
  /// [deadLetteringOnMessageExpiration] Value that indicates whether a subscription has dead letter support when a message expires.
  /// [defaultMessageTimeToLive] ISO 8061 Default message timespan to live value. This is the duration after which the message expires, starting from when the message is sent to Service Bus. This is the default value used when TimeToLive is not set on a message itself.
  /// [duplicateDetectionHistoryTimeWindow] ISO 8601 timeSpan structure that defines the duration of the duplicate detection history. The default value is 10 minutes.
  /// [enableBatchedOperations] Value that indicates whether server-side batched operations are enabled.
  /// [forwardDeadLetteredMessagesTo] Queue/Topic name to forward the Dead Letter message
  /// [forwardTo] Queue/Topic name to forward the messages
  /// [isClientAffine] Value that indicates whether the subscription has an affinity to the client id.
  /// [lockDuration] ISO 8061 lock duration timespan for the subscription. The default value is 1 minute.
  /// [maxDeliveryCount] Number of maximum deliveries.
  /// [namespaceName] The namespace name
  /// [requiresSession] Value indicating if a subscription supports the concept of sessions.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [status] Enumerates the possible values for the status of a messaging entity.
  /// [subscriptionName] The subscription name.
  /// [topicName] The topic name.
  SubscriptionArgs({
    String? autoDeleteOnIdle,
    SBClientAffineProperties? clientAffineProperties,
    bool? deadLetteringOnFilterEvaluationExceptions,
    bool? deadLetteringOnMessageExpiration,
    String? defaultMessageTimeToLive,
    String? duplicateDetectionHistoryTimeWindow,
    bool? enableBatchedOperations,
    String? forwardDeadLetteredMessagesTo,
    String? forwardTo,
    bool? isClientAffine,
    String? lockDuration,
    int? maxDeliveryCount,
    required String namespaceName,
    bool? requiresSession,
    required String resourceGroupName,
    EntityStatus? status,
    String? subscriptionName,
    required String topicName,
  }) :
      autoDeleteOnIdle = pulumi.Input.asOptionalInput<String>(autoDeleteOnIdle),
      clientAffineProperties = pulumi.Input.asOptionalInput<SBClientAffineProperties>(clientAffineProperties),
      deadLetteringOnFilterEvaluationExceptions = pulumi.Input.asOptionalInput<bool>(deadLetteringOnFilterEvaluationExceptions),
      deadLetteringOnMessageExpiration = pulumi.Input.asOptionalInput<bool>(deadLetteringOnMessageExpiration),
      defaultMessageTimeToLive = pulumi.Input.asOptionalInput<String>(defaultMessageTimeToLive),
      duplicateDetectionHistoryTimeWindow = pulumi.Input.asOptionalInput<String>(duplicateDetectionHistoryTimeWindow),
      enableBatchedOperations = pulumi.Input.asOptionalInput<bool>(enableBatchedOperations),
      forwardDeadLetteredMessagesTo = pulumi.Input.asOptionalInput<String>(forwardDeadLetteredMessagesTo),
      forwardTo = pulumi.Input.asOptionalInput<String>(forwardTo),
      isClientAffine = pulumi.Input.asOptionalInput<bool>(isClientAffine),
      lockDuration = pulumi.Input.asOptionalInput<String>(lockDuration),
      maxDeliveryCount = pulumi.Input.asOptionalInput<int>(maxDeliveryCount),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      requiresSession = pulumi.Input.asOptionalInput<bool>(requiresSession),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      status = pulumi.Input.asOptionalInput<EntityStatus>(status),
      subscriptionName = pulumi.Input.asOptionalInput<String>(subscriptionName),
      topicName = pulumi.Input.asInput<String>(topicName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoDeleteOnIdle': ?autoDeleteOnIdle,
      'clientAffineProperties': ?pulumi.Input.mapOptionalInputValue<SBClientAffineProperties, Map<String, dynamic>>(clientAffineProperties, (value) => value.toMap()),
      'deadLetteringOnFilterEvaluationExceptions': ?deadLetteringOnFilterEvaluationExceptions,
      'deadLetteringOnMessageExpiration': ?deadLetteringOnMessageExpiration,
      'defaultMessageTimeToLive': ?defaultMessageTimeToLive,
      'duplicateDetectionHistoryTimeWindow': ?duplicateDetectionHistoryTimeWindow,
      'enableBatchedOperations': ?enableBatchedOperations,
      'forwardDeadLetteredMessagesTo': ?forwardDeadLetteredMessagesTo,
      'forwardTo': ?forwardTo,
      'isClientAffine': ?isClientAffine,
      'lockDuration': ?lockDuration,
      'maxDeliveryCount': ?maxDeliveryCount,
      'namespaceName': namespaceName,
      'requiresSession': ?requiresSession,
      'resourceGroupName': resourceGroupName,
      'status': ?pulumi.Input.mapOptionalInputValue<EntityStatus, String>(status, (value) => value.value),
      'subscriptionName': ?subscriptionName,
      'topicName': topicName,
    };
  }

  factory SubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return SubscriptionArgs(
      autoDeleteOnIdle: map['autoDeleteOnIdle'] == null ? null : map['autoDeleteOnIdle'] as String,
      clientAffineProperties: map['clientAffineProperties'] == null ? null : SBClientAffineProperties.fromMap((map['clientAffineProperties'] as Map).cast<String, dynamic>()),
      deadLetteringOnFilterEvaluationExceptions: map['deadLetteringOnFilterEvaluationExceptions'] == null ? null : map['deadLetteringOnFilterEvaluationExceptions'] as bool,
      deadLetteringOnMessageExpiration: map['deadLetteringOnMessageExpiration'] == null ? null : map['deadLetteringOnMessageExpiration'] as bool,
      defaultMessageTimeToLive: map['defaultMessageTimeToLive'] == null ? null : map['defaultMessageTimeToLive'] as String,
      duplicateDetectionHistoryTimeWindow: map['duplicateDetectionHistoryTimeWindow'] == null ? null : map['duplicateDetectionHistoryTimeWindow'] as String,
      enableBatchedOperations: map['enableBatchedOperations'] == null ? null : map['enableBatchedOperations'] as bool,
      forwardDeadLetteredMessagesTo: map['forwardDeadLetteredMessagesTo'] == null ? null : map['forwardDeadLetteredMessagesTo'] as String,
      forwardTo: map['forwardTo'] == null ? null : map['forwardTo'] as String,
      isClientAffine: map['isClientAffine'] == null ? null : map['isClientAffine'] as bool,
      lockDuration: map['lockDuration'] == null ? null : map['lockDuration'] as String,
      maxDeliveryCount: map['maxDeliveryCount'] == null ? null : map['maxDeliveryCount'] as int,
      namespaceName: map['namespaceName'] as String,
      requiresSession: map['requiresSession'] == null ? null : map['requiresSession'] as bool,
      resourceGroupName: map['resourceGroupName'] as String,
      status: map['status'] == null ? null : EntityStatus.fromValue(map['status'] as String),
      subscriptionName: map['subscriptionName'] == null ? null : map['subscriptionName'] as String,
      topicName: map['topicName'] as String,
    );
  }
}

