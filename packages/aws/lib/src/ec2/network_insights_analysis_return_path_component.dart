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
  final List<NetworkInsightsAnalysisReturnPathComponentAclRule>? aclRules;
  final List<NetworkInsightsAnalysisReturnPathComponentAdditionalDetail>?
      additionalDetails;
  final List<NetworkInsightsAnalysisReturnPathComponentAttachedTo>? attachedTos;
  final List<NetworkInsightsAnalysisReturnPathComponentComponent>? components;
  final List<NetworkInsightsAnalysisReturnPathComponentDestinationVpc>?
      destinationVpcs;
  final List<NetworkInsightsAnalysisReturnPathComponentInboundHeader>?
      inboundHeaders;
  final List<NetworkInsightsAnalysisReturnPathComponentOutboundHeader>?
      outboundHeaders;
  final List<NetworkInsightsAnalysisReturnPathComponentRouteTableRoute>?
      routeTableRoutes;
  final List<NetworkInsightsAnalysisReturnPathComponentSecurityGroupRule>?
      securityGroupRules;
  final int? sequenceNumber;
  final List<NetworkInsightsAnalysisReturnPathComponentSourceVpc>? sourceVpcs;
  final List<NetworkInsightsAnalysisReturnPathComponentSubnet>? subnets;
  final List<
          NetworkInsightsAnalysisReturnPathComponentTransitGatewayRouteTableRoute>?
      transitGatewayRouteTableRoutes;
  final List<NetworkInsightsAnalysisReturnPathComponentTransitGateway>?
      transitGateways;
  final List<NetworkInsightsAnalysisReturnPathComponentVpc>? vpcs;

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
    final map = <String, dynamic>{};
    final aclRulesValue = aclRules;
    if (aclRulesValue != null) {
      map['aclRules'] = pulumi.Input.encodeList<
          NetworkInsightsAnalysisReturnPathComponentAclRule,
          Map<String, dynamic>>(aclRulesValue, (value) => value.toMap());
    }
    final additionalDetailsValue = additionalDetails;
    if (additionalDetailsValue != null) {
      map['additionalDetails'] = pulumi.Input.encodeList<
              NetworkInsightsAnalysisReturnPathComponentAdditionalDetail,
              Map<String, dynamic>>(
          additionalDetailsValue, (value) => value.toMap());
    }
    final attachedTosValue = attachedTos;
    if (attachedTosValue != null) {
      map['attachedTos'] = pulumi.Input.encodeList<
          NetworkInsightsAnalysisReturnPathComponentAttachedTo,
          Map<String, dynamic>>(attachedTosValue, (value) => value.toMap());
    }
    final componentsValue = components;
    if (componentsValue != null) {
      map['components'] = pulumi.Input.encodeList<
          NetworkInsightsAnalysisReturnPathComponentComponent,
          Map<String, dynamic>>(componentsValue, (value) => value.toMap());
    }
    final destinationVpcsValue = destinationVpcs;
    if (destinationVpcsValue != null) {
      map['destinationVpcs'] = pulumi.Input.encodeList<
          NetworkInsightsAnalysisReturnPathComponentDestinationVpc,
          Map<String, dynamic>>(destinationVpcsValue, (value) => value.toMap());
    }
    final inboundHeadersValue = inboundHeaders;
    if (inboundHeadersValue != null) {
      map['inboundHeaders'] = pulumi.Input.encodeList<
          NetworkInsightsAnalysisReturnPathComponentInboundHeader,
          Map<String, dynamic>>(inboundHeadersValue, (value) => value.toMap());
    }
    final outboundHeadersValue = outboundHeaders;
    if (outboundHeadersValue != null) {
      map['outboundHeaders'] = pulumi.Input.encodeList<
          NetworkInsightsAnalysisReturnPathComponentOutboundHeader,
          Map<String, dynamic>>(outboundHeadersValue, (value) => value.toMap());
    }
    final routeTableRoutesValue = routeTableRoutes;
    if (routeTableRoutesValue != null) {
      map['routeTableRoutes'] = pulumi.Input.encodeList<
              NetworkInsightsAnalysisReturnPathComponentRouteTableRoute,
              Map<String, dynamic>>(
          routeTableRoutesValue, (value) => value.toMap());
    }
    final securityGroupRulesValue = securityGroupRules;
    if (securityGroupRulesValue != null) {
      map['securityGroupRules'] = pulumi.Input.encodeList<
              NetworkInsightsAnalysisReturnPathComponentSecurityGroupRule,
              Map<String, dynamic>>(
          securityGroupRulesValue, (value) => value.toMap());
    }
    final sequenceNumberValue = sequenceNumber;
    if (sequenceNumberValue != null) {
      map['sequenceNumber'] = sequenceNumberValue;
    }
    final sourceVpcsValue = sourceVpcs;
    if (sourceVpcsValue != null) {
      map['sourceVpcs'] = pulumi.Input.encodeList<
          NetworkInsightsAnalysisReturnPathComponentSourceVpc,
          Map<String, dynamic>>(sourceVpcsValue, (value) => value.toMap());
    }
    final subnetsValue = subnets;
    if (subnetsValue != null) {
      map['subnets'] = pulumi.Input.encodeList<
          NetworkInsightsAnalysisReturnPathComponentSubnet,
          Map<String, dynamic>>(subnetsValue, (value) => value.toMap());
    }
    final transitGatewayRouteTableRoutesValue = transitGatewayRouteTableRoutes;
    if (transitGatewayRouteTableRoutesValue != null) {
      map['transitGatewayRouteTableRoutes'] = pulumi.Input.encodeList<
              NetworkInsightsAnalysisReturnPathComponentTransitGatewayRouteTableRoute,
              Map<String, dynamic>>(
          transitGatewayRouteTableRoutesValue, (value) => value.toMap());
    }
    final transitGatewaysValue = transitGateways;
    if (transitGatewaysValue != null) {
      map['transitGateways'] = pulumi.Input.encodeList<
          NetworkInsightsAnalysisReturnPathComponentTransitGateway,
          Map<String, dynamic>>(transitGatewaysValue, (value) => value.toMap());
    }
    final vpcsValue = vpcs;
    if (vpcsValue != null) {
      map['vpcs'] = pulumi.Input.encodeList<
          NetworkInsightsAnalysisReturnPathComponentVpc,
          Map<String, dynamic>>(vpcsValue, (value) => value.toMap());
    }
    return map;
  }

  factory NetworkInsightsAnalysisReturnPathComponent.fromMap(
      Map<String, dynamic> map) {
    return NetworkInsightsAnalysisReturnPathComponent(
      aclRules: map['aclRules'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisReturnPathComponentAclRule>(
              map['aclRules'],
              (value) =>
                  NetworkInsightsAnalysisReturnPathComponentAclRule.fromMap(
                      (value as Map).cast<String, dynamic>())),
      additionalDetails: map['additionalDetails'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisReturnPathComponentAdditionalDetail>(
              map['additionalDetails'],
              (value) =>
                  NetworkInsightsAnalysisReturnPathComponentAdditionalDetail
                      .fromMap((value as Map).cast<String, dynamic>())),
      attachedTos: map['attachedTos'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisReturnPathComponentAttachedTo>(
              map['attachedTos'],
              (value) =>
                  NetworkInsightsAnalysisReturnPathComponentAttachedTo.fromMap(
                      (value as Map).cast<String, dynamic>())),
      components: map['components'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisReturnPathComponentComponent>(
              map['components'],
              (value) =>
                  NetworkInsightsAnalysisReturnPathComponentComponent.fromMap(
                      (value as Map).cast<String, dynamic>())),
      destinationVpcs: map['destinationVpcs'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisReturnPathComponentDestinationVpc>(
              map['destinationVpcs'],
              (value) =>
                  NetworkInsightsAnalysisReturnPathComponentDestinationVpc
                      .fromMap((value as Map).cast<String, dynamic>())),
      inboundHeaders: map['inboundHeaders'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisReturnPathComponentInboundHeader>(
              map['inboundHeaders'],
              (value) => NetworkInsightsAnalysisReturnPathComponentInboundHeader
                  .fromMap((value as Map).cast<String, dynamic>())),
      outboundHeaders: map['outboundHeaders'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisReturnPathComponentOutboundHeader>(
              map['outboundHeaders'],
              (value) =>
                  NetworkInsightsAnalysisReturnPathComponentOutboundHeader
                      .fromMap((value as Map).cast<String, dynamic>())),
      routeTableRoutes: map['routeTableRoutes'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisReturnPathComponentRouteTableRoute>(
              map['routeTableRoutes'],
              (value) =>
                  NetworkInsightsAnalysisReturnPathComponentRouteTableRoute
                      .fromMap((value as Map).cast<String, dynamic>())),
      securityGroupRules: map['securityGroupRules'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisReturnPathComponentSecurityGroupRule>(
              map['securityGroupRules'],
              (value) =>
                  NetworkInsightsAnalysisReturnPathComponentSecurityGroupRule
                      .fromMap((value as Map).cast<String, dynamic>())),
      sequenceNumber:
          map['sequenceNumber'] == null ? null : map['sequenceNumber'] as int,
      sourceVpcs: map['sourceVpcs'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisReturnPathComponentSourceVpc>(
              map['sourceVpcs'],
              (value) =>
                  NetworkInsightsAnalysisReturnPathComponentSourceVpc.fromMap(
                      (value as Map).cast<String, dynamic>())),
      subnets: map['subnets'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisReturnPathComponentSubnet>(
              map['subnets'],
              (value) =>
                  NetworkInsightsAnalysisReturnPathComponentSubnet.fromMap(
                      (value as Map).cast<String, dynamic>())),
      transitGatewayRouteTableRoutes: map['transitGatewayRouteTableRoutes'] ==
              null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisReturnPathComponentTransitGatewayRouteTableRoute>(
              map['transitGatewayRouteTableRoutes'],
              (value) =>
                  NetworkInsightsAnalysisReturnPathComponentTransitGatewayRouteTableRoute
                      .fromMap((value as Map).cast<String, dynamic>())),
      transitGateways: map['transitGateways'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisReturnPathComponentTransitGateway>(
              map['transitGateways'],
              (value) =>
                  NetworkInsightsAnalysisReturnPathComponentTransitGateway
                      .fromMap((value as Map).cast<String, dynamic>())),
      vpcs: map['vpcs'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisReturnPathComponentVpc>(
              map['vpcs'],
              (value) => NetworkInsightsAnalysisReturnPathComponentVpc.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
