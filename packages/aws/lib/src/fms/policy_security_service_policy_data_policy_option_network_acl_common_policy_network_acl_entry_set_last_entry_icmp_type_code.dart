// ignore_for_file: unused_element, unnecessary_cast

class PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntryIcmpTypeCode {
  /// An integer value containing ICMP code.
  final int? code;

  /// An integer value containing ICMP type.
  final int? type;

  /// Creates a new [PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntryIcmpTypeCode].
  /// [code] An integer value containing ICMP code.
  /// [type] An integer value containing ICMP type.
  PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntryIcmpTypeCode({
    this.code,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'code': ?code, 'type': ?type};
  }

  factory PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntryIcmpTypeCode.fromMap(
    Map<String, dynamic> map,
  ) {
    return PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntryIcmpTypeCode(
      code: map['code'] == null ? null : map['code'] as int,
      type: map['type'] == null ? null : map['type'] as int,
    );
  }
}
