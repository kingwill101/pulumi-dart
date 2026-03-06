// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kx_environment_transit_gateway_configuration_attachment_network_acl_configuration.dart';

class KxEnvironmentTransitGatewayConfiguration {
  /// Rules that define how you manage outbound traffic from kdb network to your internal network. Defined below.
  final pulumi.Input<List<KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfiguration>>? attachmentNetworkAclConfigurations;
  /// Routing CIDR on behalf of KX environment. It could be any “/26 range in the 100.64.0.0 CIDR space. After providing, it will be added to the customer’s transit gateway routing table so that the traffics could be routed to KX network.
  final pulumi.Input<String> routableCidrSpace;
  /// Identifier of the transit gateway created by the customer to connect outbound traffics from KX network to your internal network.
  final pulumi.Input<String> transitGatewayId;

  /// Creates a new [KxEnvironmentTransitGatewayConfiguration].
  /// [attachmentNetworkAclConfigurations] Rules that define how you manage outbound traffic from kdb network to your internal network. Defined below.
  /// [routableCidrSpace] Routing CIDR on behalf of KX environment. It could be any “/26 range in the 100.64.0.0 CIDR space. After providing, it will be added to the customer’s transit gateway routing table so that the traffics could be routed to KX network.
  /// [transitGatewayId] Identifier of the transit gateway created by the customer to connect outbound traffics from KX network to your internal network.
  const KxEnvironmentTransitGatewayConfiguration({
    this.attachmentNetworkAclConfigurations,
    required this.routableCidrSpace,
    required this.transitGatewayId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentNetworkAclConfigurations': ?pulumi.Input.mapOptionalInputValue<List<KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfiguration>, List<Map<String, dynamic>>>(attachmentNetworkAclConfigurations, (value) => pulumi.Input.encodeList<KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'routableCidrSpace': routableCidrSpace,
      'transitGatewayId': transitGatewayId,
    };
  }

  factory KxEnvironmentTransitGatewayConfiguration.fromMap(Map<String, dynamic> map) {
    return KxEnvironmentTransitGatewayConfiguration(
      attachmentNetworkAclConfigurations: (() { final guardedValue = map['attachmentNetworkAclConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfiguration>(guardedValue, (value) => KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      routableCidrSpace: pulumi.Input.fromValue(map['routableCidrSpace'] as String),
      transitGatewayId: pulumi.Input.fromValue(map['transitGatewayId'] as String),
    );
  }
}

