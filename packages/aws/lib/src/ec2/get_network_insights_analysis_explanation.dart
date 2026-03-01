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
      'aclRules':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisExplanationAclRule,
            Map<String, dynamic>
          >(aclRules, (value) => value.toMap()),
      'acls':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisExplanationAcl,
            Map<String, dynamic>
          >(acls, (value) => value.toMap()),
      'address': address,
      'addresses': addresses,
      'attachedTos':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisExplanationAttachedTo,
            Map<String, dynamic>
          >(attachedTos, (value) => value.toMap()),
      'availabilityZones': availabilityZones,
      'cidrs': cidrs,
      'classicLoadBalancerListeners':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisExplanationClassicLoadBalancerListener,
            Map<String, dynamic>
          >(classicLoadBalancerListeners, (value) => value.toMap()),
      'components':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisExplanationComponent,
            Map<String, dynamic>
          >(components, (value) => value.toMap()),
      'customerGateways':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisExplanationCustomerGateway,
            Map<String, dynamic>
          >(customerGateways, (value) => value.toMap()),
      'destinationVpcs':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisExplanationDestinationVpc,
            Map<String, dynamic>
          >(destinationVpcs, (value) => value.toMap()),
      'destinations':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisExplanationDestination,
            Map<String, dynamic>
          >(destinations, (value) => value.toMap()),
      'direction': direction,
      'elasticLoadBalancerListeners':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisExplanationElasticLoadBalancerListener,
            Map<String, dynamic>
          >(elasticLoadBalancerListeners, (value) => value.toMap()),
      'explanationCode': explanationCode,
      'ingressRouteTables':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisExplanationIngressRouteTable,
            Map<String, dynamic>
          >(ingressRouteTables, (value) => value.toMap()),
      'internetGateways':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisExplanationInternetGateway,
            Map<String, dynamic>
          >(internetGateways, (value) => value.toMap()),
      'loadBalancerArn': loadBalancerArn,
      'loadBalancerListenerPort': loadBalancerListenerPort,
      'loadBalancerTargetGroup':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisExplanationLoadBalancerTargetGroup,
            Map<String, dynamic>
          >(loadBalancerTargetGroup, (value) => value.toMap()),
      'loadBalancerTargetGroups':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisExplanationLoadBalancerTargetGroup,
            Map<String, dynamic>
          >(loadBalancerTargetGroups, (value) => value.toMap()),
      'loadBalancerTargetPort': loadBalancerTargetPort,
      'missingComponent': missingComponent,
      'natGateways':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisExplanationNatGateway,
            Map<String, dynamic>
          >(natGateways, (value) => value.toMap()),
      'networkInterfaces':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisExplanationNetworkInterface,
            Map<String, dynamic>
          >(networkInterfaces, (value) => value.toMap()),
      'packetField': packetField,
      'port': port,
      'portRanges':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisExplanationPortRange,
            Map<String, dynamic>
          >(portRanges, (value) => value.toMap()),
      'prefixLists':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisExplanationPrefixList,
            Map<String, dynamic>
          >(prefixLists, (value) => value.toMap()),
      'protocols': protocols,
      'routeTableRoutes':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisExplanationRouteTableRoute,
            Map<String, dynamic>
          >(routeTableRoutes, (value) => value.toMap()),
      'routeTables':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisExplanationRouteTable,
            Map<String, dynamic>
          >(routeTables, (value) => value.toMap()),
      'securityGroup':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisExplanationSecurityGroup,
            Map<String, dynamic>
          >(securityGroup, (value) => value.toMap()),
      'securityGroupRules':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisExplanationSecurityGroupRule,
            Map<String, dynamic>
          >(securityGroupRules, (value) => value.toMap()),
      'securityGroups':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisExplanationSecurityGroup,
            Map<String, dynamic>
          >(securityGroups, (value) => value.toMap()),
      'sourceVpcs':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisExplanationSourceVpc,
            Map<String, dynamic>
          >(sourceVpcs, (value) => value.toMap()),
      'state': state,
      'subnetRouteTables':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisExplanationSubnetRouteTable,
            Map<String, dynamic>
          >(subnetRouteTables, (value) => value.toMap()),
      'subnets':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisExplanationSubnet,
            Map<String, dynamic>
          >(subnets, (value) => value.toMap()),
      'transitGatewayAttachments':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisExplanationTransitGatewayAttachment,
            Map<String, dynamic>
          >(transitGatewayAttachments, (value) => value.toMap()),
      'transitGatewayRouteTableRoutes':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisExplanationTransitGatewayRouteTableRoute,
            Map<String, dynamic>
          >(transitGatewayRouteTableRoutes, (value) => value.toMap()),
      'transitGatewayRouteTables':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisExplanationTransitGatewayRouteTable,
            Map<String, dynamic>
          >(transitGatewayRouteTables, (value) => value.toMap()),
      'transitGateways':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisExplanationTransitGateway,
            Map<String, dynamic>
          >(transitGateways, (value) => value.toMap()),
      'vpcEndpoints':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisExplanationVpcEndpoint,
            Map<String, dynamic>
          >(vpcEndpoints, (value) => value.toMap()),
      'vpcPeeringConnections':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisExplanationVpcPeeringConnection,
            Map<String, dynamic>
          >(vpcPeeringConnections, (value) => value.toMap()),
      'vpcs':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisExplanationVpc,
            Map<String, dynamic>
          >(vpcs, (value) => value.toMap()),
      'vpnConnections':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisExplanationVpnConnection,
            Map<String, dynamic>
          >(vpnConnections, (value) => value.toMap()),
      'vpnGateways':
          pulumi.Input.encodeList<
            GetNetworkInsightsAnalysisExplanationVpnGateway,
            Map<String, dynamic>
          >(vpnGateways, (value) => value.toMap()),
    };
  }

  factory GetNetworkInsightsAnalysisExplanation.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetNetworkInsightsAnalysisExplanation(
      aclRules:
          pulumi.Input.decodeList<GetNetworkInsightsAnalysisExplanationAclRule>(
            map['aclRules'],
            (value) => GetNetworkInsightsAnalysisExplanationAclRule.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      acls: pulumi.Input.decodeList<GetNetworkInsightsAnalysisExplanationAcl>(
        map['acls'],
        (value) => GetNetworkInsightsAnalysisExplanationAcl.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      address: map['address'] as String,
      addresses: (map['addresses'] as List).cast<String>(),
      attachedTos:
          pulumi.Input.decodeList<
            GetNetworkInsightsAnalysisExplanationAttachedTo
          >(
            map['attachedTos'],
            (value) => GetNetworkInsightsAnalysisExplanationAttachedTo.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      availabilityZones: (map['availabilityZones'] as List).cast<String>(),
      cidrs: (map['cidrs'] as List).cast<String>(),
      classicLoadBalancerListeners:
          pulumi.Input.decodeList<
            GetNetworkInsightsAnalysisExplanationClassicLoadBalancerListener
          >(
            map['classicLoadBalancerListeners'],
            (value) =>
                GetNetworkInsightsAnalysisExplanationClassicLoadBalancerListener.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      components:
          pulumi
              .Input.decodeList<GetNetworkInsightsAnalysisExplanationComponent>(
            map['components'],
            (value) => GetNetworkInsightsAnalysisExplanationComponent.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      customerGateways:
          pulumi.Input.decodeList<
            GetNetworkInsightsAnalysisExplanationCustomerGateway
          >(
            map['customerGateways'],
            (value) =>
                GetNetworkInsightsAnalysisExplanationCustomerGateway.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      destinationVpcs:
          pulumi.Input.decodeList<
            GetNetworkInsightsAnalysisExplanationDestinationVpc
          >(
            map['destinationVpcs'],
            (value) =>
                GetNetworkInsightsAnalysisExplanationDestinationVpc.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      destinations:
          pulumi.Input.decodeList<
            GetNetworkInsightsAnalysisExplanationDestination
          >(
            map['destinations'],
            (value) => GetNetworkInsightsAnalysisExplanationDestination.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      direction: map['direction'] as String,
      elasticLoadBalancerListeners:
          pulumi.Input.decodeList<
            GetNetworkInsightsAnalysisExplanationElasticLoadBalancerListener
          >(
            map['elasticLoadBalancerListeners'],
            (value) =>
                GetNetworkInsightsAnalysisExplanationElasticLoadBalancerListener.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      explanationCode: map['explanationCode'] as String,
      ingressRouteTables:
          pulumi.Input.decodeList<
            GetNetworkInsightsAnalysisExplanationIngressRouteTable
          >(
            map['ingressRouteTables'],
            (value) =>
                GetNetworkInsightsAnalysisExplanationIngressRouteTable.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      internetGateways:
          pulumi.Input.decodeList<
            GetNetworkInsightsAnalysisExplanationInternetGateway
          >(
            map['internetGateways'],
            (value) =>
                GetNetworkInsightsAnalysisExplanationInternetGateway.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      loadBalancerArn: map['loadBalancerArn'] as String,
      loadBalancerListenerPort: map['loadBalancerListenerPort'] as int,
      loadBalancerTargetGroup:
          pulumi.Input.decodeList<
            GetNetworkInsightsAnalysisExplanationLoadBalancerTargetGroup
          >(
            map['loadBalancerTargetGroup'],
            (value) =>
                GetNetworkInsightsAnalysisExplanationLoadBalancerTargetGroup.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      loadBalancerTargetGroups:
          pulumi.Input.decodeList<
            GetNetworkInsightsAnalysisExplanationLoadBalancerTargetGroup
          >(
            map['loadBalancerTargetGroups'],
            (value) =>
                GetNetworkInsightsAnalysisExplanationLoadBalancerTargetGroup.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      loadBalancerTargetPort: map['loadBalancerTargetPort'] as int,
      missingComponent: map['missingComponent'] as String,
      natGateways:
          pulumi.Input.decodeList<
            GetNetworkInsightsAnalysisExplanationNatGateway
          >(
            map['natGateways'],
            (value) => GetNetworkInsightsAnalysisExplanationNatGateway.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      networkInterfaces:
          pulumi.Input.decodeList<
            GetNetworkInsightsAnalysisExplanationNetworkInterface
          >(
            map['networkInterfaces'],
            (value) =>
                GetNetworkInsightsAnalysisExplanationNetworkInterface.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      packetField: map['packetField'] as String,
      port: map['port'] as int,
      portRanges:
          pulumi
              .Input.decodeList<GetNetworkInsightsAnalysisExplanationPortRange>(
            map['portRanges'],
            (value) => GetNetworkInsightsAnalysisExplanationPortRange.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      prefixLists:
          pulumi.Input.decodeList<
            GetNetworkInsightsAnalysisExplanationPrefixList
          >(
            map['prefixLists'],
            (value) => GetNetworkInsightsAnalysisExplanationPrefixList.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      protocols: (map['protocols'] as List).cast<String>(),
      routeTableRoutes:
          pulumi.Input.decodeList<
            GetNetworkInsightsAnalysisExplanationRouteTableRoute
          >(
            map['routeTableRoutes'],
            (value) =>
                GetNetworkInsightsAnalysisExplanationRouteTableRoute.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      routeTables:
          pulumi.Input.decodeList<
            GetNetworkInsightsAnalysisExplanationRouteTable
          >(
            map['routeTables'],
            (value) => GetNetworkInsightsAnalysisExplanationRouteTable.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      securityGroup:
          pulumi.Input.decodeList<
            GetNetworkInsightsAnalysisExplanationSecurityGroup
          >(
            map['securityGroup'],
            (value) =>
                GetNetworkInsightsAnalysisExplanationSecurityGroup.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      securityGroupRules:
          pulumi.Input.decodeList<
            GetNetworkInsightsAnalysisExplanationSecurityGroupRule
          >(
            map['securityGroupRules'],
            (value) =>
                GetNetworkInsightsAnalysisExplanationSecurityGroupRule.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      securityGroups:
          pulumi.Input.decodeList<
            GetNetworkInsightsAnalysisExplanationSecurityGroup
          >(
            map['securityGroups'],
            (value) =>
                GetNetworkInsightsAnalysisExplanationSecurityGroup.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      sourceVpcs:
          pulumi
              .Input.decodeList<GetNetworkInsightsAnalysisExplanationSourceVpc>(
            map['sourceVpcs'],
            (value) => GetNetworkInsightsAnalysisExplanationSourceVpc.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      state: map['state'] as String,
      subnetRouteTables:
          pulumi.Input.decodeList<
            GetNetworkInsightsAnalysisExplanationSubnetRouteTable
          >(
            map['subnetRouteTables'],
            (value) =>
                GetNetworkInsightsAnalysisExplanationSubnetRouteTable.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      subnets:
          pulumi.Input.decodeList<GetNetworkInsightsAnalysisExplanationSubnet>(
            map['subnets'],
            (value) => GetNetworkInsightsAnalysisExplanationSubnet.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      transitGatewayAttachments:
          pulumi.Input.decodeList<
            GetNetworkInsightsAnalysisExplanationTransitGatewayAttachment
          >(
            map['transitGatewayAttachments'],
            (value) =>
                GetNetworkInsightsAnalysisExplanationTransitGatewayAttachment.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      transitGatewayRouteTableRoutes:
          pulumi.Input.decodeList<
            GetNetworkInsightsAnalysisExplanationTransitGatewayRouteTableRoute
          >(
            map['transitGatewayRouteTableRoutes'],
            (value) =>
                GetNetworkInsightsAnalysisExplanationTransitGatewayRouteTableRoute.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      transitGatewayRouteTables:
          pulumi.Input.decodeList<
            GetNetworkInsightsAnalysisExplanationTransitGatewayRouteTable
          >(
            map['transitGatewayRouteTables'],
            (value) =>
                GetNetworkInsightsAnalysisExplanationTransitGatewayRouteTable.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      transitGateways:
          pulumi.Input.decodeList<
            GetNetworkInsightsAnalysisExplanationTransitGateway
          >(
            map['transitGateways'],
            (value) =>
                GetNetworkInsightsAnalysisExplanationTransitGateway.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      vpcEndpoints:
          pulumi.Input.decodeList<
            GetNetworkInsightsAnalysisExplanationVpcEndpoint
          >(
            map['vpcEndpoints'],
            (value) => GetNetworkInsightsAnalysisExplanationVpcEndpoint.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      vpcPeeringConnections:
          pulumi.Input.decodeList<
            GetNetworkInsightsAnalysisExplanationVpcPeeringConnection
          >(
            map['vpcPeeringConnections'],
            (value) =>
                GetNetworkInsightsAnalysisExplanationVpcPeeringConnection.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      vpcs: pulumi.Input.decodeList<GetNetworkInsightsAnalysisExplanationVpc>(
        map['vpcs'],
        (value) => GetNetworkInsightsAnalysisExplanationVpc.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      vpnConnections:
          pulumi.Input.decodeList<
            GetNetworkInsightsAnalysisExplanationVpnConnection
          >(
            map['vpnConnections'],
            (value) =>
                GetNetworkInsightsAnalysisExplanationVpnConnection.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      vpnGateways:
          pulumi.Input.decodeList<
            GetNetworkInsightsAnalysisExplanationVpnGateway
          >(
            map['vpnGateways'],
            (value) => GetNetworkInsightsAnalysisExplanationVpnGateway.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
    );
  }
}
