// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_insights_analysis_return_path_component_acl_rule.dart';
import 'get_network_insights_analysis_return_path_component_additional_detail.dart';
import 'get_network_insights_analysis_return_path_component_attached_to.dart';
import 'get_network_insights_analysis_return_path_component_component.dart';
import 'get_network_insights_analysis_return_path_component_destination_vpc.dart';
import 'get_network_insights_analysis_return_path_component_inbound_header.dart';
import 'get_network_insights_analysis_return_path_component_outbound_header.dart';
import 'get_network_insights_analysis_return_path_component_route_table_route.dart';
import 'get_network_insights_analysis_return_path_component_security_group_rule.dart';
import 'get_network_insights_analysis_return_path_component_source_vpc.dart';
import 'get_network_insights_analysis_return_path_component_subnet.dart';
import 'get_network_insights_analysis_return_path_component_transit_gateway.dart';
import 'get_network_insights_analysis_return_path_component_transit_gateway_route_table_route.dart';
import 'get_network_insights_analysis_return_path_component_vpc.dart';

class GetNetworkInsightsAnalysisReturnPathComponent {
  final pulumi.Input<List<GetNetworkInsightsAnalysisReturnPathComponentAclRule>> aclRules;
  final pulumi.Input<List<GetNetworkInsightsAnalysisReturnPathComponentAdditionalDetail>> additionalDetails;
  final pulumi.Input<List<GetNetworkInsightsAnalysisReturnPathComponentAttachedTo>> attachedTos;
  final pulumi.Input<List<GetNetworkInsightsAnalysisReturnPathComponentComponent>> components;
  final pulumi.Input<List<GetNetworkInsightsAnalysisReturnPathComponentDestinationVpc>> destinationVpcs;
  final pulumi.Input<List<GetNetworkInsightsAnalysisReturnPathComponentInboundHeader>> inboundHeaders;
  final pulumi.Input<List<GetNetworkInsightsAnalysisReturnPathComponentOutboundHeader>> outboundHeaders;
  final pulumi.Input<List<GetNetworkInsightsAnalysisReturnPathComponentRouteTableRoute>> routeTableRoutes;
  final pulumi.Input<List<GetNetworkInsightsAnalysisReturnPathComponentSecurityGroupRule>> securityGroupRules;
  final pulumi.Input<int> sequenceNumber;
  final pulumi.Input<List<GetNetworkInsightsAnalysisReturnPathComponentSourceVpc>> sourceVpcs;
  final pulumi.Input<List<GetNetworkInsightsAnalysisReturnPathComponentSubnet>> subnets;
  final pulumi.Input<List<GetNetworkInsightsAnalysisReturnPathComponentTransitGatewayRouteTableRoute>> transitGatewayRouteTableRoutes;
  final pulumi.Input<List<GetNetworkInsightsAnalysisReturnPathComponentTransitGateway>> transitGateways;
  final pulumi.Input<List<GetNetworkInsightsAnalysisReturnPathComponentVpc>> vpcs;

