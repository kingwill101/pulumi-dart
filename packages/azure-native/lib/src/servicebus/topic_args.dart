// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_status.dart';

/// {@template pulumi_servicebus_topic_args_doc}
/// The set of arguments for Topic.
/// {@endtemplate}
/// {@macro pulumi_servicebus_topic_args_doc}
class TopicArgs {
  /// ISO 8601 timespan idle interval after which the topic is automatically deleted. The minimum duration is 5 minutes.
  final pulumi.Input<String>? autoDeleteOnIdle;
  /// ISO 8601 Default message timespan to live value. This is the duration after which the message expires, starting from when the message is sent to Service Bus. This is the default value used when TimeToLive is not set on a message itself.
  final pulumi.Input<String>? defaultMessageTimeToLive;
  /// ISO8601 timespan structure that defines the duration of the duplicate detection history. The default value is 10 minutes.
  final pulumi.Input<String>? duplicateDetectionHistoryTimeWindow;
  /// Value that indicates whether server-side batched operations are enabled.
  final pulumi.Input<bool>? enableBatchedOperations;
  /// Value that indicates whether Express Entities are enabled. An express topic holds a message in memory temporarily before writing it to persistent storage.
  final pulumi.Input<bool>? enableExpress;
  /// Value that indicates whether the topic to be partitioned across multiple message brokers is enabled.
  final pulumi.Input<bool>? enablePartitioning;
  /// Maximum size (in KB) of the message payload that can be accepted by the topic. This property is only used in Premium today and default is 1024.
  final pulumi.Input<double>? maxMessageSizeInKilobytes;
  /// Maximum size of the topic in megabytes, which is the size of the memory allocated for the topic. Default is 1024.
  final pulumi.Input<int>? maxSizeInMegabytes;
  /// The namespace name
  final pulumi.Input<String> namespaceName;
  /// Value indicating if this topic requires duplicate detection.
  final pulumi.Input<bool>? requiresDuplicateDetection;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Enumerates the possible values for the status of a messaging entity.
  final pulumi.Input<EntityStatus>? status;
  /// Value that indicates whether the topic supports ordering.
  final pulumi.Input<bool>? supportOrdering;
  /// The topic name.
  final pulumi.Input<String>? topicName;

