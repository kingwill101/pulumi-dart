// ignore_for_file: unused_element, unnecessary_cast


class EventRuleWebhookParameter {
  /// The HTTP request method.
  final String? method;
  /// The name of the protocol.
  final String? protocol;
  /// The callback URL.
  final String? url;
  /// The ID of the recipient that receives alert notifications.
  final String? webhookParametersId;

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
      method: map['method'] == null ? null : map['method'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      url: map['url'] == null ? null : map['url'] as String,
      webhookParametersId: map['webhookParametersId'] == null ? null : map['webhookParametersId'] as String,
    );
  }
}

