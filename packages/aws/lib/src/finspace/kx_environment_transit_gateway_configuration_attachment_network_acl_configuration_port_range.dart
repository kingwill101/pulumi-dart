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
    final map = <String, dynamic>{};
    map['from'] = from;
    map['to'] = to;
    return map;
  }

  factory KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationPortRange.fromMap(
      Map<String, dynamic> map) {
    return KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationPortRange(
      from: map['from'] as int,
      to: map['to'] as int,
    );
  }
}
