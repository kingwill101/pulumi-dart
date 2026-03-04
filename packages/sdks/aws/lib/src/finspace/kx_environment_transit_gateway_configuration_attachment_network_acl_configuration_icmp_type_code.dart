// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationIcmpTypeCode {
  /// ICMP code. A value of `-1` means all codes for the specified ICMP type.
  final pulumi.Input<int> code;

  /// ICMP type. A value of `-1` means all types.
  final pulumi.Input<int> type;

  /// Creates a new [KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationIcmpTypeCode].
  /// [code] ICMP code. A value of `-1` means all codes for the specified ICMP type.
  /// [type] ICMP type. A value of `-1` means all types.
  KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationIcmpTypeCode({
    required this.code,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'code': code, 'type': type};
  }

  factory KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationIcmpTypeCode.fromMap(
    Map<String, dynamic> map,
  ) {
    return KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationIcmpTypeCode(
      code: pulumi.Input.fromValue(map['code'] as int),
      type: pulumi.Input.fromValue(map['type'] as int),
    );
  }
}
