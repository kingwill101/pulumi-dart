// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_network_insights_analysis_explanation_acl/get_network_insights_analysis_explanation_acl.dart';
import '../get_network_insights_analysis_explanation_acl_rule/get_network_insights_analysis_explanation_acl_rule.dart';
import '../get_network_insights_analysis_explanation_attached_to/get_network_insights_analysis_explanation_attached_to.dart';
import '../get_network_insights_analysis_explanation_classic_load_balancer_listener/get_network_insights_analysis_explanation_classic_load_balancer_listener.dart';
import '../get_network_insights_analysis_explanation_component/get_network_insights_analysis_explanation_component.dart';
import '../get_network_insights_analysis_explanation_customer_gateway/get_network_insights_analysis_explanation_customer_gateway.dart';
import '../get_network_insights_analysis_explanation_destination/get_network_insights_analysis_explanation_destination.dart';
import '../get_network_insights_analysis_explanation_destination_vpc/get_network_insights_analysis_explanation_destination_vpc.dart';
import '../get_network_insights_analysis_explanation_elastic_load_balancer_listener/get_network_insights_analysis_explanation_elastic_load_balancer_listener.dart';
import '../get_network_insights_analysis_explanation_ingress_route_table/get_network_insights_analysis_explanation_ingress_route_table.dart';
import '../get_network_insights_analysis_explanation_internet_gateway/get_network_insights_analysis_explanation_internet_gateway.dart';
import '../get_network_insights_analysis_explanation_load_balancer_target_group/get_network_insights_analysis_explanation_load_balancer_target_group.dart';
import '../get_network_insights_analysis_explanation_nat_gateway/get_network_insights_analysis_explanation_nat_gateway.dart';
import '../get_network_insights_analysis_explanation_network_interface/get_network_insights_analysis_explanation_network_interface.dart';
import '../get_network_insights_analysis_explanation_port_range/get_network_insights_analysis_explanation_port_range.dart';
import '../get_network_insights_analysis_explanation_prefix_list/get_network_insights_analysis_explanation_prefix_list.dart';
import '../get_network_insights_analysis_explanation_route_table/get_network_insights_analysis_explanation_route_table.dart';
import '../get_network_insights_analysis_explanation_route_table_route/get_network_insights_analysis_explanation_route_table_route.dart';
import '../get_network_insights_analysis_explanation_security_group/get_network_insights_analysis_explanation_security_group.dart';
import '../get_network_insights_analysis_explanation_security_group_rule/get_network_insights_analysis_explanation_security_group_rule.dart';
import '../get_network_insights_analysis_explanation_source_vpc/get_network_insights_analysis_explanation_source_vpc.dart';
import '../get_network_insights_analysis_explanation_subnet/get_network_insights_analysis_explanation_subnet.dart';
import '../get_network_insights_analysis_explanation_subnet_route_table/get_network_insights_analysis_explanation_subnet_route_table.dart';
import '../get_network_insights_analysis_explanation_transit_gateway/get_network_insights_analysis_explanation_transit_gateway.dart';
import '../get_network_insights_analysis_explanation_transit_gateway_attachment/get_network_insights_analysis_explanation_transit_gateway_attachment.dart';
import '../get_network_insights_analysis_explanation_transit_gateway_route_table/get_network_insights_analysis_explanation_transit_gateway_route_table.dart';
import '../get_network_insights_analysis_explanation_transit_gateway_route_table_route/get_network_insights_analysis_explanation_transit_gateway_route_table_route.dart';
import '../get_network_insights_analysis_explanation_vpc/get_network_insights_analysis_explanation_vpc.dart';
import '../get_network_insights_analysis_explanation_vpc_endpoint/get_network_insights_analysis_explanation_vpc_endpoint.dart';
import '../get_network_insights_analysis_explanation_vpc_peering_connection/get_network_insights_analysis_explanation_vpc_peering_connection.dart';
import '../get_network_insights_analysis_explanation_vpn_connection/get_network_insights_analysis_explanation_vpn_connection.dart';
import '../get_network_insights_analysis_explanation_vpn_gateway/get_network_insights_analysis_explanation_vpn_gateway.dart';

