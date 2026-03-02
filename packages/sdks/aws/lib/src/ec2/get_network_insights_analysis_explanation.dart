// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_insights_analysis_explanation_acl.dart';
import 'get_network_insights_analysis_explanation_acl_rule.dart';
import 'get_network_insights_analysis_explanation_attached_to.dart';
import 'get_network_insights_analysis_explanation_classic_load_balancer_listener.dart';
import 'get_network_insights_analysis_explanation_component.dart';
import 'get_network_insights_analysis_explanation_customer_gateway.dart';
import 'get_network_insights_analysis_explanation_destination.dart';
import 'get_network_insights_analysis_explanation_destination_vpc.dart';
import 'get_network_insights_analysis_explanation_elastic_load_balancer_listener.dart';
import 'get_network_insights_analysis_explanation_ingress_route_table.dart';
import 'get_network_insights_analysis_explanation_internet_gateway.dart';
import 'get_network_insights_analysis_explanation_load_balancer_target_group.dart';
import 'get_network_insights_analysis_explanation_nat_gateway.dart';
import 'get_network_insights_analysis_explanation_network_interface.dart';
import 'get_network_insights_analysis_explanation_port_range.dart';
import 'get_network_insights_analysis_explanation_prefix_list.dart';
import 'get_network_insights_analysis_explanation_route_table.dart';
import 'get_network_insights_analysis_explanation_route_table_route.dart';
import 'get_network_insights_analysis_explanation_security_group.dart';
import 'get_network_insights_analysis_explanation_security_group_rule.dart';
import 'get_network_insights_analysis_explanation_source_vpc.dart';
import 'get_network_insights_analysis_explanation_subnet.dart';
import 'get_network_insights_analysis_explanation_subnet_route_table.dart';
import 'get_network_insights_analysis_explanation_transit_gateway.dart';
import 'get_network_insights_analysis_explanation_transit_gateway_attachment.dart';
import 'get_network_insights_analysis_explanation_transit_gateway_route_table.dart';
import 'get_network_insights_analysis_explanation_transit_gateway_route_table_route.dart';
import 'get_network_insights_analysis_explanation_vpc.dart';
import 'get_network_insights_analysis_explanation_vpc_endpoint.dart';
import 'get_network_insights_analysis_explanation_vpc_peering_connection.dart';
import 'get_network_insights_analysis_explanation_vpn_connection.dart';
import 'get_network_insights_analysis_explanation_vpn_gateway.dart';

