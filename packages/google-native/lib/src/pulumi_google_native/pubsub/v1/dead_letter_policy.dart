// ignore_for_file: unused_element, unnecessary_cast

/// Dead lettering is done on a best effort basis. The same message might be dead lettered multiple times. If validation on any of the fields fails at subscription creation/updation, the create/update subscription request will fail.
class DeadLetterPolicy {
  /// Optional. The name of the topic to which dead letter messages should be published. Format is `projects/{project}/topics/{topic}`.The Pub/Sub service account associated with the enclosing subscription's parent project (i.e., service-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com) must have permission to Publish() to this topic. The operation will fail if the topic does not exist. Users should ensure that there is a subscription attached to this topic since messages published to a topic with no subscriptions are lost.
  final String? deadLetterTopic;

  /// Optional. The maximum number of delivery attempts for any message. The value must be between 5 and 100. The number of delivery attempts is defined as 1 + (the sum of number of NACKs and number of times the acknowledgement deadline has been exceeded for the message). A NACK is any call to ModifyAckDeadline with a 0 deadline. Note that client libraries may automatically extend ack_deadlines. This field will be honored on a best effort basis. If this parameter is 0, a default value of 5 is used.
  final int? maxDeliveryAttempts;

  DeadLetterPolicy({
    this.deadLetterTopic,
    this.maxDeliveryAttempts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deadLetterTopicValue = deadLetterTopic;
    if (deadLetterTopicValue != null) {
      map['deadLetterTopic'] = deadLetterTopicValue;
    }
    final maxDeliveryAttemptsValue = maxDeliveryAttempts;
    if (maxDeliveryAttemptsValue != null) {
      map['maxDeliveryAttempts'] = maxDeliveryAttemptsValue;
    }
    return map;
  }

  factory DeadLetterPolicy.fromMap(Map<String, dynamic> map) {
    return DeadLetterPolicy(
      deadLetterTopic: map['deadLetterTopic'] == null
          ? null
          : map['deadLetterTopic'] as String,
      maxDeliveryAttempts: map['maxDeliveryAttempts'] == null
          ? null
          : map['maxDeliveryAttempts'] as int,
    );
  }
}
