// ignore_for_file: unused_element, unnecessary_cast

import 'notification_filter_response.dart';

/// Definition of LambdaConfiguration
class LambdaConfigurationResponse {
  /// The Amazon S3 bucket event for which to invoke the LAMlong function. For more information, see [Supported Event Types](https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html) in the *Amazon S3 User Guide*.
  final String? event;
  /// The filtering rules that determine which objects invoke the AWS Lambda function. For example, you can create a filter so that only image files with a ``.jpg`` extension invoke the function when they are added to the Amazon S3 bucket. Specifies object key name filtering rules. For information about key name filtering, see [Configuring event notifications using object key name filtering](https://docs.aws.amazon.com/AmazonS3/latest/userguide/notification-how-to-filtering.html) in the *Amazon S3 User Guide*.
  final NotificationFilterResponse? filter;
  /// The Amazon Resource Name (ARN) of the LAMlong function that Amazon S3 invokes when the specified event type occurs.
  final String? function;

  /// Creates a new [LambdaConfigurationResponse].
  /// [event] The Amazon S3 bucket event for which to invoke the LAMlong function. For more information, see [Supported Event Types](https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html) in the *Amazon S3 User Guide*.
  /// [filter] The filtering rules that determine which objects invoke the AWS Lambda function. For example, you can create a filter so that only image files with a ``.jpg`` extension invoke the function when they are added to the Amazon S3 bucket. Specifies object key name filtering rules. For information about key name filtering, see [Configuring event notifications using object key name filtering](https://docs.aws.amazon.com/AmazonS3/latest/userguide/notification-how-to-filtering.html) in the *Amazon S3 User Guide*.
  /// [function] The Amazon Resource Name (ARN) of the LAMlong function that Amazon S3 invokes when the specified event type occurs.
  LambdaConfigurationResponse({
    this.event,
    this.filter,
    this.function,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'event': ?event,
      'filter': ?filter == null ? null : filter!.toMap(),
      'function': ?function,
    };
  }

  factory LambdaConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return LambdaConfigurationResponse(
      event: map['event'] == null ? null : map['event'] as String,
      filter: map['filter'] == null ? null : NotificationFilterResponse.fromMap((map['filter'] as Map).cast<String, dynamic>()),
      function: map['function'] == null ? null : map['function'] as String,
    );
  }
}

