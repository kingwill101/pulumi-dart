// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_network_insights_analysis_return_path_component_acl_rule/get_network_insights_analysis_return_path_component_acl_rule.dart';
import '../get_network_insights_analysis_return_path_component_additional_detail/get_network_insights_analysis_return_path_component_additional_detail.dart';
import '../get_network_insights_analysis_return_path_component_attached_to/get_network_insights_analysis_return_path_component_attached_to.dart';
import '../get_network_insights_analysis_return_path_component_component/get_network_insights_analysis_return_path_component_component.dart';
import '../get_network_insights_analysis_return_path_component_destination_vpc/get_network_insights_analysis_return_path_component_destination_vpc.dart';
import '../get_network_insights_analysis_return_path_component_inbound_header/get_network_insights_analysis_return_path_component_inbound_header.dart';
import '../get_network_insights_analysis_return_path_component_outbound_header/get_network_insights_analysis_return_path_component_outbound_header.dart';
import '../get_network_insights_analysis_return_path_component_route_table_route/get_network_insights_analysis_return_path_component_route_table_route.dart';
import '../get_network_insights_analysis_return_path_component_security_group_rule/get_network_insights_analysis_return_path_component_security_group_rule.dart';
import '../get_network_insights_analysis_return_path_component_source_vpc/get_network_insights_analysis_return_path_component_source_vpc.dart';
import '../get_network_insights_analysis_return_path_component_subnet/get_network_insights_analysis_return_path_component_subnet.dart';
import '../get_network_insights_analysis_return_path_component_transit_gateway/get_network_insights_analysis_return_path_component_transit_gateway.dart';
import '../get_network_insights_analysis_return_path_component_transit_gateway_route_table_route/get_network_insights_analysis_return_path_component_transit_gateway_route_table_route.dart';
import '../get_network_insights_analysis_return_path_component_vpc/get_network_insights_analysis_return_path_component_vpc.dart';

class GetNetworkInsightsAnalysisReturnPathComponent {
  final List<GetNetworkInsightsAnalysisReturnPathComponentAclRule> aclRules;
  final List<GetNetworkInsightsAnalysisReturnPathComponentAdditionalDetail>
      additionalDetails;
  final List<GetNetworkInsightsAnalysisReturnPathComponentAttachedTo>
      attachedTos;
  final List<GetNetworkInsightsAnalysisReturnPathComponentComponent> components;
  final List<GetNetworkInsightsAnalysisReturnPathComponentDestinationVpc>
      destinationVpcs;
  final List<GetNetworkInsightsAnalysisReturnPathComponentInboundHeader>
      inboundHeaders;
  final List<GetNetworkInsightsAnalysisReturnPathComponentOutboundHeader>
      outboundHeaders;
  final List<GetNetworkInsightsAnalysisReturnPathComponentRouteTableRoute>
      routeTableRoutes;
  final List<GetNetworkInsightsAnalysisReturnPathComponentSecurityGroupRule>
      securityGroupRules;
  final int sequenceNumber;
  final List<GetNetworkInsightsAnalysisReturnPathComponentSourceVpc> sourceVpcs;
  final List<GetNetworkInsightsAnalysisReturnPathComponentSubnet> subnets;
  final List<
          GetNetworkInsightsAnalysisReturnPathComponentTransitGatewayRouteTableRoute>
      transitGatewayRouteTableRoutes;
  final List<GetNetworkInsightsAnalysisReturnPathComponentTransitGateway>
      transitGateways;
  final List<GetNetworkInsightsAnalysisReturnPathComponentVpc> vpcs;

