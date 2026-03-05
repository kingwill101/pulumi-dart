// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of NotificationConfiguration
class DaxClusterNotificationConfiguration {
  /// &lt;p&gt;The Amazon Resource Name (ARN) that identifies the topic. &lt;/p&gt;
  final pulumi.Input<String>? topicArn;
  /// &lt;p&gt;The current state of the topic. A value of “active” means that notifications will be sent to the topic. A value of “inactive” means that notifications will not be sent to the topic.&lt;/p&gt;
  final pulumi.Input<String>? topicStatus;

  /// Creates a new [DaxClusterNotificationConfiguration].
  /// [topicArn] &lt;p&gt;The Amazon Resource Name (ARN) that identifies the topic. &lt;/p&gt;
  /// [topicStatus] &lt;p&gt;The current state of the topic. A value of “active” means that notifications will be sent to the topic. A value of “inactive” means that notifications will not be sent to the topic.&lt;/p&gt;
  DaxClusterNotificationConfiguration({
    this.topicArn,
    this.topicStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'topicArn': ?topicArn,
      'topicStatus': ?topicStatus,
    };
  }

  factory DaxClusterNotificationConfiguration.fromMap(Map<String, dynamic> map) {
    return DaxClusterNotificationConfiguration(
      topicArn: (() { final guardedValue = map['topicArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      topicStatus: (() { final guardedValue = map['topicStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

