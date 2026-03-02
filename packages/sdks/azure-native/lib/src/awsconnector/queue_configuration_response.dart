// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_filter_response.dart';

/// Definition of QueueConfiguration
class QueueConfigurationResponse {
  /// The Amazon S3 bucket event about which you want to publish messages to Amazon SQS. For more information, see [Supported Event Types](https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html) in the *Amazon S3 User Guide*.
  final pulumi.Input<String>? event;
  /// The filtering rules that determine which objects trigger notifications. For example, you can create a filter so that Amazon S3 sends notifications only when image files with a ``.jpg`` extension are added to the bucket. For more information, see [Configuring event notifications using object key name filtering](https://docs.aws.amazon.com/AmazonS3/latest/user-guide/notification-how-to-filtering.html) in the *Amazon S3 User Guide*. Specifies object key name filtering rules. For information about key name filtering, see [Configuring event notifications using object key name filtering](https://docs.aws.amazon.com/AmazonS3/latest/userguide/notification-how-to-filtering.html) in the *Amazon S3 User Guide*.
  final pulumi.Input<NotificationFilterResponse>? filter;
  /// The Amazon Resource Name (ARN) of the Amazon SQS queue to which Amazon S3 publishes a message when it detects events of the specified type. FIFO queues are not allowed when enabling an SQS queue as the event notification destination.
  final pulumi.Input<String>? queue;

  /// Creates a new [QueueConfigurationResponse].
  /// [event] The Amazon S3 bucket event about which you want to publish messages to Amazon SQS. For more information, see [Supported Event Types](https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html) in the *Amazon S3 User Guide*.
  /// [filter] The filtering rules that determine which objects trigger notifications. For example, you can create a filter so that Amazon S3 sends notifications only when image files with a ``.jpg`` extension are added to the bucket. For more information, see [Configuring event notifications using object key name filtering](https://docs.aws.amazon.com/AmazonS3/latest/user-guide/notification-how-to-filtering.html) in the *Amazon S3 User Guide*. Specifies object key name filtering rules. For information about key name filtering, see [Configuring event notifications using object key name filtering](https://docs.aws.amazon.com/AmazonS3/latest/userguide/notification-how-to-filtering.html) in the *Amazon S3 User Guide*.
  /// [queue] The Amazon Resource Name (ARN) of the Amazon SQS queue to which Amazon S3 publishes a message when it detects events of the specified type. FIFO queues are not allowed when enabling an SQS queue as the event notification destination.
  QueueConfigurationResponse({
    this.event,
    this.filter,
    this.queue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'event': ?event,
      'filter': ?pulumi.Input.mapOptionalInputValue<NotificationFilterResponse, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'queue': ?queue,
    };
  }

  factory QueueConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return QueueConfigurationResponse(
      event: map['event'] == null ? null : (map['event']! as String).input(),
      filter: map['filter'] == null ? null : (NotificationFilterResponse.fromMap((map['filter']! as Map).cast<String, dynamic>())).input(),
      queue: map['queue'] == null ? null : (map['queue']! as String).input(),
    );
  }
}

