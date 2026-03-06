// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StreamProcessorNotificationChannel {
  /// The Amazon Resource Number (ARN) of the Amazon Amazon Simple Notification Service topic to which Amazon Rekognition posts the completion status.
  final pulumi.Input<String>? snsTopicArn;

  /// Creates a new [StreamProcessorNotificationChannel].
  /// [snsTopicArn] The Amazon Resource Number (ARN) of the Amazon Amazon Simple Notification Service topic to which Amazon Rekognition posts the completion status.
  const StreamProcessorNotificationChannel({
    this.snsTopicArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'snsTopicArn': ?snsTopicArn,
    };
  }

  factory StreamProcessorNotificationChannel.fromMap(Map<String, dynamic> map) {
    return StreamProcessorNotificationChannel(
      snsTopicArn: (() { final guardedValue = map['snsTopicArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

