// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of awsSnsSubscription
class AwsSnsSubscriptionProperties {
  /// &lt;p&gt;The subscription's endpoint (format depends on the protocol).&lt;/p&gt;
  final pulumi.Input<String>? endpoint;
  /// &lt;p&gt;The subscription's owner.&lt;/p&gt;
  final pulumi.Input<String>? owner;
  /// &lt;p&gt;The subscription's protocol.&lt;/p&gt;
  final pulumi.Input<String>? protocol;
  /// &lt;p&gt;The subscription's ARN.&lt;/p&gt;
  final pulumi.Input<String>? subscriptionArn;
  /// &lt;p&gt;The ARN of the subscription's topic.&lt;/p&gt;
  final pulumi.Input<String>? topicArn;

  /// Creates a new [AwsSnsSubscriptionProperties].
  /// [endpoint] &lt;p&gt;The subscription's endpoint (format depends on the protocol).&lt;/p&gt;
  /// [owner] &lt;p&gt;The subscription's owner.&lt;/p&gt;
  /// [protocol] &lt;p&gt;The subscription's protocol.&lt;/p&gt;
  /// [subscriptionArn] &lt;p&gt;The subscription's ARN.&lt;/p&gt;
  /// [topicArn] &lt;p&gt;The ARN of the subscription's topic.&lt;/p&gt;
  const AwsSnsSubscriptionProperties({
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
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      owner: (() { final guardedValue = map['owner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionArn: (() { final guardedValue = map['subscriptionArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      topicArn: (() { final guardedValue = map['topicArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

