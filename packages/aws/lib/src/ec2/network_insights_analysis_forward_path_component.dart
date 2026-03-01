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
  final List<NetworkInsightsAnalysisForwardPathComponentAclRule>? aclRules;
  final List<NetworkInsightsAnalysisForwardPathComponentAdditionalDetail>?
  additionalDetails;
  final List<NetworkInsightsAnalysisForwardPathComponentAttachedTo>?
  attachedTos;
  final List<NetworkInsightsAnalysisForwardPathComponentComponent>? components;
  final List<NetworkInsightsAnalysisForwardPathComponentDestinationVpc>?
  destinationVpcs;
  final List<NetworkInsightsAnalysisForwardPathComponentInboundHeader>?
  inboundHeaders;
  final List<NetworkInsightsAnalysisForwardPathComponentOutboundHeader>?
  outboundHeaders;
  final List<NetworkInsightsAnalysisForwardPathComponentRouteTableRoute>?
  routeTableRoutes;
  final List<NetworkInsightsAnalysisForwardPathComponentSecurityGroupRule>?
  securityGroupRules;
  final int? sequenceNumber;
  final List<NetworkInsightsAnalysisForwardPathComponentSourceVpc>? sourceVpcs;
  final List<NetworkInsightsAnalysisForwardPathComponentSubnet>? subnets;
  final List<
    NetworkInsightsAnalysisForwardPathComponentTransitGatewayRouteTableRoute
  >?
  transitGatewayRouteTableRoutes;
  final List<NetworkInsightsAnalysisForwardPathComponentTransitGateway>?
  transitGateways;
  final List<NetworkInsightsAnalysisForwardPathComponentVpc>? vpcs;

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
      'aclRules': ?aclRules == null
          ? null
          : pulumi.Input.encodeList<
              NetworkInsightsAnalysisForwardPathComponentAclRule,
              Map<String, dynamic>
            >(aclRules!, (value) => value.toMap()),
      'additionalDetails': ?additionalDetails == null
          ? null
          : pulumi.Input.encodeList<
              NetworkInsightsAnalysisForwardPathComponentAdditionalDetail,
              Map<String, dynamic>
            >(additionalDetails!, (value) => value.toMap()),
      'attachedTos': ?attachedTos == null
          ? null
          : pulumi.Input.encodeList<
              NetworkInsightsAnalysisForwardPathComponentAttachedTo,
              Map<String, dynamic>
            >(attachedTos!, (value) => value.toMap()),
      'components': ?components == null
          ? null
          : pulumi.Input.encodeList<
              NetworkInsightsAnalysisForwardPathComponentComponent,
              Map<String, dynamic>
            >(components!, (value) => value.toMap()),
      'destinationVpcs': ?destinationVpcs == null
          ? null
          : pulumi.Input.encodeList<
              NetworkInsightsAnalysisForwardPathComponentDestinationVpc,
              Map<String, dynamic>
            >(destinationVpcs!, (value) => value.toMap()),
      'inboundHeaders': ?inboundHeaders == null
          ? null
          : pulumi.Input.encodeList<
              NetworkInsightsAnalysisForwardPathComponentInboundHeader,
              Map<String, dynamic>
            >(inboundHeaders!, (value) => value.toMap()),
      'outboundHeaders': ?outboundHeaders == null
          ? null
          : pulumi.Input.encodeList<
              NetworkInsightsAnalysisForwardPathComponentOutboundHeader,
              Map<String, dynamic>
            >(outboundHeaders!, (value) => value.toMap()),
      'routeTableRoutes': ?routeTableRoutes == null
          ? null
          : pulumi.Input.encodeList<
              NetworkInsightsAnalysisForwardPathComponentRouteTableRoute,
              Map<String, dynamic>
            >(routeTableRoutes!, (value) => value.toMap()),
      'securityGroupRules': ?securityGroupRules == null
          ? null
          : pulumi.Input.encodeList<
              NetworkInsightsAnalysisForwardPathComponentSecurityGroupRule,
              Map<String, dynamic>
            >(securityGroupRules!, (value) => value.toMap()),
      'sequenceNumber': ?sequenceNumber,
      'sourceVpcs': ?sourceVpcs == null
          ? null
          : pulumi.Input.encodeList<
              NetworkInsightsAnalysisForwardPathComponentSourceVpc,
              Map<String, dynamic>
            >(sourceVpcs!, (value) => value.toMap()),
      'subnets': ?subnets == null
          ? null
          : pulumi.Input.encodeList<
              NetworkInsightsAnalysisForwardPathComponentSubnet,
              Map<String, dynamic>
            >(subnets!, (value) => value.toMap()),
      'transitGatewayRouteTableRoutes': ?transitGatewayRouteTableRoutes == null
          ? null
          : pulumi.Input.encodeList<
              NetworkInsightsAnalysisForwardPathComponentTransitGatewayRouteTableRoute,
              Map<String, dynamic>
            >(transitGatewayRouteTableRoutes!, (value) => value.toMap()),
      'transitGateways': ?transitGateways == null
          ? null
          : pulumi.Input.encodeList<
              NetworkInsightsAnalysisForwardPathComponentTransitGateway,
              Map<String, dynamic>
            >(transitGateways!, (value) => value.toMap()),
      'vpcs': ?vpcs == null
          ? null
          : pulumi.Input.encodeList<
              NetworkInsightsAnalysisForwardPathComponentVpc,
              Map<String, dynamic>
            >(vpcs!, (value) => value.toMap()),
    };
  }

  factory NetworkInsightsAnalysisForwardPathComponent.fromMap(
    Map<String, dynamic> map,
  ) {
    return NetworkInsightsAnalysisForwardPathComponent(
      aclRules: map['aclRules'] == null
          ? null
          : pulumi.Input.decodeList<
              NetworkInsightsAnalysisForwardPathComponentAclRule
            >(
              map['aclRules'],
              (value) =>
                  NetworkInsightsAnalysisForwardPathComponentAclRule.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      additionalDetails: map['additionalDetails'] == null
          ? null
          : pulumi.Input.decodeList<
              NetworkInsightsAnalysisForwardPathComponentAdditionalDetail
            >(
              map['additionalDetails'],
              (value) =>
                  NetworkInsightsAnalysisForwardPathComponentAdditionalDetail.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      attachedTos: map['attachedTos'] == null
          ? null
          : pulumi.Input.decodeList<
              NetworkInsightsAnalysisForwardPathComponentAttachedTo
            >(
              map['attachedTos'],
              (value) =>
                  NetworkInsightsAnalysisForwardPathComponentAttachedTo.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      components: map['components'] == null
          ? null
          : pulumi.Input.decodeList<
              NetworkInsightsAnalysisForwardPathComponentComponent
            >(
              map['components'],
              (value) =>
                  NetworkInsightsAnalysisForwardPathComponentComponent.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      destinationVpcs: map['destinationVpcs'] == null
          ? null
          : pulumi.Input.decodeList<
              NetworkInsightsAnalysisForwardPathComponentDestinationVpc
            >(
              map['destinationVpcs'],
              (value) =>
                  NetworkInsightsAnalysisForwardPathComponentDestinationVpc.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      inboundHeaders: map['inboundHeaders'] == null
          ? null
          : pulumi.Input.decodeList<
              NetworkInsightsAnalysisForwardPathComponentInboundHeader
            >(
              map['inboundHeaders'],
              (value) =>
                  NetworkInsightsAnalysisForwardPathComponentInboundHeader.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      outboundHeaders: map['outboundHeaders'] == null
          ? null
          : pulumi.Input.decodeList<
              NetworkInsightsAnalysisForwardPathComponentOutboundHeader
            >(
              map['outboundHeaders'],
              (value) =>
                  NetworkInsightsAnalysisForwardPathComponentOutboundHeader.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      routeTableRoutes: map['routeTableRoutes'] == null
          ? null
          : pulumi.Input.decodeList<
              NetworkInsightsAnalysisForwardPathComponentRouteTableRoute
            >(
              map['routeTableRoutes'],
              (value) =>
                  NetworkInsightsAnalysisForwardPathComponentRouteTableRoute.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      securityGroupRules: map['securityGroupRules'] == null
          ? null
          : pulumi.Input.decodeList<
              NetworkInsightsAnalysisForwardPathComponentSecurityGroupRule
            >(
              map['securityGroupRules'],
              (value) =>
                  NetworkInsightsAnalysisForwardPathComponentSecurityGroupRule.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      sequenceNumber: map['sequenceNumber'] == null
          ? null
          : map['sequenceNumber'] as int,
      sourceVpcs: map['sourceVpcs'] == null
          ? null
          : pulumi.Input.decodeList<
              NetworkInsightsAnalysisForwardPathComponentSourceVpc
            >(
              map['sourceVpcs'],
              (value) =>
                  NetworkInsightsAnalysisForwardPathComponentSourceVpc.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      subnets: map['subnets'] == null
          ? null
          : pulumi.Input.decodeList<
              NetworkInsightsAnalysisForwardPathComponentSubnet
            >(
              map['subnets'],
              (value) =>
                  NetworkInsightsAnalysisForwardPathComponentSubnet.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      transitGatewayRouteTableRoutes:
          map['transitGatewayRouteTableRoutes'] == null
          ? null
          : pulumi.Input.decodeList<
              NetworkInsightsAnalysisForwardPathComponentTransitGatewayRouteTableRoute
            >(
              map['transitGatewayRouteTableRoutes'],
              (value) =>
                  NetworkInsightsAnalysisForwardPathComponentTransitGatewayRouteTableRoute.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      transitGateways: map['transitGateways'] == null
          ? null
          : pulumi.Input.decodeList<
              NetworkInsightsAnalysisForwardPathComponentTransitGateway
            >(
              map['transitGateways'],
              (value) =>
                  NetworkInsightsAnalysisForwardPathComponentTransitGateway.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      vpcs: map['vpcs'] == null
          ? null
          : pulumi.Input.decodeList<
              NetworkInsightsAnalysisForwardPathComponentVpc
            >(
              map['vpcs'],
              (value) => NetworkInsightsAnalysisForwardPathComponentVpc.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
