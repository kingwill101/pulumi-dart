// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_insights_analysis_forward_path_component_acl_rule.dart';
import 'get_network_insights_analysis_forward_path_component_additional_detail.dart';
import 'get_network_insights_analysis_forward_path_component_attached_to.dart';
import 'get_network_insights_analysis_forward_path_component_component.dart';
import 'get_network_insights_analysis_forward_path_component_destination_vpc.dart';
import 'get_network_insights_analysis_forward_path_component_inbound_header.dart';
import 'get_network_insights_analysis_forward_path_component_outbound_header.dart';
import 'get_network_insights_analysis_forward_path_component_route_table_route.dart';
import 'get_network_insights_analysis_forward_path_component_security_group_rule.dart';
import 'get_network_insights_analysis_forward_path_component_source_vpc.dart';
import 'get_network_insights_analysis_forward_path_component_subnet.dart';
import 'get_network_insights_analysis_forward_path_component_transit_gateway.dart';
import 'get_network_insights_analysis_forward_path_component_transit_gateway_route_table_route.dart';
import 'get_network_insights_analysis_forward_path_component_vpc.dart';

class GetNetworkInsightsAnalysisForwardPathComponent {
  final List<GetNetworkInsightsAnalysisForwardPathComponentAclRule> aclRules;
  final List<GetNetworkInsightsAnalysisForwardPathComponentAdditionalDetail>
  additionalDetails;
  final List<GetNetworkInsightsAnalysisForwardPathComponentAttachedTo>
  attachedTos;
  final List<GetNetworkInsightsAnalysisForwardPathComponentComponent>
  components;
  final List<GetNetworkInsightsAnalysisForwardPathComponentDestinationVpc>
  destinationVpcs;
  final List<GetNetworkInsightsAnalysisForwardPathComponentInboundHeader>
  inboundHeaders;
  final List<GetNetworkInsightsAnalysisForwardPathComponentOutboundHeader>
  outboundHeaders;
  final List<GetNetworkInsightsAnalysisForwardPathComponentRouteTableRoute>
  routeTableRoutes;
  final List<GetNetworkInsightsAnalysisForwardPathComponentSecurityGroupRule>
  securityGroupRules;
  final int sequenceNumber;
  final List<GetNetworkInsightsAnalysisForwardPathComponentSourceVpc>
  sourceVpcs;
  final List<GetNetworkInsightsAnalysisForwardPathComponentSubnet> subnets;
  final List<
    GetNetworkInsightsAnalysisForwardPathComponentTransitGatewayRouteTableRoute
  >
  transitGatewayRouteTableRoutes;
  final List<GetNetworkInsightsAnalysisForwardPathComponentTransitGateway>
  transitGateways;
  final List<GetNetworkInsightsAnalysisForwardPathComponentVpc> vpcs;

  /// Creates a new [GetNetworkInsightsAnalysisForwardPathComponent].
  /// [aclRules] Required.
  /// [additionalDetails] Required.
  /// [attachedTos] Required.
  /// [components] Required.
  /// [destinationVpcs] Required.
  /// [inboundHeaders] Required.
  /// [outboundHeaders] Required.
  /// [routeTableRoutes] Required.
  /// [securityGroupRules] Required.
  /// [sequenceNumber] Required.
  /// [sourceVpcs] Required.
  /// [subnets] Required.
  /// [transitGatewayRouteTableRoutes] Required.
  /// [transitGateways] Required.
  /// [vpcs] Required.
  GetNetworkInsightsAnalysisForwardPathComponent({
    required this.aclRules,
    required this.additionalDetails,
    required this.attachedTos,
    required this.components,
    required this.destinationVpcs,
    required this.inboundHeaders,
    required this.outboundHeaders,
    required this.routeTableRoutes,
    required this.securityGroupRules,
    required this.sequenceNumber,
    required this.sourceVpcs,
    required this.subnets,
    required this.transitGatewayRouteTableRoutes,
    required this.transitGateways,
    required this.vpcs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclRules':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisForwardPathComponentAclRule,
            Map<String, dynamic>
          >(aclRules, (value) => value.toMap()),
      'additionalDetails':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisForwardPathComponentAdditionalDetail,
            Map<String, dynamic>
          >(additionalDetails, (value) => value.toMap()),
      'attachedTos':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisForwardPathComponentAttachedTo,
            Map<String, dynamic>
          >(attachedTos, (value) => value.toMap()),
      'components':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisForwardPathComponentComponent,
            Map<String, dynamic>
          >(components, (value) => value.toMap()),
      'destinationVpcs':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisForwardPathComponentDestinationVpc,
            Map<String, dynamic>
          >(destinationVpcs, (value) => value.toMap()),
      'inboundHeaders':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisForwardPathComponentInboundHeader,
            Map<String, dynamic>
          >(inboundHeaders, (value) => value.toMap()),
      'outboundHeaders':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisForwardPathComponentOutboundHeader,
            Map<String, dynamic>
          >(outboundHeaders, (value) => value.toMap()),
      'routeTableRoutes':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisForwardPathComponentRouteTableRoute,
            Map<String, dynamic>
          >(routeTableRoutes, (value) => value.toMap()),
      'securityGroupRules':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisForwardPathComponentSecurityGroupRule,
            Map<String, dynamic>
          >(securityGroupRules, (value) => value.toMap()),
      'sequenceNumber': sequenceNumber,
      'sourceVpcs':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisForwardPathComponentSourceVpc,
            Map<String, dynamic>
          >(sourceVpcs, (value) => value.toMap()),
      'subnets':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisForwardPathComponentSubnet,
            Map<String, dynamic>
          >(subnets, (value) => value.toMap()),
      'transitGatewayRouteTableRoutes':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisForwardPathComponentTransitGatewayRouteTableRoute,
            Map<String, dynamic>
          >(transitGatewayRouteTableRoutes, (value) => value.toMap()),
      'transitGateways':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisForwardPathComponentTransitGateway,
            Map<String, dynamic>
          >(transitGateways, (value) => value.toMap()),
      'vpcs':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisForwardPathComponentVpc,
            Map<String, dynamic>
          >(vpcs, (value) => value.toMap()),
    };
  }

