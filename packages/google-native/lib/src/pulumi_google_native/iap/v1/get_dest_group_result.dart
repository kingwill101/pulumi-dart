// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getDestGroup.
class GetDestGroupResult {
  /// Unordered list. List of CIDRs that this group applies to.
  final List<String> cidrs;

  /// Unordered list. List of FQDNs that this group applies to.
  final List<String> fqdns;

  /// Immutable. Identifier for the TunnelDestGroup. Must be unique within the project and contain only lower case letters (a-z) and dashes (-).
  final String name;

  GetDestGroupResult({
    required this.cidrs,
    required this.fqdns,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cidrs'] = cidrs;
    map['fqdns'] = fqdns;
    map['name'] = name;
    return map;
  }

  factory GetDestGroupResult.fromMap(Map<String, dynamic> map) {
    return GetDestGroupResult(
      cidrs: (map['cidrs'] as List).cast<String>(),
      fqdns: (map['fqdns'] as List).cast<String>(),
      name: map['name'] as String,
    );
  }
}