  /// Creates a new [GetNetworkInsightsAnalysisReturnPathComponent].
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
  const GetNetworkInsightsAnalysisReturnPathComponent({
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
      'aclRules': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisReturnPathComponentAclRule>, List<Map<String, dynamic>>>(aclRules, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisReturnPathComponentAclRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'additionalDetails': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisReturnPathComponentAdditionalDetail>, List<Map<String, dynamic>>>(additionalDetails, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisReturnPathComponentAdditionalDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'attachedTos': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisReturnPathComponentAttachedTo>, List<Map<String, dynamic>>>(attachedTos, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisReturnPathComponentAttachedTo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'components': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisReturnPathComponentComponent>, List<Map<String, dynamic>>>(components, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisReturnPathComponentComponent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'destinationVpcs': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisReturnPathComponentDestinationVpc>, List<Map<String, dynamic>>>(destinationVpcs, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisReturnPathComponentDestinationVpc, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inboundHeaders': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisReturnPathComponentInboundHeader>, List<Map<String, dynamic>>>(inboundHeaders, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisReturnPathComponentInboundHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'outboundHeaders': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisReturnPathComponentOutboundHeader>, List<Map<String, dynamic>>>(outboundHeaders, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisReturnPathComponentOutboundHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'routeTableRoutes': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisReturnPathComponentRouteTableRoute>, List<Map<String, dynamic>>>(routeTableRoutes, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisReturnPathComponentRouteTableRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'securityGroupRules': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisReturnPathComponentSecurityGroupRule>, List<Map<String, dynamic>>>(securityGroupRules, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisReturnPathComponentSecurityGroupRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sequenceNumber': sequenceNumber,
      'sourceVpcs': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisReturnPathComponentSourceVpc>, List<Map<String, dynamic>>>(sourceVpcs, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisReturnPathComponentSourceVpc, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subnets': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisReturnPathComponentSubnet>, List<Map<String, dynamic>>>(subnets, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisReturnPathComponentSubnet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'transitGatewayRouteTableRoutes': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisReturnPathComponentTransitGatewayRouteTableRoute>, List<Map<String, dynamic>>>(transitGatewayRouteTableRoutes, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisReturnPathComponentTransitGatewayRouteTableRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'transitGateways': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisReturnPathComponentTransitGateway>, List<Map<String, dynamic>>>(transitGateways, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisReturnPathComponentTransitGateway, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcs': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisReturnPathComponentVpc>, List<Map<String, dynamic>>>(vpcs, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisReturnPathComponentVpc, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetNetworkInsightsAnalysisReturnPathComponent.fromMap(Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisReturnPathComponent(
      aclRules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNetworkInsightsAnalysisReturnPathComponentAclRule>(map['aclRules']!, (value) => GetNetworkInsightsAnalysisReturnPathComponentAclRule.fromMap((value as Map).cast<String, dynamic>()))),
      additionalDetails: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNetworkInsightsAnalysisReturnPathComponentAdditionalDetail>(map['additionalDetails']!, (value) => GetNetworkInsightsAnalysisReturnPathComponentAdditionalDetail.fromMap((value as Map).cast<String, dynamic>()))),
      attachedTos: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNetworkInsightsAnalysisReturnPathComponentAttachedTo>(map['attachedTos']!, (value) => GetNetworkInsightsAnalysisReturnPathComponentAttachedTo.fromMap((value as Map).cast<String, dynamic>()))),
      components: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNetworkInsightsAnalysisReturnPathComponentComponent>(map['components']!, (value) => GetNetworkInsightsAnalysisReturnPathComponentComponent.fromMap((value as Map).cast<String, dynamic>()))),
      destinationVpcs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNetworkInsightsAnalysisReturnPathComponentDestinationVpc>(map['destinationVpcs']!, (value) => GetNetworkInsightsAnalysisReturnPathComponentDestinationVpc.fromMap((value as Map).cast<String, dynamic>()))),
      inboundHeaders: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNetworkInsightsAnalysisReturnPathComponentInboundHeader>(map['inboundHeaders']!, (value) => GetNetworkInsightsAnalysisReturnPathComponentInboundHeader.fromMap((value as Map).cast<String, dynamic>()))),
      outboundHeaders: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNetworkInsightsAnalysisReturnPathComponentOutboundHeader>(map['outboundHeaders']!, (value) => GetNetworkInsightsAnalysisReturnPathComponentOutboundHeader.fromMap((value as Map).cast<String, dynamic>()))),
      routeTableRoutes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNetworkInsightsAnalysisReturnPathComponentRouteTableRoute>(map['routeTableRoutes']!, (value) => GetNetworkInsightsAnalysisReturnPathComponentRouteTableRoute.fromMap((value as Map).cast<String, dynamic>()))),
      securityGroupRules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNetworkInsightsAnalysisReturnPathComponentSecurityGroupRule>(map['securityGroupRules']!, (value) => GetNetworkInsightsAnalysisReturnPathComponentSecurityGroupRule.fromMap((value as Map).cast<String, dynamic>()))),
      sequenceNumber: pulumi.Input.fromValue((map['sequenceNumber'] as num).toInt()),
      sourceVpcs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNetworkInsightsAnalysisReturnPathComponentSourceVpc>(map['sourceVpcs']!, (value) => GetNetworkInsightsAnalysisReturnPathComponentSourceVpc.fromMap((value as Map).cast<String, dynamic>()))),
      subnets: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNetworkInsightsAnalysisReturnPathComponentSubnet>(map['subnets']!, (value) => GetNetworkInsightsAnalysisReturnPathComponentSubnet.fromMap((value as Map).cast<String, dynamic>()))),
      transitGatewayRouteTableRoutes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNetworkInsightsAnalysisReturnPathComponentTransitGatewayRouteTableRoute>(map['transitGatewayRouteTableRoutes']!, (value) => GetNetworkInsightsAnalysisReturnPathComponentTransitGatewayRouteTableRoute.fromMap((value as Map).cast<String, dynamic>()))),
      transitGateways: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNetworkInsightsAnalysisReturnPathComponentTransitGateway>(map['transitGateways']!, (value) => GetNetworkInsightsAnalysisReturnPathComponentTransitGateway.fromMap((value as Map).cast<String, dynamic>()))),
      vpcs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNetworkInsightsAnalysisReturnPathComponentVpc>(map['vpcs']!, (value) => GetNetworkInsightsAnalysisReturnPathComponentVpc.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
