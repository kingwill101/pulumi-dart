// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_insights_analysis_forward_path_component_acl_rule.dart';
import 'network_insights_analysis_forward_path_component_additional_detail.dart';
import 'network_insights_analysis_forward_path_component_attached_to.dart';
import 'network_insights_analysis_forward_path_component_component.dart';
import 'network_insights_analysis_forward_path_component_destination_vpc.dart';
import 'network_insights_analysis_forward_path_component_inbound_header.dart';
import 'network_insights_analysis_forward_path_component_outbound_header.dart';
import 'network_insights_analysis_forward_path_component_route_table_route.dart';
import 'network_insights_analysis_forward_path_component_security_group_rule.dart';
import 'network_insights_analysis_forward_path_component_source_vpc.dart';
import 'network_insights_analysis_forward_path_component_subnet.dart';
import 'network_insights_analysis_forward_path_component_transit_gateway.dart';
import 'network_insights_analysis_forward_path_component_transit_gateway_route_table_route.dart';
import 'network_insights_analysis_forward_path_component_vpc.dart';

class NetworkInsightsAnalysisForwardPathComponent {
  final pulumi.Input<List<NetworkInsightsAnalysisForwardPathComponentAclRule>>? aclRules;
  final pulumi.Input<List<NetworkInsightsAnalysisForwardPathComponentAdditionalDetail>>? additionalDetails;
  final pulumi.Input<List<NetworkInsightsAnalysisForwardPathComponentAttachedTo>>? attachedTos;
  final pulumi.Input<List<NetworkInsightsAnalysisForwardPathComponentComponent>>? components;
  final pulumi.Input<List<NetworkInsightsAnalysisForwardPathComponentDestinationVpc>>? destinationVpcs;
  final pulumi.Input<List<NetworkInsightsAnalysisForwardPathComponentInboundHeader>>? inboundHeaders;
  final pulumi.Input<List<NetworkInsightsAnalysisForwardPathComponentOutboundHeader>>? outboundHeaders;
  final pulumi.Input<List<NetworkInsightsAnalysisForwardPathComponentRouteTableRoute>>? routeTableRoutes;
  final pulumi.Input<List<NetworkInsightsAnalysisForwardPathComponentSecurityGroupRule>>? securityGroupRules;
  final pulumi.Input<int>? sequenceNumber;
  final pulumi.Input<List<NetworkInsightsAnalysisForwardPathComponentSourceVpc>>? sourceVpcs;
  final pulumi.Input<List<NetworkInsightsAnalysisForwardPathComponentSubnet>>? subnets;
  final pulumi.Input<List<NetworkInsightsAnalysisForwardPathComponentTransitGatewayRouteTableRoute>>? transitGatewayRouteTableRoutes;
  final pulumi.Input<List<NetworkInsightsAnalysisForwardPathComponentTransitGateway>>? transitGateways;
  final pulumi.Input<List<NetworkInsightsAnalysisForwardPathComponentVpc>>? vpcs;

