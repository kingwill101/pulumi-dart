// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationPortRange {
  /// First port in the range.
  final pulumi.Input<int> from;
  /// Last port in the range.
  final pulumi.Input<int> to;

  /// Creates a new [KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationPortRange].
  /// [from] First port in the range.
  /// [to] Last port in the range.
  const KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationPortRange({
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
      from: pulumi.Input.fromValue(map['from'] as int),
      to: pulumi.Input.fromValue(map['to'] as int),
    );
  }
}
