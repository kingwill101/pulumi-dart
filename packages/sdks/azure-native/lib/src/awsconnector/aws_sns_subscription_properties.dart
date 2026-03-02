// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of awsSnsSubscription
class AwsSnsSubscriptionProperties {
  /// <p>The subscription's endpoint (format depends on the protocol).</p>
  final pulumi.Input<String>? endpoint;
  /// <p>The subscription's owner.</p>
  final pulumi.Input<String>? owner;
  /// <p>The subscription's protocol.</p>
  final pulumi.Input<String>? protocol;
  /// <p>The subscription's ARN.</p>
  final pulumi.Input<String>? subscriptionArn;
  /// <p>The ARN of the subscription's topic.</p>
  final pulumi.Input<String>? topicArn;

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
      endpoint: map['endpoint'] == null ? null : (map['endpoint']! as String).input(),
      owner: map['owner'] == null ? null : (map['owner']! as String).input(),
      protocol: map['protocol'] == null ? null : (map['protocol']! as String).input(),
      subscriptionArn: map['subscriptionArn'] == null ? null : (map['subscriptionArn']! as String).input(),
      topicArn: map['topicArn'] == null ? null : (map['topicArn']! as String).input(),
    );
  }
}

