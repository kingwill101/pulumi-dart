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
  GetResolverRulesResult({
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
    final map = <String, dynamic>{};
    map['id'] = id;
    final nameRegexValue = nameRegex;
    if (nameRegexValue != null) {
      map['nameRegex'] = nameRegexValue;
    }
    final ownerIdValue = ownerId;
    if (ownerIdValue != null) {
      map['ownerId'] = ownerIdValue;
    }
    map['region'] = region;
    final resolverEndpointIdValue = resolverEndpointId;
    if (resolverEndpointIdValue != null) {
      map['resolverEndpointId'] = resolverEndpointIdValue;
    }
    map['resolverRuleIds'] = resolverRuleIds;
    final ruleTypeValue = ruleType;
    if (ruleTypeValue != null) {
      map['ruleType'] = ruleTypeValue;
    }
    final shareStatusValue = shareStatus;
    if (shareStatusValue != null) {
      map['shareStatus'] = shareStatusValue;
    }
    return map;
  }

  factory GetResolverRulesResult.fromMap(Map<String, dynamic> map) {
    return GetResolverRulesResult(
      id: map['id'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      ownerId: map['ownerId'] == null ? null : map['ownerId'] as String,
      region: map['region'] as String,
      resolverEndpointId: map['resolverEndpointId'] == null
          ? null
          : map['resolverEndpointId'] as String,
      resolverRuleIds: (map['resolverRuleIds'] as List).cast<String>(),
      ruleType: map['ruleType'] == null ? null : map['ruleType'] as String,
      shareStatus:
          map['shareStatus'] == null ? null : map['shareStatus'] as String,
    );
  }
}
