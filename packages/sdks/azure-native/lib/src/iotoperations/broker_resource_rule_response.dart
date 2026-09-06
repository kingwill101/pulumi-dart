// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Broker Resource Rule properties. This defines the objects that represent the actions or topics, such as - method.Connect, method.Publish, etc.
class BrokerResourceRuleResponse {
  /// A list of client IDs that match the clients. The client IDs are case-sensitive and must match the client IDs provided by the clients during connection. This subfield may be set if the method is Connect.
  final pulumi.Input<List<String>?>? clientIds;
  /// Give access for a Broker method (i.e., Connect, Subscribe, or Publish).
  final pulumi.Input<String> method;
  /// A list of topics or topic patterns that match the topics that the clients can publish or subscribe to. This subfield is required if the method is Publish or Subscribe.
  final pulumi.Input<List<String>?>? topics;

  /// Creates a new [BrokerResourceRuleResponse].
  /// [clientIds] A list of client IDs that match the clients. The client IDs are case-sensitive and must match the client IDs provided by the clients during connection. This subfield may be set if the method is Connect.
  /// [method] Give access for a Broker method (i.e., Connect, Subscribe, or Publish).
  /// [topics] A list of topics or topic patterns that match the topics that the clients can publish or subscribe to. This subfield is required if the method is Publish or Subscribe.
  const BrokerResourceRuleResponse({
    this.clientIds,
    required this.method,
    this.topics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientIds': ?clientIds,
      'method': method,
      'topics': ?topics,
    };
  }

  factory BrokerResourceRuleResponse.fromMap(Map<String, dynamic> map) {
    return BrokerResourceRuleResponse(
      clientIds: (() { final guardedValue = map['clientIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      method: pulumi.Input.fromValue(map['method'] as String),
      topics: (() { final guardedValue = map['topics']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