  GetNetworkInsightsAnalysisReturnPathComponent({
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
        GetNetworkInsightsAnalysisReturnPathComponentAclRule,
        Map<String, dynamic>>(aclRules, (value) => value.toMap());
    map['additionalDetails'] = Input.encodeList<
        GetNetworkInsightsAnalysisReturnPathComponentAdditionalDetail,
        Map<String, dynamic>>(additionalDetails, (value) => value.toMap());
    map['attachedTos'] = Input.encodeList<
        GetNetworkInsightsAnalysisReturnPathComponentAttachedTo,
        Map<String, dynamic>>(attachedTos, (value) => value.toMap());
    map['components'] = Input.encodeList<
        GetNetworkInsightsAnalysisReturnPathComponentComponent,
        Map<String, dynamic>>(components, (value) => value.toMap());
    map['destinationVpcs'] = Input.encodeList<
        GetNetworkInsightsAnalysisReturnPathComponentDestinationVpc,
        Map<String, dynamic>>(destinationVpcs, (value) => value.toMap());
    map['inboundHeaders'] = Input.encodeList<
        GetNetworkInsightsAnalysisReturnPathComponentInboundHeader,
        Map<String, dynamic>>(inboundHeaders, (value) => value.toMap());
    map['outboundHeaders'] = Input.encodeList<
        GetNetworkInsightsAnalysisReturnPathComponentOutboundHeader,
        Map<String, dynamic>>(outboundHeaders, (value) => value.toMap());
    map['routeTableRoutes'] = Input.encodeList<
        GetNetworkInsightsAnalysisReturnPathComponentRouteTableRoute,
        Map<String, dynamic>>(routeTableRoutes, (value) => value.toMap());
    map['securityGroupRules'] = Input.encodeList<
        GetNetworkInsightsAnalysisReturnPathComponentSecurityGroupRule,
        Map<String, dynamic>>(securityGroupRules, (value) => value.toMap());
    map['sequenceNumber'] = sequenceNumber;
    map['sourceVpcs'] = Input.encodeList<
        GetNetworkInsightsAnalysisReturnPathComponentSourceVpc,
        Map<String, dynamic>>(sourceVpcs, (value) => value.toMap());
    map['subnets'] = Input.encodeList<
        GetNetworkInsightsAnalysisReturnPathComponentSubnet,
        Map<String, dynamic>>(subnets, (value) => value.toMap());
    map['transitGatewayRouteTableRoutes'] = Input.encodeList<
        GetNetworkInsightsAnalysisReturnPathComponentTransitGatewayRouteTableRoute,
        Map<String,
            dynamic>>(transitGatewayRouteTableRoutes, (value) => value.toMap());
    map['transitGateways'] = Input.encodeList<
        GetNetworkInsightsAnalysisReturnPathComponentTransitGateway,
        Map<String, dynamic>>(transitGateways, (value) => value.toMap());
    map['vpcs'] = Input.encodeList<
        GetNetworkInsightsAnalysisReturnPathComponentVpc,
        Map<String, dynamic>>(vpcs, (value) => value.toMap());
    return map;
  }

  factory GetNetworkInsightsAnalysisReturnPathComponent.fromMap(
      Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisReturnPathComponent(
      aclRules: Input.decodeList<
              GetNetworkInsightsAnalysisReturnPathComponentAclRule>(
          map['aclRules'],
          (value) =>
              GetNetworkInsightsAnalysisReturnPathComponentAclRule.fromMap(
                  (value as Map).cast<String, dynamic>())),
      additionalDetails: Input.decodeList<
              GetNetworkInsightsAnalysisReturnPathComponentAdditionalDetail>(
          map['additionalDetails'],
          (value) =>
              GetNetworkInsightsAnalysisReturnPathComponentAdditionalDetail
                  .fromMap((value as Map).cast<String, dynamic>())),
      attachedTos: Input.decodeList<
              GetNetworkInsightsAnalysisReturnPathComponentAttachedTo>(
          map['attachedTos'],
          (value) =>
              GetNetworkInsightsAnalysisReturnPathComponentAttachedTo.fromMap(
                  (value as Map).cast<String, dynamic>())),
      components: Input.decodeList<
              GetNetworkInsightsAnalysisReturnPathComponentComponent>(
          map['components'],
          (value) =>
              GetNetworkInsightsAnalysisReturnPathComponentComponent.fromMap(
                  (value as Map).cast<String, dynamic>())),
      destinationVpcs: Input.decodeList<
              GetNetworkInsightsAnalysisReturnPathComponentDestinationVpc>(
          map['destinationVpcs'],
          (value) => GetNetworkInsightsAnalysisReturnPathComponentDestinationVpc
              .fromMap((value as Map).cast<String, dynamic>())),
      inboundHeaders: Input.decodeList<
              GetNetworkInsightsAnalysisReturnPathComponentInboundHeader>(
          map['inboundHeaders'],
          (value) => GetNetworkInsightsAnalysisReturnPathComponentInboundHeader
              .fromMap((value as Map).cast<String, dynamic>())),
      outboundHeaders: Input.decodeList<
              GetNetworkInsightsAnalysisReturnPathComponentOutboundHeader>(
          map['outboundHeaders'],
          (value) => GetNetworkInsightsAnalysisReturnPathComponentOutboundHeader
              .fromMap((value as Map).cast<String, dynamic>())),
      routeTableRoutes: Input.decodeList<
              GetNetworkInsightsAnalysisReturnPathComponentRouteTableRoute>(
          map['routeTableRoutes'],
          (value) =>
              GetNetworkInsightsAnalysisReturnPathComponentRouteTableRoute
                  .fromMap((value as Map).cast<String, dynamic>())),
      securityGroupRules: Input.decodeList<
              GetNetworkInsightsAnalysisReturnPathComponentSecurityGroupRule>(
          map['securityGroupRules'],
          (value) =>
              GetNetworkInsightsAnalysisReturnPathComponentSecurityGroupRule
                  .fromMap((value as Map).cast<String, dynamic>())),
      sequenceNumber: map['sequenceNumber'] as int,
      sourceVpcs: Input.decodeList<
              GetNetworkInsightsAnalysisReturnPathComponentSourceVpc>(
          map['sourceVpcs'],
          (value) =>
              GetNetworkInsightsAnalysisReturnPathComponentSourceVpc.fromMap(
                  (value as Map).cast<String, dynamic>())),
      subnets:
          Input.decodeList<GetNetworkInsightsAnalysisReturnPathComponentSubnet>(
              map['subnets'],
              (value) =>
                  GetNetworkInsightsAnalysisReturnPathComponentSubnet.fromMap(
                      (value as Map).cast<String, dynamic>())),
      transitGatewayRouteTableRoutes: Input.decodeList<
              GetNetworkInsightsAnalysisReturnPathComponentTransitGatewayRouteTableRoute>(
          map['transitGatewayRouteTableRoutes'],
          (value) =>
              GetNetworkInsightsAnalysisReturnPathComponentTransitGatewayRouteTableRoute
                  .fromMap((value as Map).cast<String, dynamic>())),
      transitGateways: Input.decodeList<
              GetNetworkInsightsAnalysisReturnPathComponentTransitGateway>(
          map['transitGateways'],
          (value) => GetNetworkInsightsAnalysisReturnPathComponentTransitGateway
              .fromMap((value as Map).cast<String, dynamic>())),
      vpcs: Input.decodeList<GetNetworkInsightsAnalysisReturnPathComponentVpc>(
          map['vpcs'],
          (value) => GetNetworkInsightsAnalysisReturnPathComponentVpc.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
