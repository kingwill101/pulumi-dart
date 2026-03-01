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
  final List<NetworkInsightsAnalysisExplanationClassicLoadBalancerListener>? classicLoadBalancerListeners;
  final List<NetworkInsightsAnalysisExplanationComponent>? components;
  final List<NetworkInsightsAnalysisExplanationCustomerGateway>? customerGateways;
  final List<NetworkInsightsAnalysisExplanationDestinationVpc>? destinationVpcs;
  final List<NetworkInsightsAnalysisExplanationDestination>? destinations;
  final String? direction;
  final List<NetworkInsightsAnalysisExplanationElasticLoadBalancerListener>? elasticLoadBalancerListeners;
  final String? explanationCode;
  final List<NetworkInsightsAnalysisExplanationIngressRouteTable>? ingressRouteTables;
  final List<NetworkInsightsAnalysisExplanationInternetGateway>? internetGateways;
  final String? loadBalancerArn;
  final int? loadBalancerListenerPort;
  final List<NetworkInsightsAnalysisExplanationLoadBalancerTargetGroup>? loadBalancerTargetGroup;
  final List<NetworkInsightsAnalysisExplanationLoadBalancerTargetGroup>? loadBalancerTargetGroups;
  final int? loadBalancerTargetPort;
  final String? missingComponent;
  final List<NetworkInsightsAnalysisExplanationNatGateway>? natGateways;
  final List<NetworkInsightsAnalysisExplanationNetworkInterface>? networkInterfaces;
  final String? packetField;
  final int? port;
  final List<NetworkInsightsAnalysisExplanationPortRange>? portRanges;
  final List<NetworkInsightsAnalysisExplanationPrefixList>? prefixLists;
  final List<String>? protocols;
  final List<NetworkInsightsAnalysisExplanationRouteTableRoute>? routeTableRoutes;
  final List<NetworkInsightsAnalysisExplanationRouteTable>? routeTables;
  final List<NetworkInsightsAnalysisExplanationSecurityGroup>? securityGroup;
  final List<NetworkInsightsAnalysisExplanationSecurityGroupRule>? securityGroupRules;
  final List<NetworkInsightsAnalysisExplanationSecurityGroup>? securityGroups;
  final List<NetworkInsightsAnalysisExplanationSourceVpc>? sourceVpcs;
  final String? state;
  final List<NetworkInsightsAnalysisExplanationSubnetRouteTable>? subnetRouteTables;
  final List<NetworkInsightsAnalysisExplanationSubnet>? subnets;
  final List<NetworkInsightsAnalysisExplanationTransitGatewayAttachment>? transitGatewayAttachments;
  final List<NetworkInsightsAnalysisExplanationTransitGatewayRouteTableRoute>? transitGatewayRouteTableRoutes;
  final List<NetworkInsightsAnalysisExplanationTransitGatewayRouteTable>? transitGatewayRouteTables;
  final List<NetworkInsightsAnalysisExplanationTransitGateway>? transitGateways;
  final List<NetworkInsightsAnalysisExplanationVpcEndpoint>? vpcEndpoints;
  final List<NetworkInsightsAnalysisExplanationVpcPeeringConnection>? vpcPeeringConnections;
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
    return <String, dynamic>{
      'aclRules': ?aclRules == null ? null : pulumi.Input.encodeList<NetworkInsightsAnalysisExplanationAclRule, Map<String, dynamic>>(aclRules!, (value) => value.toMap()),
      'acls': ?acls == null ? null : pulumi.Input.encodeList<NetworkInsightsAnalysisExplanationAcl, Map<String, dynamic>>(acls!, (value) => value.toMap()),
      'address': ?address,
      'addresses': ?addresses,
      'attachedTos': ?attachedTos == null ? null : pulumi.Input.encodeList<NetworkInsightsAnalysisExplanationAttachedTo, Map<String, dynamic>>(attachedTos!, (value) => value.toMap()),
      'availabilityZones': ?availabilityZones,
      'cidrs': ?cidrs,
      'classicLoadBalancerListeners': ?classicLoadBalancerListeners == null ? null : pulumi.Input.encodeList<NetworkInsightsAnalysisExplanationClassicLoadBalancerListener, Map<String, dynamic>>(classicLoadBalancerListeners!, (value) => value.toMap()),
      'components': ?components == null ? null : pulumi.Input.encodeList<NetworkInsightsAnalysisExplanationComponent, Map<String, dynamic>>(components!, (value) => value.toMap()),
      'customerGateways': ?customerGateways == null ? null : pulumi.Input.encodeList<NetworkInsightsAnalysisExplanationCustomerGateway, Map<String, dynamic>>(customerGateways!, (value) => value.toMap()),
      'destinationVpcs': ?destinationVpcs == null ? null : pulumi.Input.encodeList<NetworkInsightsAnalysisExplanationDestinationVpc, Map<String, dynamic>>(destinationVpcs!, (value) => value.toMap()),
      'destinations': ?destinations == null ? null : pulumi.Input.encodeList<NetworkInsightsAnalysisExplanationDestination, Map<String, dynamic>>(destinations!, (value) => value.toMap()),
      'direction': ?direction,
      'elasticLoadBalancerListeners': ?elasticLoadBalancerListeners == null ? null : pulumi.Input.encodeList<NetworkInsightsAnalysisExplanationElasticLoadBalancerListener, Map<String, dynamic>>(elasticLoadBalancerListeners!, (value) => value.toMap()),
      'explanationCode': ?explanationCode,
      'ingressRouteTables': ?ingressRouteTables == null ? null : pulumi.Input.encodeList<NetworkInsightsAnalysisExplanationIngressRouteTable, Map<String, dynamic>>(ingressRouteTables!, (value) => value.toMap()),
      'internetGateways': ?internetGateways == null ? null : pulumi.Input.encodeList<NetworkInsightsAnalysisExplanationInternetGateway, Map<String, dynamic>>(internetGateways!, (value) => value.toMap()),
      'loadBalancerArn': ?loadBalancerArn,
      'loadBalancerListenerPort': ?loadBalancerListenerPort,
      'loadBalancerTargetGroup': ?loadBalancerTargetGroup == null ? null : pulumi.Input.encodeList<NetworkInsightsAnalysisExplanationLoadBalancerTargetGroup, Map<String, dynamic>>(loadBalancerTargetGroup!, (value) => value.toMap()),
      'loadBalancerTargetGroups': ?loadBalancerTargetGroups == null ? null : pulumi.Input.encodeList<NetworkInsightsAnalysisExplanationLoadBalancerTargetGroup, Map<String, dynamic>>(loadBalancerTargetGroups!, (value) => value.toMap()),
      'loadBalancerTargetPort': ?loadBalancerTargetPort,
      'missingComponent': ?missingComponent,
      'natGateways': ?natGateways == null ? null : pulumi.Input.encodeList<NetworkInsightsAnalysisExplanationNatGateway, Map<String, dynamic>>(natGateways!, (value) => value.toMap()),
      'networkInterfaces': ?networkInterfaces == null ? null : pulumi.Input.encodeList<NetworkInsightsAnalysisExplanationNetworkInterface, Map<String, dynamic>>(networkInterfaces!, (value) => value.toMap()),
      'packetField': ?packetField,
      'port': ?port,
      'portRanges': ?portRanges == null ? null : pulumi.Input.encodeList<NetworkInsightsAnalysisExplanationPortRange, Map<String, dynamic>>(portRanges!, (value) => value.toMap()),
      'prefixLists': ?prefixLists == null ? null : pulumi.Input.encodeList<NetworkInsightsAnalysisExplanationPrefixList, Map<String, dynamic>>(prefixLists!, (value) => value.toMap()),
      'protocols': ?protocols,
      'routeTableRoutes': ?routeTableRoutes == null ? null : pulumi.Input.encodeList<NetworkInsightsAnalysisExplanationRouteTableRoute, Map<String, dynamic>>(routeTableRoutes!, (value) => value.toMap()),
      'routeTables': ?routeTables == null ? null : pulumi.Input.encodeList<NetworkInsightsAnalysisExplanationRouteTable, Map<String, dynamic>>(routeTables!, (value) => value.toMap()),
      'securityGroup': ?securityGroup == null ? null : pulumi.Input.encodeList<NetworkInsightsAnalysisExplanationSecurityGroup, Map<String, dynamic>>(securityGroup!, (value) => value.toMap()),
      'securityGroupRules': ?securityGroupRules == null ? null : pulumi.Input.encodeList<NetworkInsightsAnalysisExplanationSecurityGroupRule, Map<String, dynamic>>(securityGroupRules!, (value) => value.toMap()),
      'securityGroups': ?securityGroups == null ? null : pulumi.Input.encodeList<NetworkInsightsAnalysisExplanationSecurityGroup, Map<String, dynamic>>(securityGroups!, (value) => value.toMap()),
      'sourceVpcs': ?sourceVpcs == null ? null : pulumi.Input.encodeList<NetworkInsightsAnalysisExplanationSourceVpc, Map<String, dynamic>>(sourceVpcs!, (value) => value.toMap()),
      'state': ?state,
      'subnetRouteTables': ?subnetRouteTables == null ? null : pulumi.Input.encodeList<NetworkInsightsAnalysisExplanationSubnetRouteTable, Map<String, dynamic>>(subnetRouteTables!, (value) => value.toMap()),
      'subnets': ?subnets == null ? null : pulumi.Input.encodeList<NetworkInsightsAnalysisExplanationSubnet, Map<String, dynamic>>(subnets!, (value) => value.toMap()),
      'transitGatewayAttachments': ?transitGatewayAttachments == null ? null : pulumi.Input.encodeList<NetworkInsightsAnalysisExplanationTransitGatewayAttachment, Map<String, dynamic>>(transitGatewayAttachments!, (value) => value.toMap()),
      'transitGatewayRouteTableRoutes': ?transitGatewayRouteTableRoutes == null ? null : pulumi.Input.encodeList<NetworkInsightsAnalysisExplanationTransitGatewayRouteTableRoute, Map<String, dynamic>>(transitGatewayRouteTableRoutes!, (value) => value.toMap()),
      'transitGatewayRouteTables': ?transitGatewayRouteTables == null ? null : pulumi.Input.encodeList<NetworkInsightsAnalysisExplanationTransitGatewayRouteTable, Map<String, dynamic>>(transitGatewayRouteTables!, (value) => value.toMap()),
      'transitGateways': ?transitGateways == null ? null : pulumi.Input.encodeList<NetworkInsightsAnalysisExplanationTransitGateway, Map<String, dynamic>>(transitGateways!, (value) => value.toMap()),
      'vpcEndpoints': ?vpcEndpoints == null ? null : pulumi.Input.encodeList<NetworkInsightsAnalysisExplanationVpcEndpoint, Map<String, dynamic>>(vpcEndpoints!, (value) => value.toMap()),
      'vpcPeeringConnections': ?vpcPeeringConnections == null ? null : pulumi.Input.encodeList<NetworkInsightsAnalysisExplanationVpcPeeringConnection, Map<String, dynamic>>(vpcPeeringConnections!, (value) => value.toMap()),
      'vpcs': ?vpcs == null ? null : pulumi.Input.encodeList<NetworkInsightsAnalysisExplanationVpc, Map<String, dynamic>>(vpcs!, (value) => value.toMap()),
      'vpnConnections': ?vpnConnections == null ? null : pulumi.Input.encodeList<NetworkInsightsAnalysisExplanationVpnConnection, Map<String, dynamic>>(vpnConnections!, (value) => value.toMap()),
      'vpnGateways': ?vpnGateways == null ? null : pulumi.Input.encodeList<NetworkInsightsAnalysisExplanationVpnGateway, Map<String, dynamic>>(vpnGateways!, (value) => value.toMap()),
    };
  }

  factory NetworkInsightsAnalysisExplanation.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsAnalysisExplanation(
      aclRules: map['aclRules'] == null ? null : pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationAclRule>(map['aclRules'], (value) => NetworkInsightsAnalysisExplanationAclRule.fromMap((value as Map).cast<String, dynamic>())),
      acls: map['acls'] == null ? null : pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationAcl>(map['acls'], (value) => NetworkInsightsAnalysisExplanationAcl.fromMap((value as Map).cast<String, dynamic>())),
      address: map['address'] == null ? null : map['address'] as String,
      addresses: map['addresses'] == null ? null : (map['addresses'] as List).cast<String>(),
      attachedTos: map['attachedTos'] == null ? null : pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationAttachedTo>(map['attachedTos'], (value) => NetworkInsightsAnalysisExplanationAttachedTo.fromMap((value as Map).cast<String, dynamic>())),
      availabilityZones: map['availabilityZones'] == null ? null : (map['availabilityZones'] as List).cast<String>(),
      cidrs: map['cidrs'] == null ? null : (map['cidrs'] as List).cast<String>(),
      classicLoadBalancerListeners: map['classicLoadBalancerListeners'] == null ? null : pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationClassicLoadBalancerListener>(map['classicLoadBalancerListeners'], (value) => NetworkInsightsAnalysisExplanationClassicLoadBalancerListener.fromMap((value as Map).cast<String, dynamic>())),
      components: map['components'] == null ? null : pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationComponent>(map['components'], (value) => NetworkInsightsAnalysisExplanationComponent.fromMap((value as Map).cast<String, dynamic>())),
      customerGateways: map['customerGateways'] == null ? null : pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationCustomerGateway>(map['customerGateways'], (value) => NetworkInsightsAnalysisExplanationCustomerGateway.fromMap((value as Map).cast<String, dynamic>())),
      destinationVpcs: map['destinationVpcs'] == null ? null : pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationDestinationVpc>(map['destinationVpcs'], (value) => NetworkInsightsAnalysisExplanationDestinationVpc.fromMap((value as Map).cast<String, dynamic>())),
      destinations: map['destinations'] == null ? null : pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationDestination>(map['destinations'], (value) => NetworkInsightsAnalysisExplanationDestination.fromMap((value as Map).cast<String, dynamic>())),
      direction: map['direction'] == null ? null : map['direction'] as String,
      elasticLoadBalancerListeners: map['elasticLoadBalancerListeners'] == null ? null : pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationElasticLoadBalancerListener>(map['elasticLoadBalancerListeners'], (value) => NetworkInsightsAnalysisExplanationElasticLoadBalancerListener.fromMap((value as Map).cast<String, dynamic>())),
      explanationCode: map['explanationCode'] == null ? null : map['explanationCode'] as String,
      ingressRouteTables: map['ingressRouteTables'] == null ? null : pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationIngressRouteTable>(map['ingressRouteTables'], (value) => NetworkInsightsAnalysisExplanationIngressRouteTable.fromMap((value as Map).cast<String, dynamic>())),
      internetGateways: map['internetGateways'] == null ? null : pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationInternetGateway>(map['internetGateways'], (value) => NetworkInsightsAnalysisExplanationInternetGateway.fromMap((value as Map).cast<String, dynamic>())),
      loadBalancerArn: map['loadBalancerArn'] == null ? null : map['loadBalancerArn'] as String,
      loadBalancerListenerPort: map['loadBalancerListenerPort'] == null ? null : map['loadBalancerListenerPort'] as int,
      loadBalancerTargetGroup: map['loadBalancerTargetGroup'] == null ? null : pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationLoadBalancerTargetGroup>(map['loadBalancerTargetGroup'], (value) => NetworkInsightsAnalysisExplanationLoadBalancerTargetGroup.fromMap((value as Map).cast<String, dynamic>())),
      loadBalancerTargetGroups: map['loadBalancerTargetGroups'] == null ? null : pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationLoadBalancerTargetGroup>(map['loadBalancerTargetGroups'], (value) => NetworkInsightsAnalysisExplanationLoadBalancerTargetGroup.fromMap((value as Map).cast<String, dynamic>())),
      loadBalancerTargetPort: map['loadBalancerTargetPort'] == null ? null : map['loadBalancerTargetPort'] as int,
      missingComponent: map['missingComponent'] == null ? null : map['missingComponent'] as String,
      natGateways: map['natGateways'] == null ? null : pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationNatGateway>(map['natGateways'], (value) => NetworkInsightsAnalysisExplanationNatGateway.fromMap((value as Map).cast<String, dynamic>())),
      networkInterfaces: map['networkInterfaces'] == null ? null : pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationNetworkInterface>(map['networkInterfaces'], (value) => NetworkInsightsAnalysisExplanationNetworkInterface.fromMap((value as Map).cast<String, dynamic>())),
      packetField: map['packetField'] == null ? null : map['packetField'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      portRanges: map['portRanges'] == null ? null : pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationPortRange>(map['portRanges'], (value) => NetworkInsightsAnalysisExplanationPortRange.fromMap((value as Map).cast<String, dynamic>())),
      prefixLists: map['prefixLists'] == null ? null : pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationPrefixList>(map['prefixLists'], (value) => NetworkInsightsAnalysisExplanationPrefixList.fromMap((value as Map).cast<String, dynamic>())),
      protocols: map['protocols'] == null ? null : (map['protocols'] as List).cast<String>(),
      routeTableRoutes: map['routeTableRoutes'] == null ? null : pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationRouteTableRoute>(map['routeTableRoutes'], (value) => NetworkInsightsAnalysisExplanationRouteTableRoute.fromMap((value as Map).cast<String, dynamic>())),
      routeTables: map['routeTables'] == null ? null : pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationRouteTable>(map['routeTables'], (value) => NetworkInsightsAnalysisExplanationRouteTable.fromMap((value as Map).cast<String, dynamic>())),
      securityGroup: map['securityGroup'] == null ? null : pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationSecurityGroup>(map['securityGroup'], (value) => NetworkInsightsAnalysisExplanationSecurityGroup.fromMap((value as Map).cast<String, dynamic>())),
      securityGroupRules: map['securityGroupRules'] == null ? null : pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationSecurityGroupRule>(map['securityGroupRules'], (value) => NetworkInsightsAnalysisExplanationSecurityGroupRule.fromMap((value as Map).cast<String, dynamic>())),
      securityGroups: map['securityGroups'] == null ? null : pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationSecurityGroup>(map['securityGroups'], (value) => NetworkInsightsAnalysisExplanationSecurityGroup.fromMap((value as Map).cast<String, dynamic>())),
      sourceVpcs: map['sourceVpcs'] == null ? null : pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationSourceVpc>(map['sourceVpcs'], (value) => NetworkInsightsAnalysisExplanationSourceVpc.fromMap((value as Map).cast<String, dynamic>())),
      state: map['state'] == null ? null : map['state'] as String,
      subnetRouteTables: map['subnetRouteTables'] == null ? null : pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationSubnetRouteTable>(map['subnetRouteTables'], (value) => NetworkInsightsAnalysisExplanationSubnetRouteTable.fromMap((value as Map).cast<String, dynamic>())),
      subnets: map['subnets'] == null ? null : pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationSubnet>(map['subnets'], (value) => NetworkInsightsAnalysisExplanationSubnet.fromMap((value as Map).cast<String, dynamic>())),
      transitGatewayAttachments: map['transitGatewayAttachments'] == null ? null : pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationTransitGatewayAttachment>(map['transitGatewayAttachments'], (value) => NetworkInsightsAnalysisExplanationTransitGatewayAttachment.fromMap((value as Map).cast<String, dynamic>())),
      transitGatewayRouteTableRoutes: map['transitGatewayRouteTableRoutes'] == null ? null : pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationTransitGatewayRouteTableRoute>(map['transitGatewayRouteTableRoutes'], (value) => NetworkInsightsAnalysisExplanationTransitGatewayRouteTableRoute.fromMap((value as Map).cast<String, dynamic>())),
      transitGatewayRouteTables: map['transitGatewayRouteTables'] == null ? null : pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationTransitGatewayRouteTable>(map['transitGatewayRouteTables'], (value) => NetworkInsightsAnalysisExplanationTransitGatewayRouteTable.fromMap((value as Map).cast<String, dynamic>())),
      transitGateways: map['transitGateways'] == null ? null : pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationTransitGateway>(map['transitGateways'], (value) => NetworkInsightsAnalysisExplanationTransitGateway.fromMap((value as Map).cast<String, dynamic>())),
      vpcEndpoints: map['vpcEndpoints'] == null ? null : pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationVpcEndpoint>(map['vpcEndpoints'], (value) => NetworkInsightsAnalysisExplanationVpcEndpoint.fromMap((value as Map).cast<String, dynamic>())),
      vpcPeeringConnections: map['vpcPeeringConnections'] == null ? null : pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationVpcPeeringConnection>(map['vpcPeeringConnections'], (value) => NetworkInsightsAnalysisExplanationVpcPeeringConnection.fromMap((value as Map).cast<String, dynamic>())),
      vpcs: map['vpcs'] == null ? null : pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationVpc>(map['vpcs'], (value) => NetworkInsightsAnalysisExplanationVpc.fromMap((value as Map).cast<String, dynamic>())),
      vpnConnections: map['vpnConnections'] == null ? null : pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationVpnConnection>(map['vpnConnections'], (value) => NetworkInsightsAnalysisExplanationVpnConnection.fromMap((value as Map).cast<String, dynamic>())),
      vpnGateways: map['vpnGateways'] == null ? null : pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationVpnGateway>(map['vpnGateways'], (value) => NetworkInsightsAnalysisExplanationVpnGateway.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

