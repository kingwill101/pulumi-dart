// ignore_for_file: unused_element, unnecessary_cast

class KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationIcmpTypeCode {
  /// ICMP code. A value of `-1` means all codes for the specified ICMP type.
  final int code;

  /// ICMP type. A value of `-1` means all types.
  final int type;

  KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationIcmpTypeCode({
    required this.code,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['type'] = type;
    return map;
  }

  factory KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationIcmpTypeCode.fromMap(
      Map<String, dynamic> map) {
    return KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationIcmpTypeCode(
      code: map['code'] as int,
      type: map['type'] as int,
    );
  }
}