  /// Creates a new [NetworkInsightsAnalysisForwardPathComponent].
  /// [aclRules] Optional.
  /// [additionalDetails] Optional.
  /// [attachedTos] Optional.
  /// [components] Optional.
  /// [destinationVpcs] Optional.
  /// [inboundHeaders] Optional.
  /// [outboundHeaders] Optional.
  /// [routeTableRoutes] Optional.
  /// [securityGroupRules] Optional.
  /// [sequenceNumber] Optional.
  /// [sourceVpcs] Optional.
  /// [subnets] Optional.
  /// [transitGatewayRouteTableRoutes] Optional.
  /// [transitGateways] Optional.
  /// [vpcs] Optional.
  NetworkInsightsAnalysisForwardPathComponent({
    this.aclRules,
    this.additionalDetails,
    this.attachedTos,
    this.components,
    this.destinationVpcs,
    this.inboundHeaders,
    this.outboundHeaders,
    this.routeTableRoutes,
    this.securityGroupRules,
    this.sequenceNumber,
    this.sourceVpcs,
    this.subnets,
    this.transitGatewayRouteTableRoutes,
    this.transitGateways,
    this.vpcs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclRules': ?pulumi.Input.mapOptionalInputValue<List<NetworkInsightsAnalysisForwardPathComponentAclRule>, List<Map<String, dynamic>>>(aclRules, (value) => pulumi.Input.encodeList<NetworkInsightsAnalysisForwardPathComponentAclRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'additionalDetails': ?pulumi.Input.mapOptionalInputValue<List<NetworkInsightsAnalysisForwardPathComponentAdditionalDetail>, List<Map<String, dynamic>>>(additionalDetails, (value) => pulumi.Input.encodeList<NetworkInsightsAnalysisForwardPathComponentAdditionalDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'attachedTos': ?pulumi.Input.mapOptionalInputValue<List<NetworkInsightsAnalysisForwardPathComponentAttachedTo>, List<Map<String, dynamic>>>(attachedTos, (value) => pulumi.Input.encodeList<NetworkInsightsAnalysisForwardPathComponentAttachedTo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'components': ?pulumi.Input.mapOptionalInputValue<List<NetworkInsightsAnalysisForwardPathComponentComponent>, List<Map<String, dynamic>>>(components, (value) => pulumi.Input.encodeList<NetworkInsightsAnalysisForwardPathComponentComponent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'destinationVpcs': ?pulumi.Input.mapOptionalInputValue<List<NetworkInsightsAnalysisForwardPathComponentDestinationVpc>, List<Map<String, dynamic>>>(destinationVpcs, (value) => pulumi.Input.encodeList<NetworkInsightsAnalysisForwardPathComponentDestinationVpc, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inboundHeaders': ?pulumi.Input.mapOptionalInputValue<List<NetworkInsightsAnalysisForwardPathComponentInboundHeader>, List<Map<String, dynamic>>>(inboundHeaders, (value) => pulumi.Input.encodeList<NetworkInsightsAnalysisForwardPathComponentInboundHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'outboundHeaders': ?pulumi.Input.mapOptionalInputValue<List<NetworkInsightsAnalysisForwardPathComponentOutboundHeader>, List<Map<String, dynamic>>>(outboundHeaders, (value) => pulumi.Input.encodeList<NetworkInsightsAnalysisForwardPathComponentOutboundHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'routeTableRoutes': ?pulumi.Input.mapOptionalInputValue<List<NetworkInsightsAnalysisForwardPathComponentRouteTableRoute>, List<Map<String, dynamic>>>(routeTableRoutes, (value) => pulumi.Input.encodeList<NetworkInsightsAnalysisForwardPathComponentRouteTableRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'securityGroupRules': ?pulumi.Input.mapOptionalInputValue<List<NetworkInsightsAnalysisForwardPathComponentSecurityGroupRule>, List<Map<String, dynamic>>>(securityGroupRules, (value) => pulumi.Input.encodeList<NetworkInsightsAnalysisForwardPathComponentSecurityGroupRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sequenceNumber': ?sequenceNumber,
      'sourceVpcs': ?pulumi.Input.mapOptionalInputValue<List<NetworkInsightsAnalysisForwardPathComponentSourceVpc>, List<Map<String, dynamic>>>(sourceVpcs, (value) => pulumi.Input.encodeList<NetworkInsightsAnalysisForwardPathComponentSourceVpc, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subnets': ?pulumi.Input.mapOptionalInputValue<List<NetworkInsightsAnalysisForwardPathComponentSubnet>, List<Map<String, dynamic>>>(subnets, (value) => pulumi.Input.encodeList<NetworkInsightsAnalysisForwardPathComponentSubnet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'transitGatewayRouteTableRoutes': ?pulumi.Input.mapOptionalInputValue<List<NetworkInsightsAnalysisForwardPathComponentTransitGatewayRouteTableRoute>, List<Map<String, dynamic>>>(transitGatewayRouteTableRoutes, (value) => pulumi.Input.encodeList<NetworkInsightsAnalysisForwardPathComponentTransitGatewayRouteTableRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'transitGateways': ?pulumi.Input.mapOptionalInputValue<List<NetworkInsightsAnalysisForwardPathComponentTransitGateway>, List<Map<String, dynamic>>>(transitGateways, (value) => pulumi.Input.encodeList<NetworkInsightsAnalysisForwardPathComponentTransitGateway, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcs': ?pulumi.Input.mapOptionalInputValue<List<NetworkInsightsAnalysisForwardPathComponentVpc>, List<Map<String, dynamic>>>(vpcs, (value) => pulumi.Input.encodeList<NetworkInsightsAnalysisForwardPathComponentVpc, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkInsightsAnalysisForwardPathComponent.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsAnalysisForwardPathComponent(
      aclRules: map['aclRules'] == null ? null : (pulumi.Input.decodeList<NetworkInsightsAnalysisForwardPathComponentAclRule>(map['aclRules'], (value) => NetworkInsightsAnalysisForwardPathComponentAclRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      additionalDetails: map['additionalDetails'] == null ? null : (pulumi.Input.decodeList<NetworkInsightsAnalysisForwardPathComponentAdditionalDetail>(map['additionalDetails'], (value) => NetworkInsightsAnalysisForwardPathComponentAdditionalDetail.fromMap((value as Map).cast<String, dynamic>()))).input(),
      attachedTos: map['attachedTos'] == null ? null : (pulumi.Input.decodeList<NetworkInsightsAnalysisForwardPathComponentAttachedTo>(map['attachedTos'], (value) => NetworkInsightsAnalysisForwardPathComponentAttachedTo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      components: map['components'] == null ? null : (pulumi.Input.decodeList<NetworkInsightsAnalysisForwardPathComponentComponent>(map['components'], (value) => NetworkInsightsAnalysisForwardPathComponentComponent.fromMap((value as Map).cast<String, dynamic>()))).input(),
      destinationVpcs: map['destinationVpcs'] == null ? null : (pulumi.Input.decodeList<NetworkInsightsAnalysisForwardPathComponentDestinationVpc>(map['destinationVpcs'], (value) => NetworkInsightsAnalysisForwardPathComponentDestinationVpc.fromMap((value as Map).cast<String, dynamic>()))).input(),
      inboundHeaders: map['inboundHeaders'] == null ? null : (pulumi.Input.decodeList<NetworkInsightsAnalysisForwardPathComponentInboundHeader>(map['inboundHeaders'], (value) => NetworkInsightsAnalysisForwardPathComponentInboundHeader.fromMap((value as Map).cast<String, dynamic>()))).input(),
      outboundHeaders: map['outboundHeaders'] == null ? null : (pulumi.Input.decodeList<NetworkInsightsAnalysisForwardPathComponentOutboundHeader>(map['outboundHeaders'], (value) => NetworkInsightsAnalysisForwardPathComponentOutboundHeader.fromMap((value as Map).cast<String, dynamic>()))).input(),
      routeTableRoutes: map['routeTableRoutes'] == null ? null : (pulumi.Input.decodeList<NetworkInsightsAnalysisForwardPathComponentRouteTableRoute>(map['routeTableRoutes'], (value) => NetworkInsightsAnalysisForwardPathComponentRouteTableRoute.fromMap((value as Map).cast<String, dynamic>()))).input(),
      securityGroupRules: map['securityGroupRules'] == null ? null : (pulumi.Input.decodeList<NetworkInsightsAnalysisForwardPathComponentSecurityGroupRule>(map['securityGroupRules'], (value) => NetworkInsightsAnalysisForwardPathComponentSecurityGroupRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sequenceNumber: map['sequenceNumber'] == null ? null : (map['sequenceNumber'] as int).input(),
      sourceVpcs: map['sourceVpcs'] == null ? null : (pulumi.Input.decodeList<NetworkInsightsAnalysisForwardPathComponentSourceVpc>(map['sourceVpcs'], (value) => NetworkInsightsAnalysisForwardPathComponentSourceVpc.fromMap((value as Map).cast<String, dynamic>()))).input(),
      subnets: map['subnets'] == null ? null : (pulumi.Input.decodeList<NetworkInsightsAnalysisForwardPathComponentSubnet>(map['subnets'], (value) => NetworkInsightsAnalysisForwardPathComponentSubnet.fromMap((value as Map).cast<String, dynamic>()))).input(),
      transitGatewayRouteTableRoutes: map['transitGatewayRouteTableRoutes'] == null ? null : (pulumi.Input.decodeList<NetworkInsightsAnalysisForwardPathComponentTransitGatewayRouteTableRoute>(map['transitGatewayRouteTableRoutes'], (value) => NetworkInsightsAnalysisForwardPathComponentTransitGatewayRouteTableRoute.fromMap((value as Map).cast<String, dynamic>()))).input(),
      transitGateways: map['transitGateways'] == null ? null : (pulumi.Input.decodeList<NetworkInsightsAnalysisForwardPathComponentTransitGateway>(map['transitGateways'], (value) => NetworkInsightsAnalysisForwardPathComponentTransitGateway.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vpcs: map['vpcs'] == null ? null : (pulumi.Input.decodeList<NetworkInsightsAnalysisForwardPathComponentVpc>(map['vpcs'], (value) => NetworkInsightsAnalysisForwardPathComponentVpc.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

