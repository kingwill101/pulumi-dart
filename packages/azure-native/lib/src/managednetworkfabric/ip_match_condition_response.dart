// ignore_for_file: unused_element, unnecessary_cast


/// Defines the condition that can be filtered using the selected IPs.
class IpMatchConditionResponse {
  /// The List of IP Group Names that need to be matched.
  final List<String>? ipGroupNames;
  /// The list of IP Prefixes that need to be matched.
  final List<String>? ipPrefixValues;
  /// IP Prefix Type that needs to be matched.
  final String? prefixType;
  /// IP Address type that needs to be matched.
  final String? type;

  /// Creates a new [IpMatchConditionResponse].
  /// [ipGroupNames] The List of IP Group Names that need to be matched.
  /// [ipPrefixValues] The list of IP Prefixes that need to be matched.
  /// [prefixType] IP Prefix Type that needs to be matched.
  /// [type] IP Address type that needs to be matched.
  IpMatchConditionResponse({
    this.ipGroupNames,
    this.ipPrefixValues,
    this.prefixType,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipGroupNames': ?ipGroupNames,
      'ipPrefixValues': ?ipPrefixValues,
      'prefixType': ?prefixType,
      'type': ?type,
    };
  }

  factory IpMatchConditionResponse.fromMap(Map<String, dynamic> map) {
    return IpMatchConditionResponse(
      ipGroupNames: map['ipGroupNames'] == null ? null : (map['ipGroupNames'] as List).cast<String>(),
      ipPrefixValues: map['ipPrefixValues'] == null ? null : (map['ipPrefixValues'] as List).cast<String>(),
      prefixType: map['prefixType'] == null ? null : map['prefixType'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