class GetNetworkInsightsAnalysisExplanation {
  final pulumi.Input<List<GetNetworkInsightsAnalysisExplanationAclRule>> aclRules;
  final pulumi.Input<List<GetNetworkInsightsAnalysisExplanationAcl>> acls;
  final pulumi.Input<String> address;
  final pulumi.Input<List<String>> addresses;
  final pulumi.Input<List<GetNetworkInsightsAnalysisExplanationAttachedTo>> attachedTos;
  final pulumi.Input<List<String>> availabilityZones;
  final pulumi.Input<List<String>> cidrs;
  final pulumi.Input<List<GetNetworkInsightsAnalysisExplanationClassicLoadBalancerListener>> classicLoadBalancerListeners;
  final pulumi.Input<List<GetNetworkInsightsAnalysisExplanationComponent>> components;
  final pulumi.Input<List<GetNetworkInsightsAnalysisExplanationCustomerGateway>> customerGateways;
  final pulumi.Input<List<GetNetworkInsightsAnalysisExplanationDestinationVpc>> destinationVpcs;
  final pulumi.Input<List<GetNetworkInsightsAnalysisExplanationDestination>> destinations;
  final pulumi.Input<String> direction;
  final pulumi.Input<List<GetNetworkInsightsAnalysisExplanationElasticLoadBalancerListener>> elasticLoadBalancerListeners;
  final pulumi.Input<String> explanationCode;
  final pulumi.Input<List<GetNetworkInsightsAnalysisExplanationIngressRouteTable>> ingressRouteTables;
  final pulumi.Input<List<GetNetworkInsightsAnalysisExplanationInternetGateway>> internetGateways;
  final pulumi.Input<String> loadBalancerArn;
  final pulumi.Input<int> loadBalancerListenerPort;
  final pulumi.Input<List<GetNetworkInsightsAnalysisExplanationLoadBalancerTargetGroup>> loadBalancerTargetGroup;
  final pulumi.Input<List<GetNetworkInsightsAnalysisExplanationLoadBalancerTargetGroup>> loadBalancerTargetGroups;
  final pulumi.Input<int> loadBalancerTargetPort;
  final pulumi.Input<String> missingComponent;
  final pulumi.Input<List<GetNetworkInsightsAnalysisExplanationNatGateway>> natGateways;
  final pulumi.Input<List<GetNetworkInsightsAnalysisExplanationNetworkInterface>> networkInterfaces;
  final pulumi.Input<String> packetField;
  final pulumi.Input<int> port;
  final pulumi.Input<List<GetNetworkInsightsAnalysisExplanationPortRange>> portRanges;
  final pulumi.Input<List<GetNetworkInsightsAnalysisExplanationPrefixList>> prefixLists;
  final pulumi.Input<List<String>> protocols;
  final pulumi.Input<List<GetNetworkInsightsAnalysisExplanationRouteTableRoute>> routeTableRoutes;
  final pulumi.Input<List<GetNetworkInsightsAnalysisExplanationRouteTable>> routeTables;
  final pulumi.Input<List<GetNetworkInsightsAnalysisExplanationSecurityGroup>> securityGroup;
  final pulumi.Input<List<GetNetworkInsightsAnalysisExplanationSecurityGroupRule>> securityGroupRules;
  final pulumi.Input<List<GetNetworkInsightsAnalysisExplanationSecurityGroup>> securityGroups;
  final pulumi.Input<List<GetNetworkInsightsAnalysisExplanationSourceVpc>> sourceVpcs;
  final pulumi.Input<String> state;
  final pulumi.Input<List<GetNetworkInsightsAnalysisExplanationSubnetRouteTable>> subnetRouteTables;
  final pulumi.Input<List<GetNetworkInsightsAnalysisExplanationSubnet>> subnets;
  final pulumi.Input<List<GetNetworkInsightsAnalysisExplanationTransitGatewayAttachment>> transitGatewayAttachments;
  final pulumi.Input<List<GetNetworkInsightsAnalysisExplanationTransitGatewayRouteTableRoute>> transitGatewayRouteTableRoutes;
  final pulumi.Input<List<GetNetworkInsightsAnalysisExplanationTransitGatewayRouteTable>> transitGatewayRouteTables;
  final pulumi.Input<List<GetNetworkInsightsAnalysisExplanationTransitGateway>> transitGateways;
  final pulumi.Input<List<GetNetworkInsightsAnalysisExplanationVpcEndpoint>> vpcEndpoints;
  final pulumi.Input<List<GetNetworkInsightsAnalysisExplanationVpcPeeringConnection>> vpcPeeringConnections;
  final pulumi.Input<List<GetNetworkInsightsAnalysisExplanationVpc>> vpcs;
  final pulumi.Input<List<GetNetworkInsightsAnalysisExplanationVpnConnection>> vpnConnections;
  final pulumi.Input<List<GetNetworkInsightsAnalysisExplanationVpnGateway>> vpnGateways;

