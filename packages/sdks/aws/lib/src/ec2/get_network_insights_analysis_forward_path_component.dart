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
  final pulumi.Input<List<GetNetworkInsightsAnalysisForwardPathComponentAclRule>> aclRules;
  final pulumi.Input<List<GetNetworkInsightsAnalysisForwardPathComponentAdditionalDetail>> additionalDetails;
  final pulumi.Input<List<GetNetworkInsightsAnalysisForwardPathComponentAttachedTo>> attachedTos;
  final pulumi.Input<List<GetNetworkInsightsAnalysisForwardPathComponentComponent>> components;
  final pulumi.Input<List<GetNetworkInsightsAnalysisForwardPathComponentDestinationVpc>> destinationVpcs;
  final pulumi.Input<List<GetNetworkInsightsAnalysisForwardPathComponentInboundHeader>> inboundHeaders;
  final pulumi.Input<List<GetNetworkInsightsAnalysisForwardPathComponentOutboundHeader>> outboundHeaders;
  final pulumi.Input<List<GetNetworkInsightsAnalysisForwardPathComponentRouteTableRoute>> routeTableRoutes;
  final pulumi.Input<List<GetNetworkInsightsAnalysisForwardPathComponentSecurityGroupRule>> securityGroupRules;
  final pulumi.Input<int> sequenceNumber;
  final pulumi.Input<List<GetNetworkInsightsAnalysisForwardPathComponentSourceVpc>> sourceVpcs;
  final pulumi.Input<List<GetNetworkInsightsAnalysisForwardPathComponentSubnet>> subnets;
  final pulumi.Input<List<GetNetworkInsightsAnalysisForwardPathComponentTransitGatewayRouteTableRoute>> transitGatewayRouteTableRoutes;
  final pulumi.Input<List<GetNetworkInsightsAnalysisForwardPathComponentTransitGateway>> transitGateways;
  final pulumi.Input<List<GetNetworkInsightsAnalysisForwardPathComponentVpc>> vpcs;

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
      'aclRules': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisForwardPathComponentAclRule>, List<Map<String, dynamic>>>(aclRules, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisForwardPathComponentAclRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'additionalDetails': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisForwardPathComponentAdditionalDetail>, List<Map<String, dynamic>>>(additionalDetails, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisForwardPathComponentAdditionalDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'attachedTos': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisForwardPathComponentAttachedTo>, List<Map<String, dynamic>>>(attachedTos, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisForwardPathComponentAttachedTo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'components': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisForwardPathComponentComponent>, List<Map<String, dynamic>>>(components, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisForwardPathComponentComponent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'destinationVpcs': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisForwardPathComponentDestinationVpc>, List<Map<String, dynamic>>>(destinationVpcs, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisForwardPathComponentDestinationVpc, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inboundHeaders': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisForwardPathComponentInboundHeader>, List<Map<String, dynamic>>>(inboundHeaders, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisForwardPathComponentInboundHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'outboundHeaders': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisForwardPathComponentOutboundHeader>, List<Map<String, dynamic>>>(outboundHeaders, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisForwardPathComponentOutboundHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'routeTableRoutes': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisForwardPathComponentRouteTableRoute>, List<Map<String, dynamic>>>(routeTableRoutes, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisForwardPathComponentRouteTableRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'securityGroupRules': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisForwardPathComponentSecurityGroupRule>, List<Map<String, dynamic>>>(securityGroupRules, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisForwardPathComponentSecurityGroupRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sequenceNumber': sequenceNumber,
      'sourceVpcs': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisForwardPathComponentSourceVpc>, List<Map<String, dynamic>>>(sourceVpcs, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisForwardPathComponentSourceVpc, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subnets': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisForwardPathComponentSubnet>, List<Map<String, dynamic>>>(subnets, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisForwardPathComponentSubnet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'transitGatewayRouteTableRoutes': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisForwardPathComponentTransitGatewayRouteTableRoute>, List<Map<String, dynamic>>>(transitGatewayRouteTableRoutes, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisForwardPathComponentTransitGatewayRouteTableRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'transitGateways': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisForwardPathComponentTransitGateway>, List<Map<String, dynamic>>>(transitGateways, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisForwardPathComponentTransitGateway, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcs': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisForwardPathComponentVpc>, List<Map<String, dynamic>>>(vpcs, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisForwardPathComponentVpc, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetNetworkInsightsAnalysisForwardPathComponent.fromMap(Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisForwardPathComponent(
      aclRules: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisForwardPathComponentAclRule>(map['aclRules'], (value) => GetNetworkInsightsAnalysisForwardPathComponentAclRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      additionalDetails: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisForwardPathComponentAdditionalDetail>(map['additionalDetails'], (value) => GetNetworkInsightsAnalysisForwardPathComponentAdditionalDetail.fromMap((value as Map).cast<String, dynamic>()))).input(),
      attachedTos: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisForwardPathComponentAttachedTo>(map['attachedTos'], (value) => GetNetworkInsightsAnalysisForwardPathComponentAttachedTo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      components: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisForwardPathComponentComponent>(map['components'], (value) => GetNetworkInsightsAnalysisForwardPathComponentComponent.fromMap((value as Map).cast<String, dynamic>()))).input(),
      destinationVpcs: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisForwardPathComponentDestinationVpc>(map['destinationVpcs'], (value) => GetNetworkInsightsAnalysisForwardPathComponentDestinationVpc.fromMap((value as Map).cast<String, dynamic>()))).input(),
      inboundHeaders: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisForwardPathComponentInboundHeader>(map['inboundHeaders'], (value) => GetNetworkInsightsAnalysisForwardPathComponentInboundHeader.fromMap((value as Map).cast<String, dynamic>()))).input(),
      outboundHeaders: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisForwardPathComponentOutboundHeader>(map['outboundHeaders'], (value) => GetNetworkInsightsAnalysisForwardPathComponentOutboundHeader.fromMap((value as Map).cast<String, dynamic>()))).input(),
      routeTableRoutes: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisForwardPathComponentRouteTableRoute>(map['routeTableRoutes'], (value) => GetNetworkInsightsAnalysisForwardPathComponentRouteTableRoute.fromMap((value as Map).cast<String, dynamic>()))).input(),
      securityGroupRules: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisForwardPathComponentSecurityGroupRule>(map['securityGroupRules'], (value) => GetNetworkInsightsAnalysisForwardPathComponentSecurityGroupRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sequenceNumber: (map['sequenceNumber'] as int).input(),
      sourceVpcs: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisForwardPathComponentSourceVpc>(map['sourceVpcs'], (value) => GetNetworkInsightsAnalysisForwardPathComponentSourceVpc.fromMap((value as Map).cast<String, dynamic>()))).input(),
      subnets: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisForwardPathComponentSubnet>(map['subnets'], (value) => GetNetworkInsightsAnalysisForwardPathComponentSubnet.fromMap((value as Map).cast<String, dynamic>()))).input(),
      transitGatewayRouteTableRoutes: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisForwardPathComponentTransitGatewayRouteTableRoute>(map['transitGatewayRouteTableRoutes'], (value) => GetNetworkInsightsAnalysisForwardPathComponentTransitGatewayRouteTableRoute.fromMap((value as Map).cast<String, dynamic>()))).input(),
      transitGateways: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisForwardPathComponentTransitGateway>(map['transitGateways'], (value) => GetNetworkInsightsAnalysisForwardPathComponentTransitGateway.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vpcs: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisForwardPathComponentVpc>(map['vpcs'], (value) => GetNetworkInsightsAnalysisForwardPathComponentVpc.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

