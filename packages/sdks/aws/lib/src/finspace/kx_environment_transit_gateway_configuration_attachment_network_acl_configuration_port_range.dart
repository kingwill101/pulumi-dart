// ignore_for_file: unused_element, unnecessary_cast


class KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationPortRange {
  /// First port in the range.
  final int from;
  /// Last port in the range.
  final int to;

  /// Creates a new [KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationPortRange].
  /// [from] First port in the range.
  /// [to] Last port in the range.
  KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationPortRange({
    required this.from,
    required this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': from,
      'to': to,
    };
  }

  factory KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationPortRange.fromMap(Map<String, dynamic> map) {
    return KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationPortRange(
      from: map['from'] as int,
      to: map['to'] as int,
    );
  }
}

