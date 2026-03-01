// ignore_for_file: unused_element, unnecessary_cast


class TransportLayerApplicationRule {
  /// Client IP pass-through protocol, supporting:
  final String clientIpPassThroughMode;
  /// Comment information for the rule (optional).
  final String? comment;
  /// Edge port. Supports:
  /// - A single port, such as 80.
  /// - Port range, such as 81-85, representing ports 81, 82, 83, 84, and 85.
  /// - Combination of ports and port ranges, separated by commas, such as 80,81-85,90, representing ports 80, 81, 82, 83, 84, 85, and 90.
  ///
  /// Edge ports within a single rule and between multiple rules must not overlap.
  final String edgePort;
  /// Forwarding rule protocol, with values:
  /// - `TCP`: TCP protocol.
  /// - `UDP`: UDP protocol.
  final String protocol;
  /// Rule ID
  final int? ruleId;
  /// Specific value of the origin, which needs to match the origin type.
  final String source;
  /// Source Port
  final String sourcePort;
  /// Origin type, supporting:
  final String sourceType;

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
      clientIpPassThroughMode: map['clientIpPassThroughMode'] as String,
      comment: map['comment'] == null ? null : map['comment'] as String,
      edgePort: map['edgePort'] as String,
      protocol: map['protocol'] as String,
      ruleId: map['ruleId'] == null ? null : map['ruleId'] as int,
      source: map['source'] as String,
      sourcePort: map['sourcePort'] as String,
      sourceType: map['sourceType'] as String,
    );
  }
}