class GetNetworkInsightsAnalysisExplanation {
  final List<GetNetworkInsightsAnalysisExplanationAclRule> aclRules;
  final List<GetNetworkInsightsAnalysisExplanationAcl> acls;
  final String address;
  final List<String> addresses;
  final List<GetNetworkInsightsAnalysisExplanationAttachedTo> attachedTos;
  final List<String> availabilityZones;
  final List<String> cidrs;
  final List<GetNetworkInsightsAnalysisExplanationClassicLoadBalancerListener>
      classicLoadBalancerListeners;
  final List<GetNetworkInsightsAnalysisExplanationComponent> components;
  final List<GetNetworkInsightsAnalysisExplanationCustomerGateway>
      customerGateways;
  final List<GetNetworkInsightsAnalysisExplanationDestinationVpc>
      destinationVpcs;
  final List<GetNetworkInsightsAnalysisExplanationDestination> destinations;
  final String direction;
  final List<GetNetworkInsightsAnalysisExplanationElasticLoadBalancerListener>
      elasticLoadBalancerListeners;
  final String explanationCode;
  final List<GetNetworkInsightsAnalysisExplanationIngressRouteTable>
      ingressRouteTables;
  final List<GetNetworkInsightsAnalysisExplanationInternetGateway>
      internetGateways;
  final String loadBalancerArn;
  final int loadBalancerListenerPort;
  final List<GetNetworkInsightsAnalysisExplanationLoadBalancerTargetGroup>
      loadBalancerTargetGroup;
  final List<GetNetworkInsightsAnalysisExplanationLoadBalancerTargetGroup>
      loadBalancerTargetGroups;
  final int loadBalancerTargetPort;
  final String missingComponent;
  final List<GetNetworkInsightsAnalysisExplanationNatGateway> natGateways;
  final List<GetNetworkInsightsAnalysisExplanationNetworkInterface>
      networkInterfaces;
  final String packetField;
  final int port;
  final List<GetNetworkInsightsAnalysisExplanationPortRange> portRanges;
  final List<GetNetworkInsightsAnalysisExplanationPrefixList> prefixLists;
  final List<String> protocols;
  final List<GetNetworkInsightsAnalysisExplanationRouteTableRoute>
      routeTableRoutes;
  final List<GetNetworkInsightsAnalysisExplanationRouteTable> routeTables;
  final List<GetNetworkInsightsAnalysisExplanationSecurityGroup> securityGroup;
  final List<GetNetworkInsightsAnalysisExplanationSecurityGroupRule>
      securityGroupRules;
  final List<GetNetworkInsightsAnalysisExplanationSecurityGroup> securityGroups;
  final List<GetNetworkInsightsAnalysisExplanationSourceVpc> sourceVpcs;
  final String state;
  final List<GetNetworkInsightsAnalysisExplanationSubnetRouteTable>
      subnetRouteTables;
  final List<GetNetworkInsightsAnalysisExplanationSubnet> subnets;
  final List<GetNetworkInsightsAnalysisExplanationTransitGatewayAttachment>
      transitGatewayAttachments;
  final List<GetNetworkInsightsAnalysisExplanationTransitGatewayRouteTableRoute>
      transitGatewayRouteTableRoutes;
  final List<GetNetworkInsightsAnalysisExplanationTransitGatewayRouteTable>
      transitGatewayRouteTables;
  final List<GetNetworkInsightsAnalysisExplanationTransitGateway>
      transitGateways;
  final List<GetNetworkInsightsAnalysisExplanationVpcEndpoint> vpcEndpoints;
  final List<GetNetworkInsightsAnalysisExplanationVpcPeeringConnection>
      vpcPeeringConnections;
  final List<GetNetworkInsightsAnalysisExplanationVpc> vpcs;
  final List<GetNetworkInsightsAnalysisExplanationVpnConnection> vpnConnections;
  final List<GetNetworkInsightsAnalysisExplanationVpnGateway> vpnGateways;

