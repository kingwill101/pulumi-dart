// ignore_for_file: unused_element, unnecessary_cast


/// Definition of awsSnsSubscription
class AwsSnsSubscriptionProperties {
  /// <p>The subscription's endpoint (format depends on the protocol).</p>
  final String? endpoint;
  /// <p>The subscription's owner.</p>
  final String? owner;
  /// <p>The subscription's protocol.</p>
  final String? protocol;
  /// <p>The subscription's ARN.</p>
  final String? subscriptionArn;
  /// <p>The ARN of the subscription's topic.</p>
  final String? topicArn;

  /// Creates a new [AwsSnsSubscriptionProperties].
  /// [endpoint] <p>The subscription's endpoint (format depends on the protocol).</p>
  /// [owner] <p>The subscription's owner.</p>
  /// [protocol] <p>The subscription's protocol.</p>
  /// [subscriptionArn] <p>The subscription's ARN.</p>
  /// [topicArn] <p>The ARN of the subscription's topic.</p>
  AwsSnsSubscriptionProperties({
    this.endpoint,
    this.owner,
    this.protocol,
    this.subscriptionArn,
    this.topicArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': ?endpoint,
      'owner': ?owner,
      'protocol': ?protocol,
      'subscriptionArn': ?subscriptionArn,
      'topicArn': ?topicArn,
    };
  }

  factory AwsSnsSubscriptionProperties.fromMap(Map<String, dynamic> map) {
    return AwsSnsSubscriptionProperties(
      endpoint: map['endpoint'] == null ? null : map['endpoint'] as String,
      owner: map['owner'] == null ? null : map['owner'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      subscriptionArn: map['subscriptionArn'] == null ? null : map['subscriptionArn'] as String,
      topicArn: map['topicArn'] == null ? null : map['topicArn'] as String,
    );
  }
}

