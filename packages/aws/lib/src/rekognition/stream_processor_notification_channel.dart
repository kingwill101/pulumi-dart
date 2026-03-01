// ignore_for_file: unused_element, unnecessary_cast


class StreamProcessorNotificationChannel {
  /// The Amazon Resource Number (ARN) of the Amazon Amazon Simple Notification Service topic to which Amazon Rekognition posts the completion status.
  final String? snsTopicArn;

  /// Creates a new [StreamProcessorNotificationChannel].
  /// [snsTopicArn] The Amazon Resource Number (ARN) of the Amazon Amazon Simple Notification Service topic to which Amazon Rekognition posts the completion status.
  StreamProcessorNotificationChannel({
    this.snsTopicArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'snsTopicArn': ?snsTopicArn,
    };
  }

  factory StreamProcessorNotificationChannel.fromMap(Map<String, dynamic> map) {
    return StreamProcessorNotificationChannel(
      snsTopicArn: map['snsTopicArn'] == null ? null : map['snsTopicArn'] as String,
    );
  }
}

