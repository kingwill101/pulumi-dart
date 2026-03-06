// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Subscription resources.
class SubscriptionState {
  /// Comment of the datahub subscription. It cannot be longer than 255 characters.
  final pulumi.Input<String>? comment;
  /// Create time of the datahub subscription. It is a human-readable string rather than 64-bits UTC.
  final pulumi.Input<String>? createTime;
  /// Last modify time of the datahub subscription. It is the same as *create_time* at the beginning. It is also a human-readable string rather than 64-bits UTC.
  final pulumi.Input<String>? lastModifyTime;
  /// The name of the datahub project that the subscription belongs to. Its length is limited to 3-32 and only characters such as letters, digits and '_' are allowed. It is case-insensitive.
  final pulumi.Input<String>? projectName;
  /// The identidy of the subscription, generate from server side.
  final pulumi.Input<String>? subId;
  /// The name of the datahub topic that the subscription belongs to. Its length is limited to 1-128 and only characters such as letters, digits and '_' are allowed. It is case-insensitive.
  final pulumi.Input<String>? topicName;

  /// Creates a new [SubscriptionState].
  /// [comment] Comment of the datahub subscription. It cannot be longer than 255 characters.
  /// [createTime] Create time of the datahub subscription. It is a human-readable string rather than 64-bits UTC.
  /// [lastModifyTime] Last modify time of the datahub subscription. It is the same as *create_time* at the beginning. It is also a human-readable string rather than 64-bits UTC.
  /// [projectName] The name of the datahub project that the subscription belongs to. Its length is limited to 3-32 and only characters such as letters, digits and '_' are allowed. It is case-insensitive.
  /// [subId] The identidy of the subscription, generate from server side.
  /// [topicName] The name of the datahub topic that the subscription belongs to. Its length is limited to 1-128 and only characters such as letters, digits and '_' are allowed. It is case-insensitive.
  const SubscriptionState({
    this.comment,
    this.createTime,
    this.lastModifyTime,
    this.projectName,
    this.subId,
    this.topicName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'createTime': ?createTime,
      'lastModifyTime': ?lastModifyTime,
      'projectName': ?projectName,
      'subId': ?subId,
      'topicName': ?topicName,
    };
  }

  factory SubscriptionState.fromMap(Map<String, dynamic> map) {
    return SubscriptionState(
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastModifyTime: (() { final guardedValue = map['lastModifyTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectName: (() { final guardedValue = map['projectName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subId: (() { final guardedValue = map['subId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      topicName: (() { final guardedValue = map['topicName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

