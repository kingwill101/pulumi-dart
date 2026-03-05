// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_insights_analysis_return_path_component_acl_rule.dart';
import 'network_insights_analysis_return_path_component_additional_detail.dart';
import 'network_insights_analysis_return_path_component_attached_to.dart';
import 'network_insights_analysis_return_path_component_component.dart';
import 'network_insights_analysis_return_path_component_destination_vpc.dart';
import 'network_insights_analysis_return_path_component_inbound_header.dart';
import 'network_insights_analysis_return_path_component_outbound_header.dart';
import 'network_insights_analysis_return_path_component_route_table_route.dart';
import 'network_insights_analysis_return_path_component_security_group_rule.dart';
import 'network_insights_analysis_return_path_component_source_vpc.dart';
import 'network_insights_analysis_return_path_component_subnet.dart';
import 'network_insights_analysis_return_path_component_transit_gateway.dart';
import 'network_insights_analysis_return_path_component_transit_gateway_route_table_route.dart';
import 'network_insights_analysis_return_path_component_vpc.dart';

class NetworkInsightsAnalysisReturnPathComponent {
  final pulumi.Input<List<NetworkInsightsAnalysisReturnPathComponentAclRule>>? aclRules;
  final pulumi.Input<List<NetworkInsightsAnalysisReturnPathComponentAdditionalDetail>>? additionalDetails;
  final pulumi.Input<List<NetworkInsightsAnalysisReturnPathComponentAttachedTo>>? attachedTos;
  final pulumi.Input<List<NetworkInsightsAnalysisReturnPathComponentComponent>>? components;
  final pulumi.Input<List<NetworkInsightsAnalysisReturnPathComponentDestinationVpc>>? destinationVpcs;
  final pulumi.Input<List<NetworkInsightsAnalysisReturnPathComponentInboundHeader>>? inboundHeaders;
  final pulumi.Input<List<NetworkInsightsAnalysisReturnPathComponentOutboundHeader>>? outboundHeaders;
  final pulumi.Input<List<NetworkInsightsAnalysisReturnPathComponentRouteTableRoute>>? routeTableRoutes;
  final pulumi.Input<List<NetworkInsightsAnalysisReturnPathComponentSecurityGroupRule>>? securityGroupRules;
  final pulumi.Input<int>? sequenceNumber;
  final pulumi.Input<List<NetworkInsightsAnalysisReturnPathComponentSourceVpc>>? sourceVpcs;
  final pulumi.Input<List<NetworkInsightsAnalysisReturnPathComponentSubnet>>? subnets;
  final pulumi.Input<List<NetworkInsightsAnalysisReturnPathComponentTransitGatewayRouteTableRoute>>? transitGatewayRouteTableRoutes;
  final pulumi.Input<List<NetworkInsightsAnalysisReturnPathComponentTransitGateway>>? transitGateways;
  final pulumi.Input<List<NetworkInsightsAnalysisReturnPathComponentVpc>>? vpcs;

