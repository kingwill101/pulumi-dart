// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../kx_environment_transit_gateway_configuration_attachment_network_acl_configuration/kx_environment_transit_gateway_configuration_attachment_network_acl_configuration.dart';

class KxEnvironmentTransitGatewayConfiguration {
  /// Rules that define how you manage outbound traffic from kdb network to your internal network. Defined below.
  final List<
          KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfiguration>?
      attachmentNetworkAclConfigurations;

  /// Routing CIDR on behalf of KX environment. It could be any “/26 range in the 100.64.0.0 CIDR space. After providing, it will be added to the customer’s transit gateway routing table so that the traffics could be routed to KX network.
  final String routableCidrSpace;

  /// Identifier of the transit gateway created by the customer to connect outbound traffics from KX network to your internal network.
  final String transitGatewayId;

  KxEnvironmentTransitGatewayConfiguration({
    this.attachmentNetworkAclConfigurations,
    required this.routableCidrSpace,
    required this.transitGatewayId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attachmentNetworkAclConfigurationsValue =
        attachmentNetworkAclConfigurations;
    if (attachmentNetworkAclConfigurationsValue != null) {
      map['attachmentNetworkAclConfigurations'] = Input.encodeList<
              KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfiguration,
              Map<String, dynamic>>(
          attachmentNetworkAclConfigurationsValue, (value) => value.toMap());
    }
    map['routableCidrSpace'] = routableCidrSpace;
    map['transitGatewayId'] = transitGatewayId;
    return map;
  }

  factory KxEnvironmentTransitGatewayConfiguration.fromMap(
      Map<String, dynamic> map) {
    return KxEnvironmentTransitGatewayConfiguration(
      attachmentNetworkAclConfigurations: map[
                  'attachmentNetworkAclConfigurations'] ==
              null
          ? null
          : Input.decodeList<
                  KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfiguration>(
              map['attachmentNetworkAclConfigurations'],
              (value) =>
                  KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfiguration
                      .fromMap((value as Map).cast<String, dynamic>())),
      routableCidrSpace: map['routableCidrSpace'] as String,
      transitGatewayId: map['transitGatewayId'] as String,
    );
  }
}
