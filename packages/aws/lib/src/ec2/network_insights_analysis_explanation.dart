// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_insights_analysis_explanation_acl.dart';
import 'network_insights_analysis_explanation_acl_rule.dart';
import 'network_insights_analysis_explanation_attached_to.dart';
import 'network_insights_analysis_explanation_classic_load_balancer_listener.dart';
import 'network_insights_analysis_explanation_component.dart';
import 'network_insights_analysis_explanation_customer_gateway.dart';
import 'network_insights_analysis_explanation_destination.dart';
import 'network_insights_analysis_explanation_destination_vpc.dart';
import 'network_insights_analysis_explanation_elastic_load_balancer_listener.dart';
import 'network_insights_analysis_explanation_ingress_route_table.dart';
import 'network_insights_analysis_explanation_internet_gateway.dart';
import 'network_insights_analysis_explanation_load_balancer_target_group.dart';
import 'network_insights_analysis_explanation_nat_gateway.dart';
import 'network_insights_analysis_explanation_network_interface.dart';
import 'network_insights_analysis_explanation_port_range.dart';
import 'network_insights_analysis_explanation_prefix_list.dart';
import 'network_insights_analysis_explanation_route_table.dart';
import 'network_insights_analysis_explanation_route_table_route.dart';
import 'network_insights_analysis_explanation_security_group.dart';
import 'network_insights_analysis_explanation_security_group_rule.dart';
import 'network_insights_analysis_explanation_source_vpc.dart';
import 'network_insights_analysis_explanation_subnet.dart';
import 'network_insights_analysis_explanation_subnet_route_table.dart';
import 'network_insights_analysis_explanation_transit_gateway.dart';
import 'network_insights_analysis_explanation_transit_gateway_attachment.dart';
import 'network_insights_analysis_explanation_transit_gateway_route_table.dart';
import 'network_insights_analysis_explanation_transit_gateway_route_table_route.dart';
import 'network_insights_analysis_explanation_vpc.dart';
import 'network_insights_analysis_explanation_vpc_endpoint.dart';
import 'network_insights_analysis_explanation_vpc_peering_connection.dart';
import 'network_insights_analysis_explanation_vpn_connection.dart';
import 'network_insights_analysis_explanation_vpn_gateway.dart';

