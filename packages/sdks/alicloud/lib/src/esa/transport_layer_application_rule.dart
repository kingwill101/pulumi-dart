// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TransportLayerApplicationRule {
  /// Client IP pass-through protocol, supporting:
  final pulumi.Input<String> clientIpPassThroughMode;
  /// Comment information for the rule (optional).
  final pulumi.Input<String>? comment;
  /// Edge port. Supports:
  /// - A single port, such as 80.
  /// - Port range, such as 81-85, representing ports 81, 82, 83, 84, and 85.
  /// - Combination of ports and port ranges, separated by commas, such as 80,81-85,90, representing ports 80, 81, 82, 83, 84, 85, and 90.
  ///
  /// Edge ports within a single rule and between multiple rules must not overlap.
  final pulumi.Input<String> edgePort;
  /// Forwarding rule protocol, with values:
  /// - `TCP`: TCP protocol.
  /// - `UDP`: UDP protocol.
  final pulumi.Input<String> protocol;
  /// Rule ID
  final pulumi.Input<int>? ruleId;
  /// Specific value of the origin, which needs to match the origin type.
  final pulumi.Input<String> source;
  /// Source Port
  final pulumi.Input<String> sourcePort;
  /// Origin type, supporting:
  final pulumi.Input<String> sourceType;

  /// Creates a new [TransportLayerApplicationRule].
  /// [clientIpPassThroughMode] Client IP pass-through protocol, supporting:
  /// [comment] Comment information for the rule (optional).
  /// [edgePort] Edge port. Supports:
  /// [protocol] Forwarding rule protocol, with values:
  /// [ruleId] Rule ID
  /// [source] Specific value of the origin, which needs to match the origin type.
  /// [sourcePort] Source Port
  /// [sourceType] Origin type, supporting:
  TransportLayerApplicationRule({
    required this.clientIpPassThroughMode,
    this.comment,
    required this.edgePort,
    required this.protocol,
    this.ruleId,
    required this.source,
    required this.sourcePort,
    required this.sourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientIpPassThroughMode': clientIpPassThroughMode,
      'comment': ?comment,
      'edgePort': edgePort,
      'protocol': protocol,
      'ruleId': ?ruleId,
      'source': source,
      'sourcePort': sourcePort,
      'sourceType': sourceType,
    };
  }

  factory TransportLayerApplicationRule.fromMap(Map<String, dynamic> map) {
    return TransportLayerApplicationRule(
      clientIpPassThroughMode: (map['clientIpPassThroughMode'] as String).input(),
      comment: map['comment'] == null ? null : (map['comment'] as String).input(),
      edgePort: (map['edgePort'] as String).input(),
      protocol: (map['protocol'] as String).input(),
      ruleId: map['ruleId'] == null ? null : (map['ruleId'] as int).input(),
      source: (map['source'] as String).input(),
      sourcePort: (map['sourcePort'] as String).input(),
      sourceType: (map['sourceType'] as String).input(),
    );
  }
}

