// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getResolverRules.
class GetResolverRulesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? nameRegex;
  final String? ownerId;
  final String region;
  final String? resolverEndpointId;
  /// IDs of the matched resolver rules.
  final List<String> resolverRuleIds;
  final String? ruleType;
  final String? shareStatus;

  /// Creates a new [GetResolverRulesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [nameRegex] Optional.
  /// [ownerId] Optional.
  /// [region] Required.
  /// [resolverEndpointId] Optional.
  /// [resolverRuleIds] IDs of the matched resolver rules.
  /// [ruleType] Optional.
  /// [shareStatus] Optional.
  const GetResolverRulesResult({
    required this.id,
    this.nameRegex,
    this.ownerId,
    required this.region,
    this.resolverEndpointId,
    required this.resolverRuleIds,
    this.ruleType,
    this.shareStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nameRegex': ?nameRegex,
      'ownerId': ?ownerId,
      'region': region,
      'resolverEndpointId': ?resolverEndpointId,
      'resolverRuleIds': resolverRuleIds,
      'ruleType': ?ruleType,
      'shareStatus': ?shareStatus,
    };
  }

  factory GetResolverRulesResult.fromMap(Map<String, dynamic> map) {
    return GetResolverRulesResult(
      id: map['id'] as String,
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: map['region'] as String,
      resolverEndpointId: (() { final guardedValue = map['resolverEndpointId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resolverRuleIds: (map['resolverRuleIds'] as List).cast<String>(),
      ruleType: (() { final guardedValue = map['ruleType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      shareStatus: (() { final guardedValue = map['shareStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