  GetNetworkInsightsAnalysisExplanation({
    required this.aclRules,
    required this.acls,
    required this.address,
    required this.addresses,
    required this.attachedTos,
    required this.availabilityZones,
    required this.cidrs,
    required this.classicLoadBalancerListeners,
    required this.components,
    required this.customerGateways,
    required this.destinationVpcs,
    required this.destinations,
    required this.direction,
    required this.elasticLoadBalancerListeners,
    required this.explanationCode,
    required this.ingressRouteTables,
    required this.internetGateways,
    required this.loadBalancerArn,
    required this.loadBalancerListenerPort,
    required this.loadBalancerTargetGroup,
    required this.loadBalancerTargetGroups,
    required this.loadBalancerTargetPort,
    required this.missingComponent,
    required this.natGateways,
    required this.networkInterfaces,
    required this.packetField,
    required this.port,
    required this.portRanges,
    required this.prefixLists,
    required this.protocols,
    required this.routeTableRoutes,
    required this.routeTables,
    required this.securityGroup,
    required this.securityGroupRules,
    required this.securityGroups,
    required this.sourceVpcs,
    required this.state,
    required this.subnetRouteTables,
    required this.subnets,
    required this.transitGatewayAttachments,
    required this.transitGatewayRouteTableRoutes,
    required this.transitGatewayRouteTables,
    required this.transitGateways,
    required this.vpcEndpoints,
    required this.vpcPeeringConnections,
    required this.vpcs,
    required this.vpnConnections,
    required this.vpnGateways,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['aclRules'] = Input.encodeList<
        GetNetworkInsightsAnalysisExplanationAclRule,
        Map<String, dynamic>>(aclRules, (value) => value.toMap());
    map['acls'] = Input.encodeList<GetNetworkInsightsAnalysisExplanationAcl,
        Map<String, dynamic>>(acls, (value) => value.toMap());
    map['address'] = address;
    map['addresses'] = addresses;
    map['attachedTos'] = Input.encodeList<
        GetNetworkInsightsAnalysisExplanationAttachedTo,
        Map<String, dynamic>>(attachedTos, (value) => value.toMap());
    map['availabilityZones'] = availabilityZones;
    map['cidrs'] = cidrs;
    map['classicLoadBalancerListeners'] = Input.encodeList<
            GetNetworkInsightsAnalysisExplanationClassicLoadBalancerListener,
            Map<String, dynamic>>(
        classicLoadBalancerListeners, (value) => value.toMap());
    map['components'] = Input.encodeList<
        GetNetworkInsightsAnalysisExplanationComponent,
        Map<String, dynamic>>(components, (value) => value.toMap());
    map['customerGateways'] = Input.encodeList<
        GetNetworkInsightsAnalysisExplanationCustomerGateway,
        Map<String, dynamic>>(customerGateways, (value) => value.toMap());
    map['destinationVpcs'] = Input.encodeList<
        GetNetworkInsightsAnalysisExplanationDestinationVpc,
        Map<String, dynamic>>(destinationVpcs, (value) => value.toMap());
    map['destinations'] = Input.encodeList<
        GetNetworkInsightsAnalysisExplanationDestination,
        Map<String, dynamic>>(destinations, (value) => value.toMap());
    map['direction'] = direction;
    map['elasticLoadBalancerListeners'] = Input.encodeList<
            GetNetworkInsightsAnalysisExplanationElasticLoadBalancerListener,
            Map<String, dynamic>>(
        elasticLoadBalancerListeners, (value) => value.toMap());
    map['explanationCode'] = explanationCode;
    map['ingressRouteTables'] = Input.encodeList<
        GetNetworkInsightsAnalysisExplanationIngressRouteTable,
        Map<String, dynamic>>(ingressRouteTables, (value) => value.toMap());
    map['internetGateways'] = Input.encodeList<
        GetNetworkInsightsAnalysisExplanationInternetGateway,
        Map<String, dynamic>>(internetGateways, (value) => value.toMap());
    map['loadBalancerArn'] = loadBalancerArn;
    map['loadBalancerListenerPort'] = loadBalancerListenerPort;
    map['loadBalancerTargetGroup'] = Input.encodeList<
            GetNetworkInsightsAnalysisExplanationLoadBalancerTargetGroup,
            Map<String, dynamic>>(
        loadBalancerTargetGroup, (value) => value.toMap());
    map['loadBalancerTargetGroups'] = Input.encodeList<
            GetNetworkInsightsAnalysisExplanationLoadBalancerTargetGroup,
            Map<String, dynamic>>(
        loadBalancerTargetGroups, (value) => value.toMap());
    map['loadBalancerTargetPort'] = loadBalancerTargetPort;
    map['missingComponent'] = missingComponent;
    map['natGateways'] = Input.encodeList<
        GetNetworkInsightsAnalysisExplanationNatGateway,
        Map<String, dynamic>>(natGateways, (value) => value.toMap());
    map['networkInterfaces'] = Input.encodeList<
        GetNetworkInsightsAnalysisExplanationNetworkInterface,
        Map<String, dynamic>>(networkInterfaces, (value) => value.toMap());
    map['packetField'] = packetField;
    map['port'] = port;
    map['portRanges'] = Input.encodeList<
        GetNetworkInsightsAnalysisExplanationPortRange,
        Map<String, dynamic>>(portRanges, (value) => value.toMap());
    map['prefixLists'] = Input.encodeList<
        GetNetworkInsightsAnalysisExplanationPrefixList,
        Map<String, dynamic>>(prefixLists, (value) => value.toMap());
    map['protocols'] = protocols;
    map['routeTableRoutes'] = Input.encodeList<
        GetNetworkInsightsAnalysisExplanationRouteTableRoute,
        Map<String, dynamic>>(routeTableRoutes, (value) => value.toMap());
    map['routeTables'] = Input.encodeList<
        GetNetworkInsightsAnalysisExplanationRouteTable,
        Map<String, dynamic>>(routeTables, (value) => value.toMap());
    map['securityGroup'] = Input.encodeList<
        GetNetworkInsightsAnalysisExplanationSecurityGroup,
        Map<String, dynamic>>(securityGroup, (value) => value.toMap());
    map['securityGroupRules'] = Input.encodeList<
        GetNetworkInsightsAnalysisExplanationSecurityGroupRule,
        Map<String, dynamic>>(securityGroupRules, (value) => value.toMap());
    map['securityGroups'] = Input.encodeList<
        GetNetworkInsightsAnalysisExplanationSecurityGroup,
        Map<String, dynamic>>(securityGroups, (value) => value.toMap());
    map['sourceVpcs'] = Input.encodeList<
        GetNetworkInsightsAnalysisExplanationSourceVpc,
        Map<String, dynamic>>(sourceVpcs, (value) => value.toMap());
    map['state'] = state;
    map['subnetRouteTables'] = Input.encodeList<
        GetNetworkInsightsAnalysisExplanationSubnetRouteTable,
        Map<String, dynamic>>(subnetRouteTables, (value) => value.toMap());
    map['subnets'] = Input.encodeList<
        GetNetworkInsightsAnalysisExplanationSubnet,
        Map<String, dynamic>>(subnets, (value) => value.toMap());
    map['transitGatewayAttachments'] = Input.encodeList<
            GetNetworkInsightsAnalysisExplanationTransitGatewayAttachment,
            Map<String, dynamic>>(
        transitGatewayAttachments, (value) => value.toMap());
    map['transitGatewayRouteTableRoutes'] = Input.encodeList<
            GetNetworkInsightsAnalysisExplanationTransitGatewayRouteTableRoute,
            Map<String, dynamic>>(
        transitGatewayRouteTableRoutes, (value) => value.toMap());
    map['transitGatewayRouteTables'] = Input.encodeList<
            GetNetworkInsightsAnalysisExplanationTransitGatewayRouteTable,
            Map<String, dynamic>>(
        transitGatewayRouteTables, (value) => value.toMap());
    map['transitGateways'] = Input.encodeList<
        GetNetworkInsightsAnalysisExplanationTransitGateway,
        Map<String, dynamic>>(transitGateways, (value) => value.toMap());
    map['vpcEndpoints'] = Input.encodeList<
        GetNetworkInsightsAnalysisExplanationVpcEndpoint,
        Map<String, dynamic>>(vpcEndpoints, (value) => value.toMap());
    map['vpcPeeringConnections'] = Input.encodeList<
        GetNetworkInsightsAnalysisExplanationVpcPeeringConnection,
        Map<String, dynamic>>(vpcPeeringConnections, (value) => value.toMap());
    map['vpcs'] = Input.encodeList<GetNetworkInsightsAnalysisExplanationVpc,
        Map<String, dynamic>>(vpcs, (value) => value.toMap());
    map['vpnConnections'] = Input.encodeList<
        GetNetworkInsightsAnalysisExplanationVpnConnection,
        Map<String, dynamic>>(vpnConnections, (value) => value.toMap());
    map['vpnGateways'] = Input.encodeList<
        GetNetworkInsightsAnalysisExplanationVpnGateway,
        Map<String, dynamic>>(vpnGateways, (value) => value.toMap());
    return map;
  }

  factory GetNetworkInsightsAnalysisExplanation.fromMap(
      Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisExplanation(
      aclRules: Input.decodeList<GetNetworkInsightsAnalysisExplanationAclRule>(
          map['aclRules'],
          (value) => GetNetworkInsightsAnalysisExplanationAclRule.fromMap(
              (value as Map).cast<String, dynamic>())),
      acls: Input.decodeList<GetNetworkInsightsAnalysisExplanationAcl>(
          map['acls'],
          (value) => GetNetworkInsightsAnalysisExplanationAcl.fromMap(
              (value as Map).cast<String, dynamic>())),
      address: map['address'] as String,
      addresses: (map['addresses'] as List).cast<String>(),
      attachedTos:
          Input.decodeList<GetNetworkInsightsAnalysisExplanationAttachedTo>(
              map['attachedTos'],
              (value) =>
                  GetNetworkInsightsAnalysisExplanationAttachedTo.fromMap(
                      (value as Map).cast<String, dynamic>())),
      availabilityZones: (map['availabilityZones'] as List).cast<String>(),
      cidrs: (map['cidrs'] as List).cast<String>(),
      classicLoadBalancerListeners: Input.decodeList<
              GetNetworkInsightsAnalysisExplanationClassicLoadBalancerListener>(
          map['classicLoadBalancerListeners'],
          (value) =>
              GetNetworkInsightsAnalysisExplanationClassicLoadBalancerListener
                  .fromMap((value as Map).cast<String, dynamic>())),
      components:
          Input.decodeList<GetNetworkInsightsAnalysisExplanationComponent>(
              map['components'],
              (value) => GetNetworkInsightsAnalysisExplanationComponent.fromMap(
                  (value as Map).cast<String, dynamic>())),
      customerGateways: Input.decodeList<
              GetNetworkInsightsAnalysisExplanationCustomerGateway>(
          map['customerGateways'],
          (value) =>
              GetNetworkInsightsAnalysisExplanationCustomerGateway.fromMap(
                  (value as Map).cast<String, dynamic>())),
      destinationVpcs:
          Input.decodeList<GetNetworkInsightsAnalysisExplanationDestinationVpc>(
              map['destinationVpcs'],
              (value) =>
                  GetNetworkInsightsAnalysisExplanationDestinationVpc.fromMap(
                      (value as Map).cast<String, dynamic>())),
      destinations:
          Input.decodeList<GetNetworkInsightsAnalysisExplanationDestination>(
              map['destinations'],
              (value) =>
                  GetNetworkInsightsAnalysisExplanationDestination.fromMap(
                      (value as Map).cast<String, dynamic>())),
      direction: map['direction'] as String,
      elasticLoadBalancerListeners: Input.decodeList<
              GetNetworkInsightsAnalysisExplanationElasticLoadBalancerListener>(
          map['elasticLoadBalancerListeners'],
          (value) =>
              GetNetworkInsightsAnalysisExplanationElasticLoadBalancerListener
                  .fromMap((value as Map).cast<String, dynamic>())),
      explanationCode: map['explanationCode'] as String,
      ingressRouteTables: Input.decodeList<
              GetNetworkInsightsAnalysisExplanationIngressRouteTable>(
          map['ingressRouteTables'],
          (value) =>
              GetNetworkInsightsAnalysisExplanationIngressRouteTable.fromMap(
                  (value as Map).cast<String, dynamic>())),
      internetGateways: Input.decodeList<
              GetNetworkInsightsAnalysisExplanationInternetGateway>(
          map['internetGateways'],
          (value) =>
              GetNetworkInsightsAnalysisExplanationInternetGateway.fromMap(
                  (value as Map).cast<String, dynamic>())),
      loadBalancerArn: map['loadBalancerArn'] as String,
      loadBalancerListenerPort: map['loadBalancerListenerPort'] as int,
      loadBalancerTargetGroup: Input.decodeList<
              GetNetworkInsightsAnalysisExplanationLoadBalancerTargetGroup>(
          map['loadBalancerTargetGroup'],
          (value) =>
              GetNetworkInsightsAnalysisExplanationLoadBalancerTargetGroup
                  .fromMap((value as Map).cast<String, dynamic>())),
      loadBalancerTargetGroups: Input.decodeList<
              GetNetworkInsightsAnalysisExplanationLoadBalancerTargetGroup>(
          map['loadBalancerTargetGroups'],
          (value) =>
              GetNetworkInsightsAnalysisExplanationLoadBalancerTargetGroup
                  .fromMap((value as Map).cast<String, dynamic>())),
      loadBalancerTargetPort: map['loadBalancerTargetPort'] as int,
      missingComponent: map['missingComponent'] as String,
      natGateways:
          Input.decodeList<GetNetworkInsightsAnalysisExplanationNatGateway>(
              map['natGateways'],
              (value) =>
                  GetNetworkInsightsAnalysisExplanationNatGateway.fromMap(
                      (value as Map).cast<String, dynamic>())),
      networkInterfaces: Input.decodeList<
              GetNetworkInsightsAnalysisExplanationNetworkInterface>(
          map['networkInterfaces'],
          (value) =>
              GetNetworkInsightsAnalysisExplanationNetworkInterface.fromMap(
                  (value as Map).cast<String, dynamic>())),
      packetField: map['packetField'] as String,
      port: map['port'] as int,
      portRanges:
          Input.decodeList<GetNetworkInsightsAnalysisExplanationPortRange>(
              map['portRanges'],
              (value) => GetNetworkInsightsAnalysisExplanationPortRange.fromMap(
                  (value as Map).cast<String, dynamic>())),
      prefixLists:
          Input.decodeList<GetNetworkInsightsAnalysisExplanationPrefixList>(
              map['prefixLists'],
              (value) =>
                  GetNetworkInsightsAnalysisExplanationPrefixList.fromMap(
                      (value as Map).cast<String, dynamic>())),
      protocols: (map['protocols'] as List).cast<String>(),
      routeTableRoutes: Input.decodeList<
              GetNetworkInsightsAnalysisExplanationRouteTableRoute>(
          map['routeTableRoutes'],
          (value) =>
              GetNetworkInsightsAnalysisExplanationRouteTableRoute.fromMap(
                  (value as Map).cast<String, dynamic>())),
      routeTables:
          Input.decodeList<GetNetworkInsightsAnalysisExplanationRouteTable>(
              map['routeTables'],
              (value) =>
                  GetNetworkInsightsAnalysisExplanationRouteTable.fromMap(
                      (value as Map).cast<String, dynamic>())),
      securityGroup:
          Input.decodeList<GetNetworkInsightsAnalysisExplanationSecurityGroup>(
              map['securityGroup'],
              (value) =>
                  GetNetworkInsightsAnalysisExplanationSecurityGroup.fromMap(
                      (value as Map).cast<String, dynamic>())),
      securityGroupRules: Input.decodeList<
              GetNetworkInsightsAnalysisExplanationSecurityGroupRule>(
          map['securityGroupRules'],
          (value) =>
              GetNetworkInsightsAnalysisExplanationSecurityGroupRule.fromMap(
                  (value as Map).cast<String, dynamic>())),
      securityGroups:
          Input.decodeList<GetNetworkInsightsAnalysisExplanationSecurityGroup>(
              map['securityGroups'],
              (value) =>
                  GetNetworkInsightsAnalysisExplanationSecurityGroup.fromMap(
                      (value as Map).cast<String, dynamic>())),
      sourceVpcs:
          Input.decodeList<GetNetworkInsightsAnalysisExplanationSourceVpc>(
              map['sourceVpcs'],
              (value) => GetNetworkInsightsAnalysisExplanationSourceVpc.fromMap(
                  (value as Map).cast<String, dynamic>())),
      state: map['state'] as String,
      subnetRouteTables: Input.decodeList<
              GetNetworkInsightsAnalysisExplanationSubnetRouteTable>(
          map['subnetRouteTables'],
          (value) =>
              GetNetworkInsightsAnalysisExplanationSubnetRouteTable.fromMap(
                  (value as Map).cast<String, dynamic>())),
      subnets: Input.decodeList<GetNetworkInsightsAnalysisExplanationSubnet>(
          map['subnets'],
          (value) => GetNetworkInsightsAnalysisExplanationSubnet.fromMap(
              (value as Map).cast<String, dynamic>())),
      transitGatewayAttachments: Input.decodeList<
              GetNetworkInsightsAnalysisExplanationTransitGatewayAttachment>(
          map['transitGatewayAttachments'],
          (value) =>
              GetNetworkInsightsAnalysisExplanationTransitGatewayAttachment
                  .fromMap((value as Map).cast<String, dynamic>())),
      transitGatewayRouteTableRoutes: Input.decodeList<
              GetNetworkInsightsAnalysisExplanationTransitGatewayRouteTableRoute>(
          map['transitGatewayRouteTableRoutes'],
          (value) =>
              GetNetworkInsightsAnalysisExplanationTransitGatewayRouteTableRoute
                  .fromMap((value as Map).cast<String, dynamic>())),
      transitGatewayRouteTables: Input.decodeList<
              GetNetworkInsightsAnalysisExplanationTransitGatewayRouteTable>(
          map['transitGatewayRouteTables'],
          (value) =>
              GetNetworkInsightsAnalysisExplanationTransitGatewayRouteTable
                  .fromMap((value as Map).cast<String, dynamic>())),
      transitGateways:
          Input.decodeList<GetNetworkInsightsAnalysisExplanationTransitGateway>(
              map['transitGateways'],
              (value) =>
                  GetNetworkInsightsAnalysisExplanationTransitGateway.fromMap(
                      (value as Map).cast<String, dynamic>())),
      vpcEndpoints:
          Input.decodeList<GetNetworkInsightsAnalysisExplanationVpcEndpoint>(
              map['vpcEndpoints'],
              (value) =>
                  GetNetworkInsightsAnalysisExplanationVpcEndpoint.fromMap(
                      (value as Map).cast<String, dynamic>())),
      vpcPeeringConnections: Input.decodeList<
              GetNetworkInsightsAnalysisExplanationVpcPeeringConnection>(
          map['vpcPeeringConnections'],
          (value) =>
              GetNetworkInsightsAnalysisExplanationVpcPeeringConnection.fromMap(
                  (value as Map).cast<String, dynamic>())),
      vpcs: Input.decodeList<GetNetworkInsightsAnalysisExplanationVpc>(
          map['vpcs'],
          (value) => GetNetworkInsightsAnalysisExplanationVpc.fromMap(
              (value as Map).cast<String, dynamic>())),
      vpnConnections:
          Input.decodeList<GetNetworkInsightsAnalysisExplanationVpnConnection>(
              map['vpnConnections'],
              (value) =>
                  GetNetworkInsightsAnalysisExplanationVpnConnection.fromMap(
                      (value as Map).cast<String, dynamic>())),
      vpnGateways:
          Input.decodeList<GetNetworkInsightsAnalysisExplanationVpnGateway>(
              map['vpnGateways'],
              (value) =>
                  GetNetworkInsightsAnalysisExplanationVpnGateway.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
