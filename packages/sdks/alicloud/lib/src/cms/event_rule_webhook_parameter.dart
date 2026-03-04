// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventRuleWebhookParameter {
  /// The HTTP request method.
  final pulumi.Input<String>? method;

  /// The name of the protocol.
  final pulumi.Input<String>? protocol;

  /// The callback URL.
  final pulumi.Input<String>? url;

  /// The ID of the recipient that receives alert notifications.
  final pulumi.Input<String>? webhookParametersId;

  /// Creates a new [EventRuleWebhookParameter].
  /// [method] The HTTP request method.
  /// [protocol] The name of the protocol.
  /// [url] The callback URL.
  /// [webhookParametersId] The ID of the recipient that receives alert notifications.
  EventRuleWebhookParameter({
    this.method,
    this.protocol,
    this.url,
    this.webhookParametersId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'method': ?method,
      'protocol': ?protocol,
      'url': ?url,
      'webhookParametersId': ?webhookParametersId,
    };
  }

  factory EventRuleWebhookParameter.fromMap(Map<String, dynamic> map) {
    return EventRuleWebhookParameter(
      method: (() {
        final guardedValue = map['method'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      protocol: (() {
        final guardedValue = map['protocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      url: (() {
        final guardedValue = map['url'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      webhookParametersId: (() {
        final guardedValue = map['webhookParametersId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
