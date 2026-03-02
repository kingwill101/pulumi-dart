// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Broker Resource Rule properties. This defines the objects that represent the actions or topics, such as - method.Connect, method.Publish, etc.
class BrokerResourceRule {
  /// A list of client IDs that match the clients. The client IDs are case-sensitive and must match the client IDs provided by the clients during connection. This subfield may be set if the method is Connect.
  final pulumi.Input<List<String>>? clientIds;
  /// Give access for a Broker method (i.e., Connect, Subscribe, or Publish).
  final pulumi.Input<String> method;
  /// A list of topics or topic patterns that match the topics that the clients can publish or subscribe to. This subfield is required if the method is Publish or Subscribe.
  final pulumi.Input<List<String>>? topics;

  /// Creates a new [BrokerResourceRule].
  /// [clientIds] A list of client IDs that match the clients. The client IDs are case-sensitive and must match the client IDs provided by the clients during connection. This subfield may be set if the method is Connect.
  /// [method] Give access for a Broker method (i.e., Connect, Subscribe, or Publish).
  /// [topics] A list of topics or topic patterns that match the topics that the clients can publish or subscribe to. This subfield is required if the method is Publish or Subscribe.
  BrokerResourceRule({
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

  factory BrokerResourceRule.fromMap(Map<String, dynamic> map) {
    return BrokerResourceRule(
      clientIds: map['clientIds'] == null ? null : ((map['clientIds'] as List).cast<String>()).input(),
      method: (map['method'] as String).input(),
      topics: map['topics'] == null ? null : ((map['topics'] as List).cast<String>()).input(),
    );
  }
}

