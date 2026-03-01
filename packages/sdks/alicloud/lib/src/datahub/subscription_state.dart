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
  SubscriptionState({
    pulumi.Output<String>? comment,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? lastModifyTime,
    pulumi.Output<String>? projectName,
    pulumi.Output<String>? subId,
    pulumi.Output<String>? topicName,
  }) :
      comment = pulumi.Input.asOptionalInput<String>(comment),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      lastModifyTime = pulumi.Input.asOptionalInput<String>(lastModifyTime),
      projectName = pulumi.Input.asOptionalInput<String>(projectName),
      subId = pulumi.Input.asOptionalInput<String>(subId),
      topicName = pulumi.Input.asOptionalInput<String>(topicName);

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
      comment: map['comment'] == null ? null : pulumi.Output.create<String>(map['comment'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      lastModifyTime: map['lastModifyTime'] == null ? null : pulumi.Output.create<String>(map['lastModifyTime'] as String),
      projectName: map['projectName'] == null ? null : pulumi.Output.create<String>(map['projectName'] as String),
      subId: map['subId'] == null ? null : pulumi.Output.create<String>(map['subId'] as String),
      topicName: map['topicName'] == null ? null : pulumi.Output.create<String>(map['topicName'] as String),
    );
  }
}

