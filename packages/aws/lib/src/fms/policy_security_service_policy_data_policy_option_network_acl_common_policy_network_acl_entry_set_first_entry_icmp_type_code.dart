// ignore_for_file: unused_element, unnecessary_cast

class PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetFirstEntryIcmpTypeCode {
  /// An integer value containing ICMP code.
  final int? code;

  /// An integer value containing ICMP type.
  final int? type;

  /// Creates a new [PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetFirstEntryIcmpTypeCode].
  /// [code] An integer value containing ICMP code.
  /// [type] An integer value containing ICMP type.
  PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetFirstEntryIcmpTypeCode({
    this.code,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'code': ?code, 'type': ?type};
  }

  factory PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetFirstEntryIcmpTypeCode.fromMap(
    Map<String, dynamic> map,
  ) {
    return PolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetFirstEntryIcmpTypeCode(
      code: map['code'] == null ? null : map['code'] as int,
      type: map['type'] == null ? null : map['type'] as int,
    );
  }
}
