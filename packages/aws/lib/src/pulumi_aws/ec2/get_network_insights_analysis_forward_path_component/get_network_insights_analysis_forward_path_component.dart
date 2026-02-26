// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_network_insights_analysis_forward_path_component_acl_rule/get_network_insights_analysis_forward_path_component_acl_rule.dart';
import '../get_network_insights_analysis_forward_path_component_additional_detail/get_network_insights_analysis_forward_path_component_additional_detail.dart';
import '../get_network_insights_analysis_forward_path_component_attached_to/get_network_insights_analysis_forward_path_component_attached_to.dart';
import '../get_network_insights_analysis_forward_path_component_component/get_network_insights_analysis_forward_path_component_component.dart';
import '../get_network_insights_analysis_forward_path_component_destination_vpc/get_network_insights_analysis_forward_path_component_destination_vpc.dart';
import '../get_network_insights_analysis_forward_path_component_inbound_header/get_network_insights_analysis_forward_path_component_inbound_header.dart';
import '../get_network_insights_analysis_forward_path_component_outbound_header/get_network_insights_analysis_forward_path_component_outbound_header.dart';
import '../get_network_insights_analysis_forward_path_component_route_table_route/get_network_insights_analysis_forward_path_component_route_table_route.dart';
import '../get_network_insights_analysis_forward_path_component_security_group_rule/get_network_insights_analysis_forward_path_component_security_group_rule.dart';
import '../get_network_insights_analysis_forward_path_component_source_vpc/get_network_insights_analysis_forward_path_component_source_vpc.dart';
import '../get_network_insights_analysis_forward_path_component_subnet/get_network_insights_analysis_forward_path_component_subnet.dart';
import '../get_network_insights_analysis_forward_path_component_transit_gateway/get_network_insights_analysis_forward_path_component_transit_gateway.dart';
import '../get_network_insights_analysis_forward_path_component_transit_gateway_route_table_route/get_network_insights_analysis_forward_path_component_transit_gateway_route_table_route.dart';
import '../get_network_insights_analysis_forward_path_component_vpc/get_network_insights_analysis_forward_path_component_vpc.dart';

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
          GetNetworkInsightsAnalysisForwardPathComponentTransitGatewayRouteTableRoute>
      transitGatewayRouteTableRoutes;
  final List<GetNetworkInsightsAnalysisForwardPathComponentTransitGateway>
      transitGateways;
  final List<GetNetworkInsightsAnalysisForwardPathComponentVpc> vpcs;

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
    final map = <String, dynamic>{};
    map['aclRules'] = Input.encodeList<
        GetNetworkInsightsAnalysisForwardPathComponentAclRule,
        Map<String, dynamic>>(aclRules, (value) => value.toMap());
    map['additionalDetails'] = Input.encodeList<
        GetNetworkInsightsAnalysisForwardPathComponentAdditionalDetail,
        Map<String, dynamic>>(additionalDetails, (value) => value.toMap());
    map['attachedTos'] = Input.encodeList<
        GetNetworkInsightsAnalysisForwardPathComponentAttachedTo,
        Map<String, dynamic>>(attachedTos, (value) => value.toMap());
    map['components'] = Input.encodeList<
        GetNetworkInsightsAnalysisForwardPathComponentComponent,
        Map<String, dynamic>>(components, (value) => value.toMap());
    map['destinationVpcs'] = Input.encodeList<
        GetNetworkInsightsAnalysisForwardPathComponentDestinationVpc,
        Map<String, dynamic>>(destinationVpcs, (value) => value.toMap());
    map['inboundHeaders'] = Input.encodeList<
        GetNetworkInsightsAnalysisForwardPathComponentInboundHeader,
        Map<String, dynamic>>(inboundHeaders, (value) => value.toMap());
    map['outboundHeaders'] = Input.encodeList<
        GetNetworkInsightsAnalysisForwardPathComponentOutboundHeader,
        Map<String, dynamic>>(outboundHeaders, (value) => value.toMap());
    map['routeTableRoutes'] = Input.encodeList<
        GetNetworkInsightsAnalysisForwardPathComponentRouteTableRoute,
        Map<String, dynamic>>(routeTableRoutes, (value) => value.toMap());
    map['securityGroupRules'] = Input.encodeList<
        GetNetworkInsightsAnalysisForwardPathComponentSecurityGroupRule,
        Map<String, dynamic>>(securityGroupRules, (value) => value.toMap());
    map['sequenceNumber'] = sequenceNumber;
    map['sourceVpcs'] = Input.encodeList<
        GetNetworkInsightsAnalysisForwardPathComponentSourceVpc,
        Map<String, dynamic>>(sourceVpcs, (value) => value.toMap());
    map['subnets'] = Input.encodeList<
        GetNetworkInsightsAnalysisForwardPathComponentSubnet,
        Map<String, dynamic>>(subnets, (value) => value.toMap());
    map['transitGatewayRouteTableRoutes'] = Input.encodeList<
        GetNetworkInsightsAnalysisForwardPathComponentTransitGatewayRouteTableRoute,
        Map<String,
            dynamic>>(transitGatewayRouteTableRoutes, (value) => value.toMap());
    map['transitGateways'] = Input.encodeList<
        GetNetworkInsightsAnalysisForwardPathComponentTransitGateway,
        Map<String, dynamic>>(transitGateways, (value) => value.toMap());
    map['vpcs'] = Input.encodeList<
        GetNetworkInsightsAnalysisForwardPathComponentVpc,
        Map<String, dynamic>>(vpcs, (value) => value.toMap());
    return map;
  }

  factory GetNetworkInsightsAnalysisForwardPathComponent.fromMap(
      Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisForwardPathComponent(
      aclRules: Input.decodeList<
              GetNetworkInsightsAnalysisForwardPathComponentAclRule>(
          map['aclRules'],
          (value) =>
              GetNetworkInsightsAnalysisForwardPathComponentAclRule.fromMap(
                  (value as Map).cast<String, dynamic>())),
      additionalDetails: Input.decodeList<
              GetNetworkInsightsAnalysisForwardPathComponentAdditionalDetail>(
          map['additionalDetails'],
          (value) =>
              GetNetworkInsightsAnalysisForwardPathComponentAdditionalDetail
                  .fromMap((value as Map).cast<String, dynamic>())),
      attachedTos: Input.decodeList<
              GetNetworkInsightsAnalysisForwardPathComponentAttachedTo>(
          map['attachedTos'],
          (value) =>
              GetNetworkInsightsAnalysisForwardPathComponentAttachedTo.fromMap(
                  (value as Map).cast<String, dynamic>())),
      components: Input.decodeList<
              GetNetworkInsightsAnalysisForwardPathComponentComponent>(
          map['components'],
          (value) =>
              GetNetworkInsightsAnalysisForwardPathComponentComponent.fromMap(
                  (value as Map).cast<String, dynamic>())),
      destinationVpcs: Input.decodeList<
              GetNetworkInsightsAnalysisForwardPathComponentDestinationVpc>(
          map['destinationVpcs'],
          (value) =>
              GetNetworkInsightsAnalysisForwardPathComponentDestinationVpc
                  .fromMap((value as Map).cast<String, dynamic>())),
      inboundHeaders: Input.decodeList<
              GetNetworkInsightsAnalysisForwardPathComponentInboundHeader>(
          map['inboundHeaders'],
          (value) => GetNetworkInsightsAnalysisForwardPathComponentInboundHeader
              .fromMap((value as Map).cast<String, dynamic>())),
      outboundHeaders: Input.decodeList<
              GetNetworkInsightsAnalysisForwardPathComponentOutboundHeader>(
          map['outboundHeaders'],
          (value) =>
              GetNetworkInsightsAnalysisForwardPathComponentOutboundHeader
                  .fromMap((value as Map).cast<String, dynamic>())),
      routeTableRoutes: Input.decodeList<
              GetNetworkInsightsAnalysisForwardPathComponentRouteTableRoute>(
          map['routeTableRoutes'],
          (value) =>
              GetNetworkInsightsAnalysisForwardPathComponentRouteTableRoute
                  .fromMap((value as Map).cast<String, dynamic>())),
      securityGroupRules: Input.decodeList<
              GetNetworkInsightsAnalysisForwardPathComponentSecurityGroupRule>(
          map['securityGroupRules'],
          (value) =>
              GetNetworkInsightsAnalysisForwardPathComponentSecurityGroupRule
                  .fromMap((value as Map).cast<String, dynamic>())),
      sequenceNumber: map['sequenceNumber'] as int,
      sourceVpcs: Input.decodeList<
              GetNetworkInsightsAnalysisForwardPathComponentSourceVpc>(
          map['sourceVpcs'],
          (value) =>
              GetNetworkInsightsAnalysisForwardPathComponentSourceVpc.fromMap(
                  (value as Map).cast<String, dynamic>())),
      subnets: Input.decodeList<
              GetNetworkInsightsAnalysisForwardPathComponentSubnet>(
          map['subnets'],
          (value) =>
              GetNetworkInsightsAnalysisForwardPathComponentSubnet.fromMap(
                  (value as Map).cast<String, dynamic>())),
      transitGatewayRouteTableRoutes: Input.decodeList<
              GetNetworkInsightsAnalysisForwardPathComponentTransitGatewayRouteTableRoute>(
          map['transitGatewayRouteTableRoutes'],
          (value) =>
              GetNetworkInsightsAnalysisForwardPathComponentTransitGatewayRouteTableRoute
                  .fromMap((value as Map).cast<String, dynamic>())),
      transitGateways: Input.decodeList<
              GetNetworkInsightsAnalysisForwardPathComponentTransitGateway>(
          map['transitGateways'],
          (value) =>
              GetNetworkInsightsAnalysisForwardPathComponentTransitGateway
                  .fromMap((value as Map).cast<String, dynamic>())),
      vpcs: Input.decodeList<GetNetworkInsightsAnalysisForwardPathComponentVpc>(
          map['vpcs'],
          (value) => GetNetworkInsightsAnalysisForwardPathComponentVpc.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