class NetworkInsightsAnalysisExplanation {
  final List<NetworkInsightsAnalysisExplanationAclRule>? aclRules;
  final List<NetworkInsightsAnalysisExplanationAcl>? acls;
  final String? address;
  final List<String>? addresses;
  final List<NetworkInsightsAnalysisExplanationAttachedTo>? attachedTos;
  final List<String>? availabilityZones;
  final List<String>? cidrs;
  final List<NetworkInsightsAnalysisExplanationClassicLoadBalancerListener>?
      classicLoadBalancerListeners;
  final List<NetworkInsightsAnalysisExplanationComponent>? components;
  final List<NetworkInsightsAnalysisExplanationCustomerGateway>?
      customerGateways;
  final List<NetworkInsightsAnalysisExplanationDestinationVpc>? destinationVpcs;
  final List<NetworkInsightsAnalysisExplanationDestination>? destinations;
  final String? direction;
  final List<NetworkInsightsAnalysisExplanationElasticLoadBalancerListener>?
      elasticLoadBalancerListeners;
  final String? explanationCode;
  final List<NetworkInsightsAnalysisExplanationIngressRouteTable>?
      ingressRouteTables;
  final List<NetworkInsightsAnalysisExplanationInternetGateway>?
      internetGateways;
  final String? loadBalancerArn;
  final int? loadBalancerListenerPort;
  final List<NetworkInsightsAnalysisExplanationLoadBalancerTargetGroup>?
      loadBalancerTargetGroup;
  final List<NetworkInsightsAnalysisExplanationLoadBalancerTargetGroup>?
      loadBalancerTargetGroups;
  final int? loadBalancerTargetPort;
  final String? missingComponent;
  final List<NetworkInsightsAnalysisExplanationNatGateway>? natGateways;
  final List<NetworkInsightsAnalysisExplanationNetworkInterface>?
      networkInterfaces;
  final String? packetField;
  final int? port;
  final List<NetworkInsightsAnalysisExplanationPortRange>? portRanges;
  final List<NetworkInsightsAnalysisExplanationPrefixList>? prefixLists;
  final List<String>? protocols;
  final List<NetworkInsightsAnalysisExplanationRouteTableRoute>?
      routeTableRoutes;
  final List<NetworkInsightsAnalysisExplanationRouteTable>? routeTables;
  final List<NetworkInsightsAnalysisExplanationSecurityGroup>? securityGroup;
  final List<NetworkInsightsAnalysisExplanationSecurityGroupRule>?
      securityGroupRules;
  final List<NetworkInsightsAnalysisExplanationSecurityGroup>? securityGroups;
  final List<NetworkInsightsAnalysisExplanationSourceVpc>? sourceVpcs;
  final String? state;
  final List<NetworkInsightsAnalysisExplanationSubnetRouteTable>?
      subnetRouteTables;
  final List<NetworkInsightsAnalysisExplanationSubnet>? subnets;
  final List<NetworkInsightsAnalysisExplanationTransitGatewayAttachment>?
      transitGatewayAttachments;
  final List<NetworkInsightsAnalysisExplanationTransitGatewayRouteTableRoute>?
      transitGatewayRouteTableRoutes;
  final List<NetworkInsightsAnalysisExplanationTransitGatewayRouteTable>?
      transitGatewayRouteTables;
  final List<NetworkInsightsAnalysisExplanationTransitGateway>? transitGateways;
  final List<NetworkInsightsAnalysisExplanationVpcEndpoint>? vpcEndpoints;
  final List<NetworkInsightsAnalysisExplanationVpcPeeringConnection>?
      vpcPeeringConnections;
  final List<NetworkInsightsAnalysisExplanationVpc>? vpcs;
  final List<NetworkInsightsAnalysisExplanationVpnConnection>? vpnConnections;
  final List<NetworkInsightsAnalysisExplanationVpnGateway>? vpnGateways;