  /// Creates a new [NetworkInsightsAnalysisReturnPathComponent].
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
  NetworkInsightsAnalysisReturnPathComponent({
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
      'aclRules': ?pulumi.Input.mapOptionalInputValue<List<NetworkInsightsAnalysisReturnPathComponentAclRule>, List<Map<String, dynamic>>>(aclRules, (value) => pulumi.Input.encodeList<NetworkInsightsAnalysisReturnPathComponentAclRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'additionalDetails': ?pulumi.Input.mapOptionalInputValue<List<NetworkInsightsAnalysisReturnPathComponentAdditionalDetail>, List<Map<String, dynamic>>>(additionalDetails, (value) => pulumi.Input.encodeList<NetworkInsightsAnalysisReturnPathComponentAdditionalDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'attachedTos': ?pulumi.Input.mapOptionalInputValue<List<NetworkInsightsAnalysisReturnPathComponentAttachedTo>, List<Map<String, dynamic>>>(attachedTos, (value) => pulumi.Input.encodeList<NetworkInsightsAnalysisReturnPathComponentAttachedTo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'components': ?pulumi.Input.mapOptionalInputValue<List<NetworkInsightsAnalysisReturnPathComponentComponent>, List<Map<String, dynamic>>>(components, (value) => pulumi.Input.encodeList<NetworkInsightsAnalysisReturnPathComponentComponent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'destinationVpcs': ?pulumi.Input.mapOptionalInputValue<List<NetworkInsightsAnalysisReturnPathComponentDestinationVpc>, List<Map<String, dynamic>>>(destinationVpcs, (value) => pulumi.Input.encodeList<NetworkInsightsAnalysisReturnPathComponentDestinationVpc, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inboundHeaders': ?pulumi.Input.mapOptionalInputValue<List<NetworkInsightsAnalysisReturnPathComponentInboundHeader>, List<Map<String, dynamic>>>(inboundHeaders, (value) => pulumi.Input.encodeList<NetworkInsightsAnalysisReturnPathComponentInboundHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'outboundHeaders': ?pulumi.Input.mapOptionalInputValue<List<NetworkInsightsAnalysisReturnPathComponentOutboundHeader>, List<Map<String, dynamic>>>(outboundHeaders, (value) => pulumi.Input.encodeList<NetworkInsightsAnalysisReturnPathComponentOutboundHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'routeTableRoutes': ?pulumi.Input.mapOptionalInputValue<List<NetworkInsightsAnalysisReturnPathComponentRouteTableRoute>, List<Map<String, dynamic>>>(routeTableRoutes, (value) => pulumi.Input.encodeList<NetworkInsightsAnalysisReturnPathComponentRouteTableRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'securityGroupRules': ?pulumi.Input.mapOptionalInputValue<List<NetworkInsightsAnalysisReturnPathComponentSecurityGroupRule>, List<Map<String, dynamic>>>(securityGroupRules, (value) => pulumi.Input.encodeList<NetworkInsightsAnalysisReturnPathComponentSecurityGroupRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sequenceNumber': ?sequenceNumber,
      'sourceVpcs': ?pulumi.Input.mapOptionalInputValue<List<NetworkInsightsAnalysisReturnPathComponentSourceVpc>, List<Map<String, dynamic>>>(sourceVpcs, (value) => pulumi.Input.encodeList<NetworkInsightsAnalysisReturnPathComponentSourceVpc, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subnets': ?pulumi.Input.mapOptionalInputValue<List<NetworkInsightsAnalysisReturnPathComponentSubnet>, List<Map<String, dynamic>>>(subnets, (value) => pulumi.Input.encodeList<NetworkInsightsAnalysisReturnPathComponentSubnet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'transitGatewayRouteTableRoutes': ?pulumi.Input.mapOptionalInputValue<List<NetworkInsightsAnalysisReturnPathComponentTransitGatewayRouteTableRoute>, List<Map<String, dynamic>>>(transitGatewayRouteTableRoutes, (value) => pulumi.Input.encodeList<NetworkInsightsAnalysisReturnPathComponentTransitGatewayRouteTableRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'transitGateways': ?pulumi.Input.mapOptionalInputValue<List<NetworkInsightsAnalysisReturnPathComponentTransitGateway>, List<Map<String, dynamic>>>(transitGateways, (value) => pulumi.Input.encodeList<NetworkInsightsAnalysisReturnPathComponentTransitGateway, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcs': ?pulumi.Input.mapOptionalInputValue<List<NetworkInsightsAnalysisReturnPathComponentVpc>, List<Map<String, dynamic>>>(vpcs, (value) => pulumi.Input.encodeList<NetworkInsightsAnalysisReturnPathComponentVpc, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkInsightsAnalysisReturnPathComponent.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsAnalysisReturnPathComponent(
      aclRules: (() { final guardedValue = map['aclRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInsightsAnalysisReturnPathComponentAclRule>(guardedValue, (value) => NetworkInsightsAnalysisReturnPathComponentAclRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      additionalDetails: (() { final guardedValue = map['additionalDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInsightsAnalysisReturnPathComponentAdditionalDetail>(guardedValue, (value) => NetworkInsightsAnalysisReturnPathComponentAdditionalDetail.fromMap((value as Map).cast<String, dynamic>()))); })(),
      attachedTos: (() { final guardedValue = map['attachedTos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInsightsAnalysisReturnPathComponentAttachedTo>(guardedValue, (value) => NetworkInsightsAnalysisReturnPathComponentAttachedTo.fromMap((value as Map).cast<String, dynamic>()))); })(),
      components: (() { final guardedValue = map['components']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInsightsAnalysisReturnPathComponentComponent>(guardedValue, (value) => NetworkInsightsAnalysisReturnPathComponentComponent.fromMap((value as Map).cast<String, dynamic>()))); })(),
      destinationVpcs: (() { final guardedValue = map['destinationVpcs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInsightsAnalysisReturnPathComponentDestinationVpc>(guardedValue, (value) => NetworkInsightsAnalysisReturnPathComponentDestinationVpc.fromMap((value as Map).cast<String, dynamic>()))); })(),
      inboundHeaders: (() { final guardedValue = map['inboundHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInsightsAnalysisReturnPathComponentInboundHeader>(guardedValue, (value) => NetworkInsightsAnalysisReturnPathComponentInboundHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
      outboundHeaders: (() { final guardedValue = map['outboundHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInsightsAnalysisReturnPathComponentOutboundHeader>(guardedValue, (value) => NetworkInsightsAnalysisReturnPathComponentOutboundHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
      routeTableRoutes: (() { final guardedValue = map['routeTableRoutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInsightsAnalysisReturnPathComponentRouteTableRoute>(guardedValue, (value) => NetworkInsightsAnalysisReturnPathComponentRouteTableRoute.fromMap((value as Map).cast<String, dynamic>()))); })(),
      securityGroupRules: (() { final guardedValue = map['securityGroupRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInsightsAnalysisReturnPathComponentSecurityGroupRule>(guardedValue, (value) => NetworkInsightsAnalysisReturnPathComponentSecurityGroupRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sequenceNumber: (() { final guardedValue = map['sequenceNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sourceVpcs: (() { final guardedValue = map['sourceVpcs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInsightsAnalysisReturnPathComponentSourceVpc>(guardedValue, (value) => NetworkInsightsAnalysisReturnPathComponentSourceVpc.fromMap((value as Map).cast<String, dynamic>()))); })(),
      subnets: (() { final guardedValue = map['subnets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInsightsAnalysisReturnPathComponentSubnet>(guardedValue, (value) => NetworkInsightsAnalysisReturnPathComponentSubnet.fromMap((value as Map).cast<String, dynamic>()))); })(),
      transitGatewayRouteTableRoutes: (() { final guardedValue = map['transitGatewayRouteTableRoutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInsightsAnalysisReturnPathComponentTransitGatewayRouteTableRoute>(guardedValue, (value) => NetworkInsightsAnalysisReturnPathComponentTransitGatewayRouteTableRoute.fromMap((value as Map).cast<String, dynamic>()))); })(),
      transitGateways: (() { final guardedValue = map['transitGateways']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInsightsAnalysisReturnPathComponentTransitGateway>(guardedValue, (value) => NetworkInsightsAnalysisReturnPathComponentTransitGateway.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vpcs: (() { final guardedValue = map['vpcs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInsightsAnalysisReturnPathComponentVpc>(guardedValue, (value) => NetworkInsightsAnalysisReturnPathComponentVpc.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