  /// Creates a new [GetNetworkInsightsAnalysisExplanation].
  /// [aclRules] Required.
  /// [acls] Required.
  /// [address] Required.
  /// [addresses] Required.
  /// [attachedTos] Required.
  /// [availabilityZones] Required.
  /// [cidrs] Required.
  /// [classicLoadBalancerListeners] Required.
  /// [components] Required.
  /// [customerGateways] Required.
  /// [destinationVpcs] Required.
  /// [destinations] Required.
  /// [direction] Required.
  /// [elasticLoadBalancerListeners] Required.
  /// [explanationCode] Required.
  /// [ingressRouteTables] Required.
  /// [internetGateways] Required.
  /// [loadBalancerArn] Required.
  /// [loadBalancerListenerPort] Required.
  /// [loadBalancerTargetGroup] Required.
  /// [loadBalancerTargetGroups] Required.
  /// [loadBalancerTargetPort] Required.
  /// [missingComponent] Required.
  /// [natGateways] Required.
  /// [networkInterfaces] Required.
  /// [packetField] Required.
  /// [port] Required.
  /// [portRanges] Required.
  /// [prefixLists] Required.
  /// [protocols] Required.
  /// [routeTableRoutes] Required.
  /// [routeTables] Required.
  /// [securityGroup] Required.
  /// [securityGroupRules] Required.
  /// [securityGroups] Required.
  /// [sourceVpcs] Required.
  /// [state] Required.
  /// [subnetRouteTables] Required.
  /// [subnets] Required.
  /// [transitGatewayAttachments] Required.
  /// [transitGatewayRouteTableRoutes] Required.
  /// [transitGatewayRouteTables] Required.
  /// [transitGateways] Required.
  /// [vpcEndpoints] Required.
  /// [vpcPeeringConnections] Required.
  /// [vpcs] Required.
  /// [vpnConnections] Required.
  /// [vpnGateways] Required.
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
    return <String, dynamic>{
      'aclRules': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisExplanationAclRule>, List<Map<String, dynamic>>>(aclRules, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisExplanationAclRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'acls': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisExplanationAcl>, List<Map<String, dynamic>>>(acls, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisExplanationAcl, Map<String, dynamic>>(value, (value) => value.toMap())),
      'address': address,
      'addresses': addresses,
      'attachedTos': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisExplanationAttachedTo>, List<Map<String, dynamic>>>(attachedTos, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisExplanationAttachedTo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'availabilityZones': availabilityZones,
      'cidrs': cidrs,
      'classicLoadBalancerListeners': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisExplanationClassicLoadBalancerListener>, List<Map<String, dynamic>>>(classicLoadBalancerListeners, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisExplanationClassicLoadBalancerListener, Map<String, dynamic>>(value, (value) => value.toMap())),
      'components': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisExplanationComponent>, List<Map<String, dynamic>>>(components, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisExplanationComponent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customerGateways': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisExplanationCustomerGateway>, List<Map<String, dynamic>>>(customerGateways, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisExplanationCustomerGateway, Map<String, dynamic>>(value, (value) => value.toMap())),
      'destinationVpcs': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisExplanationDestinationVpc>, List<Map<String, dynamic>>>(destinationVpcs, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisExplanationDestinationVpc, Map<String, dynamic>>(value, (value) => value.toMap())),
      'destinations': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisExplanationDestination>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisExplanationDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'direction': direction,
      'elasticLoadBalancerListeners': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisExplanationElasticLoadBalancerListener>, List<Map<String, dynamic>>>(elasticLoadBalancerListeners, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisExplanationElasticLoadBalancerListener, Map<String, dynamic>>(value, (value) => value.toMap())),
      'explanationCode': explanationCode,
      'ingressRouteTables': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisExplanationIngressRouteTable>, List<Map<String, dynamic>>>(ingressRouteTables, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisExplanationIngressRouteTable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'internetGateways': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisExplanationInternetGateway>, List<Map<String, dynamic>>>(internetGateways, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisExplanationInternetGateway, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loadBalancerArn': loadBalancerArn,
      'loadBalancerListenerPort': loadBalancerListenerPort,
      'loadBalancerTargetGroup': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisExplanationLoadBalancerTargetGroup>, List<Map<String, dynamic>>>(loadBalancerTargetGroup, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisExplanationLoadBalancerTargetGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loadBalancerTargetGroups': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisExplanationLoadBalancerTargetGroup>, List<Map<String, dynamic>>>(loadBalancerTargetGroups, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisExplanationLoadBalancerTargetGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loadBalancerTargetPort': loadBalancerTargetPort,
      'missingComponent': missingComponent,
      'natGateways': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisExplanationNatGateway>, List<Map<String, dynamic>>>(natGateways, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisExplanationNatGateway, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkInterfaces': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisExplanationNetworkInterface>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisExplanationNetworkInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'packetField': packetField,
      'port': port,
      'portRanges': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisExplanationPortRange>, List<Map<String, dynamic>>>(portRanges, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisExplanationPortRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'prefixLists': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisExplanationPrefixList>, List<Map<String, dynamic>>>(prefixLists, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisExplanationPrefixList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'protocols': protocols,
      'routeTableRoutes': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisExplanationRouteTableRoute>, List<Map<String, dynamic>>>(routeTableRoutes, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisExplanationRouteTableRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'routeTables': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisExplanationRouteTable>, List<Map<String, dynamic>>>(routeTables, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisExplanationRouteTable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'securityGroup': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisExplanationSecurityGroup>, List<Map<String, dynamic>>>(securityGroup, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisExplanationSecurityGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'securityGroupRules': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisExplanationSecurityGroupRule>, List<Map<String, dynamic>>>(securityGroupRules, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisExplanationSecurityGroupRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'securityGroups': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisExplanationSecurityGroup>, List<Map<String, dynamic>>>(securityGroups, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisExplanationSecurityGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceVpcs': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisExplanationSourceVpc>, List<Map<String, dynamic>>>(sourceVpcs, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisExplanationSourceVpc, Map<String, dynamic>>(value, (value) => value.toMap())),
      'state': state,
      'subnetRouteTables': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisExplanationSubnetRouteTable>, List<Map<String, dynamic>>>(subnetRouteTables, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisExplanationSubnetRouteTable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subnets': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisExplanationSubnet>, List<Map<String, dynamic>>>(subnets, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisExplanationSubnet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'transitGatewayAttachments': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisExplanationTransitGatewayAttachment>, List<Map<String, dynamic>>>(transitGatewayAttachments, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisExplanationTransitGatewayAttachment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'transitGatewayRouteTableRoutes': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisExplanationTransitGatewayRouteTableRoute>, List<Map<String, dynamic>>>(transitGatewayRouteTableRoutes, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisExplanationTransitGatewayRouteTableRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'transitGatewayRouteTables': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisExplanationTransitGatewayRouteTable>, List<Map<String, dynamic>>>(transitGatewayRouteTables, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisExplanationTransitGatewayRouteTable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'transitGateways': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisExplanationTransitGateway>, List<Map<String, dynamic>>>(transitGateways, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisExplanationTransitGateway, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcEndpoints': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisExplanationVpcEndpoint>, List<Map<String, dynamic>>>(vpcEndpoints, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisExplanationVpcEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcPeeringConnections': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisExplanationVpcPeeringConnection>, List<Map<String, dynamic>>>(vpcPeeringConnections, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisExplanationVpcPeeringConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcs': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisExplanationVpc>, List<Map<String, dynamic>>>(vpcs, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisExplanationVpc, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpnConnections': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisExplanationVpnConnection>, List<Map<String, dynamic>>>(vpnConnections, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisExplanationVpnConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpnGateways': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisExplanationVpnGateway>, List<Map<String, dynamic>>>(vpnGateways, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisExplanationVpnGateway, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetNetworkInsightsAnalysisExplanation.fromMap(Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisExplanation(
      aclRules: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisExplanationAclRule>(map['aclRules']!, (value) => GetNetworkInsightsAnalysisExplanationAclRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      acls: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisExplanationAcl>(map['acls']!, (value) => GetNetworkInsightsAnalysisExplanationAcl.fromMap((value as Map).cast<String, dynamic>()))).input(),
      address: (map['address'] as String).input(),
      addresses: ((map['addresses'] as List).cast<String>()).input(),
      attachedTos: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisExplanationAttachedTo>(map['attachedTos']!, (value) => GetNetworkInsightsAnalysisExplanationAttachedTo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      availabilityZones: ((map['availabilityZones'] as List).cast<String>()).input(),
      cidrs: ((map['cidrs'] as List).cast<String>()).input(),
      classicLoadBalancerListeners: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisExplanationClassicLoadBalancerListener>(map['classicLoadBalancerListeners']!, (value) => GetNetworkInsightsAnalysisExplanationClassicLoadBalancerListener.fromMap((value as Map).cast<String, dynamic>()))).input(),
      components: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisExplanationComponent>(map['components']!, (value) => GetNetworkInsightsAnalysisExplanationComponent.fromMap((value as Map).cast<String, dynamic>()))).input(),
      customerGateways: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisExplanationCustomerGateway>(map['customerGateways']!, (value) => GetNetworkInsightsAnalysisExplanationCustomerGateway.fromMap((value as Map).cast<String, dynamic>()))).input(),
      destinationVpcs: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisExplanationDestinationVpc>(map['destinationVpcs']!, (value) => GetNetworkInsightsAnalysisExplanationDestinationVpc.fromMap((value as Map).cast<String, dynamic>()))).input(),
      destinations: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisExplanationDestination>(map['destinations']!, (value) => GetNetworkInsightsAnalysisExplanationDestination.fromMap((value as Map).cast<String, dynamic>()))).input(),
      direction: (map['direction'] as String).input(),
      elasticLoadBalancerListeners: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisExplanationElasticLoadBalancerListener>(map['elasticLoadBalancerListeners']!, (value) => GetNetworkInsightsAnalysisExplanationElasticLoadBalancerListener.fromMap((value as Map).cast<String, dynamic>()))).input(),
      explanationCode: (map['explanationCode'] as String).input(),
      ingressRouteTables: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisExplanationIngressRouteTable>(map['ingressRouteTables']!, (value) => GetNetworkInsightsAnalysisExplanationIngressRouteTable.fromMap((value as Map).cast<String, dynamic>()))).input(),
      internetGateways: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisExplanationInternetGateway>(map['internetGateways']!, (value) => GetNetworkInsightsAnalysisExplanationInternetGateway.fromMap((value as Map).cast<String, dynamic>()))).input(),
      loadBalancerArn: (map['loadBalancerArn'] as String).input(),
      loadBalancerListenerPort: (map['loadBalancerListenerPort'] as int).input(),
      loadBalancerTargetGroup: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisExplanationLoadBalancerTargetGroup>(map['loadBalancerTargetGroup']!, (value) => GetNetworkInsightsAnalysisExplanationLoadBalancerTargetGroup.fromMap((value as Map).cast<String, dynamic>()))).input(),
      loadBalancerTargetGroups: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisExplanationLoadBalancerTargetGroup>(map['loadBalancerTargetGroups']!, (value) => GetNetworkInsightsAnalysisExplanationLoadBalancerTargetGroup.fromMap((value as Map).cast<String, dynamic>()))).input(),
      loadBalancerTargetPort: (map['loadBalancerTargetPort'] as int).input(),
      missingComponent: (map['missingComponent'] as String).input(),
      natGateways: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisExplanationNatGateway>(map['natGateways']!, (value) => GetNetworkInsightsAnalysisExplanationNatGateway.fromMap((value as Map).cast<String, dynamic>()))).input(),
      networkInterfaces: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisExplanationNetworkInterface>(map['networkInterfaces']!, (value) => GetNetworkInsightsAnalysisExplanationNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))).input(),
      packetField: (map['packetField'] as String).input(),
      port: (map['port'] as int).input(),
      portRanges: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisExplanationPortRange>(map['portRanges']!, (value) => GetNetworkInsightsAnalysisExplanationPortRange.fromMap((value as Map).cast<String, dynamic>()))).input(),
      prefixLists: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisExplanationPrefixList>(map['prefixLists']!, (value) => GetNetworkInsightsAnalysisExplanationPrefixList.fromMap((value as Map).cast<String, dynamic>()))).input(),
      protocols: ((map['protocols'] as List).cast<String>()).input(),
      routeTableRoutes: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisExplanationRouteTableRoute>(map['routeTableRoutes']!, (value) => GetNetworkInsightsAnalysisExplanationRouteTableRoute.fromMap((value as Map).cast<String, dynamic>()))).input(),
      routeTables: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisExplanationRouteTable>(map['routeTables']!, (value) => GetNetworkInsightsAnalysisExplanationRouteTable.fromMap((value as Map).cast<String, dynamic>()))).input(),
      securityGroup: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisExplanationSecurityGroup>(map['securityGroup']!, (value) => GetNetworkInsightsAnalysisExplanationSecurityGroup.fromMap((value as Map).cast<String, dynamic>()))).input(),
      securityGroupRules: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisExplanationSecurityGroupRule>(map['securityGroupRules']!, (value) => GetNetworkInsightsAnalysisExplanationSecurityGroupRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      securityGroups: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisExplanationSecurityGroup>(map['securityGroups']!, (value) => GetNetworkInsightsAnalysisExplanationSecurityGroup.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sourceVpcs: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisExplanationSourceVpc>(map['sourceVpcs']!, (value) => GetNetworkInsightsAnalysisExplanationSourceVpc.fromMap((value as Map).cast<String, dynamic>()))).input(),
      state: (map['state'] as String).input(),
      subnetRouteTables: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisExplanationSubnetRouteTable>(map['subnetRouteTables']!, (value) => GetNetworkInsightsAnalysisExplanationSubnetRouteTable.fromMap((value as Map).cast<String, dynamic>()))).input(),
      subnets: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisExplanationSubnet>(map['subnets']!, (value) => GetNetworkInsightsAnalysisExplanationSubnet.fromMap((value as Map).cast<String, dynamic>()))).input(),
      transitGatewayAttachments: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisExplanationTransitGatewayAttachment>(map['transitGatewayAttachments']!, (value) => GetNetworkInsightsAnalysisExplanationTransitGatewayAttachment.fromMap((value as Map).cast<String, dynamic>()))).input(),
      transitGatewayRouteTableRoutes: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisExplanationTransitGatewayRouteTableRoute>(map['transitGatewayRouteTableRoutes']!, (value) => GetNetworkInsightsAnalysisExplanationTransitGatewayRouteTableRoute.fromMap((value as Map).cast<String, dynamic>()))).input(),
      transitGatewayRouteTables: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisExplanationTransitGatewayRouteTable>(map['transitGatewayRouteTables']!, (value) => GetNetworkInsightsAnalysisExplanationTransitGatewayRouteTable.fromMap((value as Map).cast<String, dynamic>()))).input(),
      transitGateways: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisExplanationTransitGateway>(map['transitGateways']!, (value) => GetNetworkInsightsAnalysisExplanationTransitGateway.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vpcEndpoints: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisExplanationVpcEndpoint>(map['vpcEndpoints']!, (value) => GetNetworkInsightsAnalysisExplanationVpcEndpoint.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vpcPeeringConnections: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisExplanationVpcPeeringConnection>(map['vpcPeeringConnections']!, (value) => GetNetworkInsightsAnalysisExplanationVpcPeeringConnection.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vpcs: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisExplanationVpc>(map['vpcs']!, (value) => GetNetworkInsightsAnalysisExplanationVpc.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vpnConnections: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisExplanationVpnConnection>(map['vpnConnections']!, (value) => GetNetworkInsightsAnalysisExplanationVpnConnection.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vpnGateways: (pulumi.Input.decodeList<GetNetworkInsightsAnalysisExplanationVpnGateway>(map['vpnGateways']!, (value) => GetNetworkInsightsAnalysisExplanationVpnGateway.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