  /// Creates a new [NetworkInsightsAnalysisExplanation].
  /// [aclRules] Optional.
  /// [acls] Optional.
  /// [address] Optional.
  /// [addresses] Optional.
  /// [attachedTos] Optional.
  /// [availabilityZones] Optional.
  /// [cidrs] Optional.
  /// [classicLoadBalancerListeners] Optional.
  /// [components] Optional.
  /// [customerGateways] Optional.
  /// [destinationVpcs] Optional.
  /// [destinations] Optional.
  /// [direction] Optional.
  /// [elasticLoadBalancerListeners] Optional.
  /// [explanationCode] Optional.
  /// [ingressRouteTables] Optional.
  /// [internetGateways] Optional.
  /// [loadBalancerArn] Optional.
  /// [loadBalancerListenerPort] Optional.
  /// [loadBalancerTargetGroup] Optional.
  /// [loadBalancerTargetGroups] Optional.
  /// [loadBalancerTargetPort] Optional.
  /// [missingComponent] Optional.
  /// [natGateways] Optional.
  /// [networkInterfaces] Optional.
  /// [packetField] Optional.
  /// [port] Optional.
  /// [portRanges] Optional.
  /// [prefixLists] Optional.
  /// [protocols] Optional.
  /// [routeTableRoutes] Optional.
  /// [routeTables] Optional.
  /// [securityGroup] Optional.
  /// [securityGroupRules] Optional.
  /// [securityGroups] Optional.
  /// [sourceVpcs] Optional.
  /// [state] Optional.
  /// [subnetRouteTables] Optional.
  /// [subnets] Optional.
  /// [transitGatewayAttachments] Optional.
  /// [transitGatewayRouteTableRoutes] Optional.
  /// [transitGatewayRouteTables] Optional.
  /// [transitGateways] Optional.
  /// [vpcEndpoints] Optional.
  /// [vpcPeeringConnections] Optional.
  /// [vpcs] Optional.
  /// [vpnConnections] Optional.
  /// [vpnGateways] Optional.
  NetworkInsightsAnalysisExplanation({
    this.aclRules,
    this.acls,
    this.address,
    this.addresses,
    this.attachedTos,
    this.availabilityZones,
    this.cidrs,
    this.classicLoadBalancerListeners,
    this.components,
    this.customerGateways,
    this.destinationVpcs,
    this.destinations,
    this.direction,
    this.elasticLoadBalancerListeners,
    this.explanationCode,
    this.ingressRouteTables,
    this.internetGateways,
    this.loadBalancerArn,
    this.loadBalancerListenerPort,
    this.loadBalancerTargetGroup,
    this.loadBalancerTargetGroups,
    this.loadBalancerTargetPort,
    this.missingComponent,
    this.natGateways,
    this.networkInterfaces,
    this.packetField,
    this.port,
    this.portRanges,
    this.prefixLists,
    this.protocols,
    this.routeTableRoutes,
    this.routeTables,
    this.securityGroup,
    this.securityGroupRules,
    this.securityGroups,
    this.sourceVpcs,
    this.state,
    this.subnetRouteTables,
    this.subnets,
    this.transitGatewayAttachments,
    this.transitGatewayRouteTableRoutes,
    this.transitGatewayRouteTables,
    this.transitGateways,
    this.vpcEndpoints,
    this.vpcPeeringConnections,
    this.vpcs,
    this.vpnConnections,
    this.vpnGateways,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aclRulesValue = aclRules;
    if (aclRulesValue != null) {
      map['aclRules'] = pulumi.Input.encodeList<
          NetworkInsightsAnalysisExplanationAclRule,
          Map<String, dynamic>>(aclRulesValue, (value) => value.toMap());
    }
    final aclsValue = acls;
    if (aclsValue != null) {
      map['acls'] = pulumi.Input.encodeList<
          NetworkInsightsAnalysisExplanationAcl,
          Map<String, dynamic>>(aclsValue, (value) => value.toMap());
    }
    final addressValue = address;
    if (addressValue != null) {
      map['address'] = addressValue;
    }
    final addressesValue = addresses;
    if (addressesValue != null) {
      map['addresses'] = addressesValue;
    }
    final attachedTosValue = attachedTos;
    if (attachedTosValue != null) {
      map['attachedTos'] = pulumi.Input.encodeList<
          NetworkInsightsAnalysisExplanationAttachedTo,
          Map<String, dynamic>>(attachedTosValue, (value) => value.toMap());
    }
    final availabilityZonesValue = availabilityZones;
    if (availabilityZonesValue != null) {
      map['availabilityZones'] = availabilityZonesValue;
    }
    final cidrsValue = cidrs;
    if (cidrsValue != null) {
      map['cidrs'] = cidrsValue;
    }
    final classicLoadBalancerListenersValue = classicLoadBalancerListeners;
    if (classicLoadBalancerListenersValue != null) {
      map['classicLoadBalancerListeners'] = pulumi.Input.encodeList<
              NetworkInsightsAnalysisExplanationClassicLoadBalancerListener,
              Map<String, dynamic>>(
          classicLoadBalancerListenersValue, (value) => value.toMap());
    }
    final componentsValue = components;
    if (componentsValue != null) {
      map['components'] = pulumi.Input.encodeList<
          NetworkInsightsAnalysisExplanationComponent,
          Map<String, dynamic>>(componentsValue, (value) => value.toMap());
    }
    final customerGatewaysValue = customerGateways;
    if (customerGatewaysValue != null) {
      map['customerGateways'] = pulumi.Input.encodeList<
              NetworkInsightsAnalysisExplanationCustomerGateway,
              Map<String, dynamic>>(
          customerGatewaysValue, (value) => value.toMap());
    }
    final destinationVpcsValue = destinationVpcs;
    if (destinationVpcsValue != null) {
      map['destinationVpcs'] = pulumi.Input.encodeList<
          NetworkInsightsAnalysisExplanationDestinationVpc,
          Map<String, dynamic>>(destinationVpcsValue, (value) => value.toMap());
    }
    final destinationsValue = destinations;
    if (destinationsValue != null) {
      map['destinations'] = pulumi.Input.encodeList<
          NetworkInsightsAnalysisExplanationDestination,
          Map<String, dynamic>>(destinationsValue, (value) => value.toMap());
    }
    final directionValue = direction;
    if (directionValue != null) {
      map['direction'] = directionValue;
    }
    final elasticLoadBalancerListenersValue = elasticLoadBalancerListeners;
    if (elasticLoadBalancerListenersValue != null) {
      map['elasticLoadBalancerListeners'] = pulumi.Input.encodeList<
              NetworkInsightsAnalysisExplanationElasticLoadBalancerListener,
              Map<String, dynamic>>(
          elasticLoadBalancerListenersValue, (value) => value.toMap());
    }
    final explanationCodeValue = explanationCode;
    if (explanationCodeValue != null) {
      map['explanationCode'] = explanationCodeValue;
    }
    final ingressRouteTablesValue = ingressRouteTables;
    if (ingressRouteTablesValue != null) {
      map['ingressRouteTables'] = pulumi.Input.encodeList<
              NetworkInsightsAnalysisExplanationIngressRouteTable,
              Map<String, dynamic>>(
          ingressRouteTablesValue, (value) => value.toMap());
    }
    final internetGatewaysValue = internetGateways;
    if (internetGatewaysValue != null) {
      map['internetGateways'] = pulumi.Input.encodeList<
              NetworkInsightsAnalysisExplanationInternetGateway,
              Map<String, dynamic>>(
          internetGatewaysValue, (value) => value.toMap());
    }
    final loadBalancerArnValue = loadBalancerArn;
    if (loadBalancerArnValue != null) {
      map['loadBalancerArn'] = loadBalancerArnValue;
    }
    final loadBalancerListenerPortValue = loadBalancerListenerPort;
    if (loadBalancerListenerPortValue != null) {
      map['loadBalancerListenerPort'] = loadBalancerListenerPortValue;
    }
    final loadBalancerTargetGroupValue = loadBalancerTargetGroup;
    if (loadBalancerTargetGroupValue != null) {
      map['loadBalancerTargetGroup'] = pulumi.Input.encodeList<
              NetworkInsightsAnalysisExplanationLoadBalancerTargetGroup,
              Map<String, dynamic>>(
          loadBalancerTargetGroupValue, (value) => value.toMap());
    }
    final loadBalancerTargetGroupsValue = loadBalancerTargetGroups;
    if (loadBalancerTargetGroupsValue != null) {
      map['loadBalancerTargetGroups'] = pulumi.Input.encodeList<
              NetworkInsightsAnalysisExplanationLoadBalancerTargetGroup,
              Map<String, dynamic>>(
          loadBalancerTargetGroupsValue, (value) => value.toMap());
    }
    final loadBalancerTargetPortValue = loadBalancerTargetPort;
    if (loadBalancerTargetPortValue != null) {
      map['loadBalancerTargetPort'] = loadBalancerTargetPortValue;
    }
    final missingComponentValue = missingComponent;
    if (missingComponentValue != null) {
      map['missingComponent'] = missingComponentValue;
    }
    final natGatewaysValue = natGateways;
    if (natGatewaysValue != null) {
      map['natGateways'] = pulumi.Input.encodeList<
          NetworkInsightsAnalysisExplanationNatGateway,
          Map<String, dynamic>>(natGatewaysValue, (value) => value.toMap());
    }
    final networkInterfacesValue = networkInterfaces;
    if (networkInterfacesValue != null) {
      map['networkInterfaces'] = pulumi.Input.encodeList<
              NetworkInsightsAnalysisExplanationNetworkInterface,
              Map<String, dynamic>>(
          networkInterfacesValue, (value) => value.toMap());
    }
    final packetFieldValue = packetField;
    if (packetFieldValue != null) {
      map['packetField'] = packetFieldValue;
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    final portRangesValue = portRanges;
    if (portRangesValue != null) {
      map['portRanges'] = pulumi.Input.encodeList<
          NetworkInsightsAnalysisExplanationPortRange,
          Map<String, dynamic>>(portRangesValue, (value) => value.toMap());
    }
    final prefixListsValue = prefixLists;
    if (prefixListsValue != null) {
      map['prefixLists'] = pulumi.Input.encodeList<
          NetworkInsightsAnalysisExplanationPrefixList,
          Map<String, dynamic>>(prefixListsValue, (value) => value.toMap());
    }
    final protocolsValue = protocols;
    if (protocolsValue != null) {
      map['protocols'] = protocolsValue;
    }
    final routeTableRoutesValue = routeTableRoutes;
    if (routeTableRoutesValue != null) {
      map['routeTableRoutes'] = pulumi.Input.encodeList<
              NetworkInsightsAnalysisExplanationRouteTableRoute,
              Map<String, dynamic>>(
          routeTableRoutesValue, (value) => value.toMap());
    }
    final routeTablesValue = routeTables;
    if (routeTablesValue != null) {
      map['routeTables'] = pulumi.Input.encodeList<
          NetworkInsightsAnalysisExplanationRouteTable,
          Map<String, dynamic>>(routeTablesValue, (value) => value.toMap());
    }
    final securityGroupValue = securityGroup;
    if (securityGroupValue != null) {
      map['securityGroup'] = pulumi.Input.encodeList<
          NetworkInsightsAnalysisExplanationSecurityGroup,
          Map<String, dynamic>>(securityGroupValue, (value) => value.toMap());
    }
    final securityGroupRulesValue = securityGroupRules;
    if (securityGroupRulesValue != null) {
      map['securityGroupRules'] = pulumi.Input.encodeList<
              NetworkInsightsAnalysisExplanationSecurityGroupRule,
              Map<String, dynamic>>(
          securityGroupRulesValue, (value) => value.toMap());
    }
    final securityGroupsValue = securityGroups;
    if (securityGroupsValue != null) {
      map['securityGroups'] = pulumi.Input.encodeList<
          NetworkInsightsAnalysisExplanationSecurityGroup,
          Map<String, dynamic>>(securityGroupsValue, (value) => value.toMap());
    }
    final sourceVpcsValue = sourceVpcs;
    if (sourceVpcsValue != null) {
      map['sourceVpcs'] = pulumi.Input.encodeList<
          NetworkInsightsAnalysisExplanationSourceVpc,
          Map<String, dynamic>>(sourceVpcsValue, (value) => value.toMap());
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    final subnetRouteTablesValue = subnetRouteTables;
    if (subnetRouteTablesValue != null) {
      map['subnetRouteTables'] = pulumi.Input.encodeList<
              NetworkInsightsAnalysisExplanationSubnetRouteTable,
              Map<String, dynamic>>(
          subnetRouteTablesValue, (value) => value.toMap());
    }
    final subnetsValue = subnets;
    if (subnetsValue != null) {
      map['subnets'] = pulumi.Input.encodeList<
          NetworkInsightsAnalysisExplanationSubnet,
          Map<String, dynamic>>(subnetsValue, (value) => value.toMap());
    }
    final transitGatewayAttachmentsValue = transitGatewayAttachments;
    if (transitGatewayAttachmentsValue != null) {
      map['transitGatewayAttachments'] = pulumi.Input.encodeList<
              NetworkInsightsAnalysisExplanationTransitGatewayAttachment,
              Map<String, dynamic>>(
          transitGatewayAttachmentsValue, (value) => value.toMap());
    }
    final transitGatewayRouteTableRoutesValue = transitGatewayRouteTableRoutes;
    if (transitGatewayRouteTableRoutesValue != null) {
      map['transitGatewayRouteTableRoutes'] = pulumi.Input.encodeList<
              NetworkInsightsAnalysisExplanationTransitGatewayRouteTableRoute,
              Map<String, dynamic>>(
          transitGatewayRouteTableRoutesValue, (value) => value.toMap());
    }
    final transitGatewayRouteTablesValue = transitGatewayRouteTables;
    if (transitGatewayRouteTablesValue != null) {
      map['transitGatewayRouteTables'] = pulumi.Input.encodeList<
              NetworkInsightsAnalysisExplanationTransitGatewayRouteTable,
              Map<String, dynamic>>(
          transitGatewayRouteTablesValue, (value) => value.toMap());
    }
    final transitGatewaysValue = transitGateways;
    if (transitGatewaysValue != null) {
      map['transitGateways'] = pulumi.Input.encodeList<
          NetworkInsightsAnalysisExplanationTransitGateway,
          Map<String, dynamic>>(transitGatewaysValue, (value) => value.toMap());
    }
    final vpcEndpointsValue = vpcEndpoints;
    if (vpcEndpointsValue != null) {
      map['vpcEndpoints'] = pulumi.Input.encodeList<
          NetworkInsightsAnalysisExplanationVpcEndpoint,
          Map<String, dynamic>>(vpcEndpointsValue, (value) => value.toMap());
    }
    final vpcPeeringConnectionsValue = vpcPeeringConnections;
    if (vpcPeeringConnectionsValue != null) {
      map['vpcPeeringConnections'] = pulumi.Input.encodeList<
              NetworkInsightsAnalysisExplanationVpcPeeringConnection,
              Map<String, dynamic>>(
          vpcPeeringConnectionsValue, (value) => value.toMap());
    }
    final vpcsValue = vpcs;
    if (vpcsValue != null) {
      map['vpcs'] = pulumi.Input.encodeList<
          NetworkInsightsAnalysisExplanationVpc,
          Map<String, dynamic>>(vpcsValue, (value) => value.toMap());
    }
    final vpnConnectionsValue = vpnConnections;
    if (vpnConnectionsValue != null) {
      map['vpnConnections'] = pulumi.Input.encodeList<
          NetworkInsightsAnalysisExplanationVpnConnection,
          Map<String, dynamic>>(vpnConnectionsValue, (value) => value.toMap());
    }
    final vpnGatewaysValue = vpnGateways;
    if (vpnGatewaysValue != null) {
      map['vpnGateways'] = pulumi.Input.encodeList<
          NetworkInsightsAnalysisExplanationVpnGateway,
          Map<String, dynamic>>(vpnGatewaysValue, (value) => value.toMap());
    }
    return map;
  }

  factory NetworkInsightsAnalysisExplanation.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsAnalysisExplanation(
      aclRules: map['aclRules'] == null
          ? null
          : pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationAclRule>(
              map['aclRules'],
              (value) => NetworkInsightsAnalysisExplanationAclRule.fromMap(
                  (value as Map).cast<String, dynamic>())),
      acls: map['acls'] == null
          ? null
          : pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationAcl>(
              map['acls'],
              (value) => NetworkInsightsAnalysisExplanationAcl.fromMap(
                  (value as Map).cast<String, dynamic>())),
      address: map['address'] == null ? null : map['address'] as String,
      addresses: map['addresses'] == null
          ? null
          : (map['addresses'] as List).cast<String>(),
      attachedTos: map['attachedTos'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisExplanationAttachedTo>(
              map['attachedTos'],
              (value) => NetworkInsightsAnalysisExplanationAttachedTo.fromMap(
                  (value as Map).cast<String, dynamic>())),
      availabilityZones: map['availabilityZones'] == null
          ? null
          : (map['availabilityZones'] as List).cast<String>(),
      cidrs:
          map['cidrs'] == null ? null : (map['cidrs'] as List).cast<String>(),
      classicLoadBalancerListeners: map['classicLoadBalancerListeners'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisExplanationClassicLoadBalancerListener>(
              map['classicLoadBalancerListeners'],
              (value) =>
                  NetworkInsightsAnalysisExplanationClassicLoadBalancerListener
                      .fromMap((value as Map).cast<String, dynamic>())),
      components: map['components'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisExplanationComponent>(
              map['components'],
              (value) => NetworkInsightsAnalysisExplanationComponent.fromMap(
                  (value as Map).cast<String, dynamic>())),
      customerGateways: map['customerGateways'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisExplanationCustomerGateway>(
              map['customerGateways'],
              (value) =>
                  NetworkInsightsAnalysisExplanationCustomerGateway.fromMap(
                      (value as Map).cast<String, dynamic>())),
      destinationVpcs: map['destinationVpcs'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisExplanationDestinationVpc>(
              map['destinationVpcs'],
              (value) =>
                  NetworkInsightsAnalysisExplanationDestinationVpc.fromMap(
                      (value as Map).cast<String, dynamic>())),
      destinations: map['destinations'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisExplanationDestination>(
              map['destinations'],
              (value) => NetworkInsightsAnalysisExplanationDestination.fromMap(
                  (value as Map).cast<String, dynamic>())),
      direction: map['direction'] == null ? null : map['direction'] as String,
      elasticLoadBalancerListeners: map['elasticLoadBalancerListeners'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisExplanationElasticLoadBalancerListener>(
              map['elasticLoadBalancerListeners'],
              (value) =>
                  NetworkInsightsAnalysisExplanationElasticLoadBalancerListener
                      .fromMap((value as Map).cast<String, dynamic>())),
      explanationCode: map['explanationCode'] == null
          ? null
          : map['explanationCode'] as String,
      ingressRouteTables: map['ingressRouteTables'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisExplanationIngressRouteTable>(
              map['ingressRouteTables'],
              (value) =>
                  NetworkInsightsAnalysisExplanationIngressRouteTable.fromMap(
                      (value as Map).cast<String, dynamic>())),
      internetGateways: map['internetGateways'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisExplanationInternetGateway>(
              map['internetGateways'],
              (value) =>
                  NetworkInsightsAnalysisExplanationInternetGateway.fromMap(
                      (value as Map).cast<String, dynamic>())),
      loadBalancerArn: map['loadBalancerArn'] == null
          ? null
          : map['loadBalancerArn'] as String,
      loadBalancerListenerPort: map['loadBalancerListenerPort'] == null
          ? null
          : map['loadBalancerListenerPort'] as int,
      loadBalancerTargetGroup: map['loadBalancerTargetGroup'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisExplanationLoadBalancerTargetGroup>(
              map['loadBalancerTargetGroup'],
              (value) =>
                  NetworkInsightsAnalysisExplanationLoadBalancerTargetGroup
                      .fromMap((value as Map).cast<String, dynamic>())),
      loadBalancerTargetGroups: map['loadBalancerTargetGroups'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisExplanationLoadBalancerTargetGroup>(
              map['loadBalancerTargetGroups'],
              (value) =>
                  NetworkInsightsAnalysisExplanationLoadBalancerTargetGroup
                      .fromMap((value as Map).cast<String, dynamic>())),
      loadBalancerTargetPort: map['loadBalancerTargetPort'] == null
          ? null
          : map['loadBalancerTargetPort'] as int,
      missingComponent: map['missingComponent'] == null
          ? null
          : map['missingComponent'] as String,
      natGateways: map['natGateways'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisExplanationNatGateway>(
              map['natGateways'],
              (value) => NetworkInsightsAnalysisExplanationNatGateway.fromMap(
                  (value as Map).cast<String, dynamic>())),
      networkInterfaces: map['networkInterfaces'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisExplanationNetworkInterface>(
              map['networkInterfaces'],
              (value) =>
                  NetworkInsightsAnalysisExplanationNetworkInterface.fromMap(
                      (value as Map).cast<String, dynamic>())),
      packetField:
          map['packetField'] == null ? null : map['packetField'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      portRanges: map['portRanges'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisExplanationPortRange>(
              map['portRanges'],
              (value) => NetworkInsightsAnalysisExplanationPortRange.fromMap(
                  (value as Map).cast<String, dynamic>())),
      prefixLists: map['prefixLists'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisExplanationPrefixList>(
              map['prefixLists'],
              (value) => NetworkInsightsAnalysisExplanationPrefixList.fromMap(
                  (value as Map).cast<String, dynamic>())),
      protocols: map['protocols'] == null
          ? null
          : (map['protocols'] as List).cast<String>(),
      routeTableRoutes: map['routeTableRoutes'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisExplanationRouteTableRoute>(
              map['routeTableRoutes'],
              (value) =>
                  NetworkInsightsAnalysisExplanationRouteTableRoute.fromMap(
                      (value as Map).cast<String, dynamic>())),
      routeTables: map['routeTables'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisExplanationRouteTable>(
              map['routeTables'],
              (value) => NetworkInsightsAnalysisExplanationRouteTable.fromMap(
                  (value as Map).cast<String, dynamic>())),
      securityGroup: map['securityGroup'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisExplanationSecurityGroup>(
              map['securityGroup'],
              (value) =>
                  NetworkInsightsAnalysisExplanationSecurityGroup.fromMap(
                      (value as Map).cast<String, dynamic>())),
      securityGroupRules: map['securityGroupRules'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisExplanationSecurityGroupRule>(
              map['securityGroupRules'],
              (value) =>
                  NetworkInsightsAnalysisExplanationSecurityGroupRule.fromMap(
                      (value as Map).cast<String, dynamic>())),
      securityGroups: map['securityGroups'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisExplanationSecurityGroup>(
              map['securityGroups'],
              (value) =>
                  NetworkInsightsAnalysisExplanationSecurityGroup.fromMap(
                      (value as Map).cast<String, dynamic>())),
      sourceVpcs: map['sourceVpcs'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisExplanationSourceVpc>(
              map['sourceVpcs'],
              (value) => NetworkInsightsAnalysisExplanationSourceVpc.fromMap(
                  (value as Map).cast<String, dynamic>())),
      state: map['state'] == null ? null : map['state'] as String,
      subnetRouteTables: map['subnetRouteTables'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisExplanationSubnetRouteTable>(
              map['subnetRouteTables'],
              (value) =>
                  NetworkInsightsAnalysisExplanationSubnetRouteTable.fromMap(
                      (value as Map).cast<String, dynamic>())),
      subnets: map['subnets'] == null
          ? null
          : pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationSubnet>(
              map['subnets'],
              (value) => NetworkInsightsAnalysisExplanationSubnet.fromMap(
                  (value as Map).cast<String, dynamic>())),
      transitGatewayAttachments: map['transitGatewayAttachments'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisExplanationTransitGatewayAttachment>(
              map['transitGatewayAttachments'],
              (value) =>
                  NetworkInsightsAnalysisExplanationTransitGatewayAttachment
                      .fromMap((value as Map).cast<String, dynamic>())),
      transitGatewayRouteTableRoutes: map['transitGatewayRouteTableRoutes'] ==
              null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisExplanationTransitGatewayRouteTableRoute>(
              map['transitGatewayRouteTableRoutes'],
              (value) =>
                  NetworkInsightsAnalysisExplanationTransitGatewayRouteTableRoute
                      .fromMap((value as Map).cast<String, dynamic>())),
      transitGatewayRouteTables: map['transitGatewayRouteTables'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisExplanationTransitGatewayRouteTable>(
              map['transitGatewayRouteTables'],
              (value) =>
                  NetworkInsightsAnalysisExplanationTransitGatewayRouteTable
                      .fromMap((value as Map).cast<String, dynamic>())),
      transitGateways: map['transitGateways'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisExplanationTransitGateway>(
              map['transitGateways'],
              (value) =>
                  NetworkInsightsAnalysisExplanationTransitGateway.fromMap(
                      (value as Map).cast<String, dynamic>())),
      vpcEndpoints: map['vpcEndpoints'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisExplanationVpcEndpoint>(
              map['vpcEndpoints'],
              (value) => NetworkInsightsAnalysisExplanationVpcEndpoint.fromMap(
                  (value as Map).cast<String, dynamic>())),
      vpcPeeringConnections: map['vpcPeeringConnections'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisExplanationVpcPeeringConnection>(
              map['vpcPeeringConnections'],
              (value) => NetworkInsightsAnalysisExplanationVpcPeeringConnection
                  .fromMap((value as Map).cast<String, dynamic>())),
      vpcs: map['vpcs'] == null
          ? null
          : pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationVpc>(
              map['vpcs'],
              (value) => NetworkInsightsAnalysisExplanationVpc.fromMap(
                  (value as Map).cast<String, dynamic>())),
      vpnConnections: map['vpnConnections'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisExplanationVpnConnection>(
              map['vpnConnections'],
              (value) =>
                  NetworkInsightsAnalysisExplanationVpnConnection.fromMap(
                      (value as Map).cast<String, dynamic>())),
      vpnGateways: map['vpnGateways'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisExplanationVpnGateway>(
              map['vpnGateways'],
              (value) => NetworkInsightsAnalysisExplanationVpnGateway.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
