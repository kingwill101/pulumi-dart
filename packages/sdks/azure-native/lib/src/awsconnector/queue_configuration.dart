// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_filter.dart';

/// Definition of QueueConfiguration
class QueueConfiguration {
  /// The Amazon S3 bucket event about which you want to publish messages to Amazon SQS. For more information, see [Supported Event Types](https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html) in the *Amazon S3 User Guide*.
  final pulumi.Input<String?>? event;
  /// The filtering rules that determine which objects trigger notifications. For example, you can create a filter so that Amazon S3 sends notifications only when image files with a ``.jpg`` extension are added to the bucket. For more information, see [Configuring event notifications using object key name filtering](https://docs.aws.amazon.com/AmazonS3/latest/user-guide/notification-how-to-filtering.html) in the *Amazon S3 User Guide*. Specifies object key name filtering rules. For information about key name filtering, see [Configuring event notifications using object key name filtering](https://docs.aws.amazon.com/AmazonS3/latest/userguide/notification-how-to-filtering.html) in the *Amazon S3 User Guide*.
  final pulumi.Input<NotificationFilter?>? filter;
  /// The Amazon Resource Name (ARN) of the Amazon SQS queue to which Amazon S3 publishes a message when it detects events of the specified type. FIFO queues are not allowed when enabling an SQS queue as the event notification destination.
  final pulumi.Input<String?>? queue;

  /// Creates a new [QueueConfiguration].
  /// [event] The Amazon S3 bucket event about which you want to publish messages to Amazon SQS. For more information, see [Supported Event Types](https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html) in the *Amazon S3 User Guide*.
  /// [filter] The filtering rules that determine which objects trigger notifications. For example, you can create a filter so that Amazon S3 sends notifications only when image files with a ``.jpg`` extension are added to the bucket. For more information, see [Configuring event notifications using object key name filtering](https://docs.aws.amazon.com/AmazonS3/latest/user-guide/notification-how-to-filtering.html) in the *Amazon S3 User Guide*. Specifies object key name filtering rules. For information about key name filtering, see [Configuring event notifications using object key name filtering](https://docs.aws.amazon.com/AmazonS3/latest/userguide/notification-how-to-filtering.html) in the *Amazon S3 User Guide*.
  /// [queue] The Amazon Resource Name (ARN) of the Amazon SQS queue to which Amazon S3 publishes a message when it detects events of the specified type. FIFO queues are not allowed when enabling an SQS queue as the event notification destination.
  const QueueConfiguration({
    this.event,
    this.filter,
    this.queue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'event': ?event,
      'filter': ?pulumi.Input.mapOptionalInputValue<NotificationFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'queue': ?queue,
    };
  }

  factory QueueConfiguration.fromMap(Map<String, dynamic> map) {
    return QueueConfiguration(
      event: (() { final guardedValue = map['event']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NotificationFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      queue: (() { final guardedValue = map['queue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
