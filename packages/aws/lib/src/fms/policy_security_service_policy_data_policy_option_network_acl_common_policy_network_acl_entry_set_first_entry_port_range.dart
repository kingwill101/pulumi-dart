// ignore_for_file: unused_element, unnecessary_cast

class PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetFirstEntryPortRange {
  /// The beginning port number of the range.
  final int? from;

  /// The ending port number of the range.
  final int? to;

  /// Creates a new [PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetFirstEntryPortRange].
  /// [from] The beginning port number of the range.
  /// [to] The ending port number of the range.
  PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetFirstEntryPortRange({
    this.from,
    this.to,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fromValue = from;
    if (fromValue != null) {
      map['from'] = fromValue;
    }
    final toValue = to;
    if (toValue != null) {
      map['to'] = toValue;
    }
    return map;
  }

  factory PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetFirstEntryPortRange.fromMap(
      Map<String, dynamic> map) {
    return PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetFirstEntryPortRange(
      from: map['from'] == null ? null : map['from'] as int,
      to: map['to'] == null ? null : map['to'] as int,
    );
  }
}