  /// Creates a new [TopicArgs].
  /// [autoDeleteOnIdle] ISO 8601 timespan idle interval after which the topic is automatically deleted. The minimum duration is 5 minutes.
  /// [defaultMessageTimeToLive] ISO 8601 Default message timespan to live value. This is the duration after which the message expires, starting from when the message is sent to Service Bus. This is the default value used when TimeToLive is not set on a message itself.
  /// [duplicateDetectionHistoryTimeWindow] ISO8601 timespan structure that defines the duration of the duplicate detection history. The default value is 10 minutes.
  /// [enableBatchedOperations] Value that indicates whether server-side batched operations are enabled.
  /// [enableExpress] Value that indicates whether Express Entities are enabled. An express topic holds a message in memory temporarily before writing it to persistent storage.
  /// [enablePartitioning] Value that indicates whether the topic to be partitioned across multiple message brokers is enabled.
  /// [maxMessageSizeInKilobytes] Maximum size (in KB) of the message payload that can be accepted by the topic. This property is only used in Premium today and default is 1024.
  /// [maxSizeInMegabytes] Maximum size of the topic in megabytes, which is the size of the memory allocated for the topic. Default is 1024.
  /// [namespaceName] The namespace name
  /// [requiresDuplicateDetection] Value indicating if this topic requires duplicate detection.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [status] Enumerates the possible values for the status of a messaging entity.
  /// [supportOrdering] Value that indicates whether the topic supports ordering.
  /// [topicName] The topic name.
  TopicArgs({
    String? autoDeleteOnIdle,
    String? defaultMessageTimeToLive,
    String? duplicateDetectionHistoryTimeWindow,
    bool? enableBatchedOperations,
    bool? enableExpress,
    bool? enablePartitioning,
    double? maxMessageSizeInKilobytes,
    int? maxSizeInMegabytes,
    required String namespaceName,
    bool? requiresDuplicateDetection,
    required String resourceGroupName,
    EntityStatus? status,
    bool? supportOrdering,
    String? topicName,
  }) :
      autoDeleteOnIdle = pulumi.Input.asOptionalInput<String>(autoDeleteOnIdle),
      defaultMessageTimeToLive = pulumi.Input.asOptionalInput<String>(defaultMessageTimeToLive),
      duplicateDetectionHistoryTimeWindow = pulumi.Input.asOptionalInput<String>(duplicateDetectionHistoryTimeWindow),
      enableBatchedOperations = pulumi.Input.asOptionalInput<bool>(enableBatchedOperations),
      enableExpress = pulumi.Input.asOptionalInput<bool>(enableExpress),
      enablePartitioning = pulumi.Input.asOptionalInput<bool>(enablePartitioning),
      maxMessageSizeInKilobytes = pulumi.Input.asOptionalInput<double>(maxMessageSizeInKilobytes),
      maxSizeInMegabytes = pulumi.Input.asOptionalInput<int>(maxSizeInMegabytes),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      requiresDuplicateDetection = pulumi.Input.asOptionalInput<bool>(requiresDuplicateDetection),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      status = pulumi.Input.asOptionalInput<EntityStatus>(status),
      supportOrdering = pulumi.Input.asOptionalInput<bool>(supportOrdering),
      topicName = pulumi.Input.asOptionalInput<String>(topicName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoDeleteOnIdle': ?autoDeleteOnIdle,
      'defaultMessageTimeToLive': ?defaultMessageTimeToLive,
      'duplicateDetectionHistoryTimeWindow': ?duplicateDetectionHistoryTimeWindow,
      'enableBatchedOperations': ?enableBatchedOperations,
      'enableExpress': ?enableExpress,
      'enablePartitioning': ?enablePartitioning,
      'maxMessageSizeInKilobytes': ?maxMessageSizeInKilobytes,
      'maxSizeInMegabytes': ?maxSizeInMegabytes,
      'namespaceName': namespaceName,
      'requiresDuplicateDetection': ?requiresDuplicateDetection,
      'resourceGroupName': resourceGroupName,
      'status': ?pulumi.Input.mapOptionalInputValue<EntityStatus, String>(status, (value) => value.value),
      'supportOrdering': ?supportOrdering,
      'topicName': ?topicName,
    };
  }

  factory TopicArgs.fromMap(Map<String, dynamic> map) {
    return TopicArgs(
      autoDeleteOnIdle: map['autoDeleteOnIdle'] == null ? null : map['autoDeleteOnIdle'] as String,
      defaultMessageTimeToLive: map['defaultMessageTimeToLive'] == null ? null : map['defaultMessageTimeToLive'] as String,
      duplicateDetectionHistoryTimeWindow: map['duplicateDetectionHistoryTimeWindow'] == null ? null : map['duplicateDetectionHistoryTimeWindow'] as String,
      enableBatchedOperations: map['enableBatchedOperations'] == null ? null : map['enableBatchedOperations'] as bool,
      enableExpress: map['enableExpress'] == null ? null : map['enableExpress'] as bool,
      enablePartitioning: map['enablePartitioning'] == null ? null : map['enablePartitioning'] as bool,
      maxMessageSizeInKilobytes: map['maxMessageSizeInKilobytes'] == null ? null : map['maxMessageSizeInKilobytes'] as double,
      maxSizeInMegabytes: map['maxSizeInMegabytes'] == null ? null : map['maxSizeInMegabytes'] as int,
      namespaceName: map['namespaceName'] as String,
      requiresDuplicateDetection: map['requiresDuplicateDetection'] == null ? null : map['requiresDuplicateDetection'] as bool,
      resourceGroupName: map['resourceGroupName'] as String,
      status: map['status'] == null ? null : EntityStatus.fromValue(map['status'] as String),
      supportOrdering: map['supportOrdering'] == null ? null : map['supportOrdering'] as bool,
      topicName: map['topicName'] == null ? null : map['topicName'] as String,
    );
  }
}