  factory GetNetworkInsightsAnalysisForwardPathComponent.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetNetworkInsightsAnalysisForwardPathComponent(
      aclRules:
          pulumi.Input.decodeList<
            GetNetworkInsightsAnalysisForwardPathComponentAclRule
          >(
            map['aclRules'],
            (value) =>
                GetNetworkInsightsAnalysisForwardPathComponentAclRule.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      additionalDetails:
          pulumi.Input.decodeList<
            GetNetworkInsightsAnalysisForwardPathComponentAdditionalDetail
          >(
            map['additionalDetails'],
            (value) =>
                GetNetworkInsightsAnalysisForwardPathComponentAdditionalDetail.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      attachedTos:
          pulumi.Input.decodeList<
            GetNetworkInsightsAnalysisForwardPathComponentAttachedTo
          >(
            map['attachedTos'],
            (value) =>
                GetNetworkInsightsAnalysisForwardPathComponentAttachedTo.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      components:
          pulumi.Input.decodeList<
            GetNetworkInsightsAnalysisForwardPathComponentComponent
          >(
            map['components'],
            (value) =>
                GetNetworkInsightsAnalysisForwardPathComponentComponent.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      destinationVpcs:
          pulumi.Input.decodeList<
            GetNetworkInsightsAnalysisForwardPathComponentDestinationVpc
          >(
            map['destinationVpcs'],
            (value) =>
                GetNetworkInsightsAnalysisForwardPathComponentDestinationVpc.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      inboundHeaders:
          pulumi.Input.decodeList<
            GetNetworkInsightsAnalysisForwardPathComponentInboundHeader
          >(
            map['inboundHeaders'],
            (value) =>
                GetNetworkInsightsAnalysisForwardPathComponentInboundHeader.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      outboundHeaders:
          pulumi.Input.decodeList<
            GetNetworkInsightsAnalysisForwardPathComponentOutboundHeader
          >(
            map['outboundHeaders'],
            (value) =>
                GetNetworkInsightsAnalysisForwardPathComponentOutboundHeader.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      routeTableRoutes:
          pulumi.Input.decodeList<
            GetNetworkInsightsAnalysisForwardPathComponentRouteTableRoute
          >(
            map['routeTableRoutes'],
            (value) =>
                GetNetworkInsightsAnalysisForwardPathComponentRouteTableRoute.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      securityGroupRules:
          pulumi.Input.decodeList<
            GetNetworkInsightsAnalysisForwardPathComponentSecurityGroupRule
          >(
            map['securityGroupRules'],
            (value) =>
                GetNetworkInsightsAnalysisForwardPathComponentSecurityGroupRule.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      sequenceNumber: map['sequenceNumber'] as int,
      sourceVpcs:
          pulumi.Input.decodeList<
            GetNetworkInsightsAnalysisForwardPathComponentSourceVpc
          >(
            map['sourceVpcs'],
            (value) =>
                GetNetworkInsightsAnalysisForwardPathComponentSourceVpc.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      subnets:
          pulumi.Input.decodeList<
            GetNetworkInsightsAnalysisForwardPathComponentSubnet
          >(
            map['subnets'],
            (value) =>
                GetNetworkInsightsAnalysisForwardPathComponentSubnet.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      transitGatewayRouteTableRoutes:
          pulumi.Input.decodeList<
            GetNetworkInsightsAnalysisForwardPathComponentTransitGatewayRouteTableRoute
          >(
            map['transitGatewayRouteTableRoutes'],
            (value) =>
                GetNetworkInsightsAnalysisForwardPathComponentTransitGatewayRouteTableRoute.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      transitGateways:
          pulumi.Input.decodeList<
            GetNetworkInsightsAnalysisForwardPathComponentTransitGateway
          >(
            map['transitGateways'],
            (value) =>
                GetNetworkInsightsAnalysisForwardPathComponentTransitGateway.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      vpcs:
          pulumi.Input.decodeList<
            GetNetworkInsightsAnalysisForwardPathComponentVpc
          >(
            map['vpcs'],
            (value) =>
                GetNetworkInsightsAnalysisForwardPathComponentVpc.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
    );
  }
}
