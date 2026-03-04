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
  final pulumi.Input<List<NetworkInsightsAnalysisExplanationAclRule>>? aclRules;
  final pulumi.Input<List<NetworkInsightsAnalysisExplanationAcl>>? acls;
  final pulumi.Input<String>? address;
  final pulumi.Input<List<String>>? addresses;
  final pulumi.Input<List<NetworkInsightsAnalysisExplanationAttachedTo>>?
  attachedTos;
  final pulumi.Input<List<String>>? availabilityZones;
  final pulumi.Input<List<String>>? cidrs;
  final pulumi.Input<
    List<NetworkInsightsAnalysisExplanationClassicLoadBalancerListener>
  >?
  classicLoadBalancerListeners;
  final pulumi.Input<List<NetworkInsightsAnalysisExplanationComponent>>?
  components;
  final pulumi.Input<List<NetworkInsightsAnalysisExplanationCustomerGateway>>?
  customerGateways;
  final pulumi.Input<List<NetworkInsightsAnalysisExplanationDestinationVpc>>?
  destinationVpcs;
  final pulumi.Input<List<NetworkInsightsAnalysisExplanationDestination>>?
  destinations;
  final pulumi.Input<String>? direction;
  final pulumi.Input<
    List<NetworkInsightsAnalysisExplanationElasticLoadBalancerListener>
  >?
  elasticLoadBalancerListeners;
  final pulumi.Input<String>? explanationCode;
  final pulumi.Input<List<NetworkInsightsAnalysisExplanationIngressRouteTable>>?
  ingressRouteTables;
  final pulumi.Input<List<NetworkInsightsAnalysisExplanationInternetGateway>>?
  internetGateways;
  final pulumi.Input<String>? loadBalancerArn;
  final pulumi.Input<int>? loadBalancerListenerPort;
  final pulumi.Input<
    List<NetworkInsightsAnalysisExplanationLoadBalancerTargetGroup>
  >?
  loadBalancerTargetGroup;
  final pulumi.Input<
    List<NetworkInsightsAnalysisExplanationLoadBalancerTargetGroup>
  >?
  loadBalancerTargetGroups;
  final pulumi.Input<int>? loadBalancerTargetPort;
  final pulumi.Input<String>? missingComponent;
  final pulumi.Input<List<NetworkInsightsAnalysisExplanationNatGateway>>?
  natGateways;
  final pulumi.Input<List<NetworkInsightsAnalysisExplanationNetworkInterface>>?
  networkInterfaces;
  final pulumi.Input<String>? packetField;
  final pulumi.Input<int>? port;
  final pulumi.Input<List<NetworkInsightsAnalysisExplanationPortRange>>?
  portRanges;
  final pulumi.Input<List<NetworkInsightsAnalysisExplanationPrefixList>>?
  prefixLists;
  final pulumi.Input<List<String>>? protocols;
  final pulumi.Input<List<NetworkInsightsAnalysisExplanationRouteTableRoute>>?
  routeTableRoutes;
  final pulumi.Input<List<NetworkInsightsAnalysisExplanationRouteTable>>?
  routeTables;
  final pulumi.Input<List<NetworkInsightsAnalysisExplanationSecurityGroup>>?
  securityGroup;
  final pulumi.Input<List<NetworkInsightsAnalysisExplanationSecurityGroupRule>>?
  securityGroupRules;
  final pulumi.Input<List<NetworkInsightsAnalysisExplanationSecurityGroup>>?
  securityGroups;
  final pulumi.Input<List<NetworkInsightsAnalysisExplanationSourceVpc>>?
  sourceVpcs;
  final pulumi.Input<String>? state;
  final pulumi.Input<List<NetworkInsightsAnalysisExplanationSubnetRouteTable>>?
  subnetRouteTables;
  final pulumi.Input<List<NetworkInsightsAnalysisExplanationSubnet>>? subnets;
  final pulumi.Input<
    List<NetworkInsightsAnalysisExplanationTransitGatewayAttachment>
  >?
  transitGatewayAttachments;
  final pulumi.Input<
    List<NetworkInsightsAnalysisExplanationTransitGatewayRouteTableRoute>
  >?
  transitGatewayRouteTableRoutes;
  final pulumi.Input<
    List<NetworkInsightsAnalysisExplanationTransitGatewayRouteTable>
  >?
  transitGatewayRouteTables;
  final pulumi.Input<List<NetworkInsightsAnalysisExplanationTransitGateway>>?
  transitGateways;
  final pulumi.Input<List<NetworkInsightsAnalysisExplanationVpcEndpoint>>?
  vpcEndpoints;
  final pulumi.Input<
    List<NetworkInsightsAnalysisExplanationVpcPeeringConnection>
  >?
  vpcPeeringConnections;
  final pulumi.Input<List<NetworkInsightsAnalysisExplanationVpc>>? vpcs;
  final pulumi.Input<List<NetworkInsightsAnalysisExplanationVpnConnection>>?
  vpnConnections;
  final pulumi.Input<List<NetworkInsightsAnalysisExplanationVpnGateway>>?
  vpnGateways;

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
      'aclRules':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkInsightsAnalysisExplanationAclRule>,
            List<Map<String, dynamic>>
          >(
            aclRules,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkInsightsAnalysisExplanationAclRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'acls':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkInsightsAnalysisExplanationAcl>,
            List<Map<String, dynamic>>
          >(
            acls,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkInsightsAnalysisExplanationAcl,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'address': ?address,
      'addresses': ?addresses,
      'attachedTos':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkInsightsAnalysisExplanationAttachedTo>,
            List<Map<String, dynamic>>
          >(
            attachedTos,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkInsightsAnalysisExplanationAttachedTo,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'availabilityZones': ?availabilityZones,
      'cidrs': ?cidrs,
      'classicLoadBalancerListeners':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkInsightsAnalysisExplanationClassicLoadBalancerListener>,
            List<Map<String, dynamic>>
          >(
            classicLoadBalancerListeners,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkInsightsAnalysisExplanationClassicLoadBalancerListener,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'components':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkInsightsAnalysisExplanationComponent>,
            List<Map<String, dynamic>>
          >(
            components,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkInsightsAnalysisExplanationComponent,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'customerGateways':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkInsightsAnalysisExplanationCustomerGateway>,
            List<Map<String, dynamic>>
          >(
            customerGateways,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkInsightsAnalysisExplanationCustomerGateway,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'destinationVpcs':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkInsightsAnalysisExplanationDestinationVpc>,
            List<Map<String, dynamic>>
          >(
            destinationVpcs,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkInsightsAnalysisExplanationDestinationVpc,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'destinations':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkInsightsAnalysisExplanationDestination>,
            List<Map<String, dynamic>>
          >(
            destinations,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkInsightsAnalysisExplanationDestination,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'direction': ?direction,
      'elasticLoadBalancerListeners':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkInsightsAnalysisExplanationElasticLoadBalancerListener>,
            List<Map<String, dynamic>>
          >(
            elasticLoadBalancerListeners,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkInsightsAnalysisExplanationElasticLoadBalancerListener,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'explanationCode': ?explanationCode,
      'ingressRouteTables':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkInsightsAnalysisExplanationIngressRouteTable>,
            List<Map<String, dynamic>>
          >(
            ingressRouteTables,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkInsightsAnalysisExplanationIngressRouteTable,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'internetGateways':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkInsightsAnalysisExplanationInternetGateway>,
            List<Map<String, dynamic>>
          >(
            internetGateways,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkInsightsAnalysisExplanationInternetGateway,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'loadBalancerArn': ?loadBalancerArn,
      'loadBalancerListenerPort': ?loadBalancerListenerPort,
      'loadBalancerTargetGroup':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkInsightsAnalysisExplanationLoadBalancerTargetGroup>,
            List<Map<String, dynamic>>
          >(
            loadBalancerTargetGroup,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkInsightsAnalysisExplanationLoadBalancerTargetGroup,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'loadBalancerTargetGroups':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkInsightsAnalysisExplanationLoadBalancerTargetGroup>,
            List<Map<String, dynamic>>
          >(
            loadBalancerTargetGroups,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkInsightsAnalysisExplanationLoadBalancerTargetGroup,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'loadBalancerTargetPort': ?loadBalancerTargetPort,
      'missingComponent': ?missingComponent,
      'natGateways':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkInsightsAnalysisExplanationNatGateway>,
            List<Map<String, dynamic>>
          >(
            natGateways,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkInsightsAnalysisExplanationNatGateway,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'networkInterfaces':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkInsightsAnalysisExplanationNetworkInterface>,
            List<Map<String, dynamic>>
          >(
            networkInterfaces,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkInsightsAnalysisExplanationNetworkInterface,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'packetField': ?packetField,
      'port': ?port,
      'portRanges':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkInsightsAnalysisExplanationPortRange>,
            List<Map<String, dynamic>>
          >(
            portRanges,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkInsightsAnalysisExplanationPortRange,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'prefixLists':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkInsightsAnalysisExplanationPrefixList>,
            List<Map<String, dynamic>>
          >(
            prefixLists,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkInsightsAnalysisExplanationPrefixList,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'protocols': ?protocols,
      'routeTableRoutes':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkInsightsAnalysisExplanationRouteTableRoute>,
            List<Map<String, dynamic>>
          >(
            routeTableRoutes,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkInsightsAnalysisExplanationRouteTableRoute,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'routeTables':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkInsightsAnalysisExplanationRouteTable>,
            List<Map<String, dynamic>>
          >(
            routeTables,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkInsightsAnalysisExplanationRouteTable,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'securityGroup':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkInsightsAnalysisExplanationSecurityGroup>,
            List<Map<String, dynamic>>
          >(
            securityGroup,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkInsightsAnalysisExplanationSecurityGroup,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'securityGroupRules':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkInsightsAnalysisExplanationSecurityGroupRule>,
            List<Map<String, dynamic>>
          >(
            securityGroupRules,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkInsightsAnalysisExplanationSecurityGroupRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'securityGroups':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkInsightsAnalysisExplanationSecurityGroup>,
            List<Map<String, dynamic>>
          >(
            securityGroups,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkInsightsAnalysisExplanationSecurityGroup,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'sourceVpcs':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkInsightsAnalysisExplanationSourceVpc>,
            List<Map<String, dynamic>>
          >(
            sourceVpcs,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkInsightsAnalysisExplanationSourceVpc,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'state': ?state,
      'subnetRouteTables':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkInsightsAnalysisExplanationSubnetRouteTable>,
            List<Map<String, dynamic>>
          >(
            subnetRouteTables,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkInsightsAnalysisExplanationSubnetRouteTable,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'subnets':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkInsightsAnalysisExplanationSubnet>,
            List<Map<String, dynamic>>
          >(
            subnets,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkInsightsAnalysisExplanationSubnet,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'transitGatewayAttachments':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkInsightsAnalysisExplanationTransitGatewayAttachment>,
            List<Map<String, dynamic>>
          >(
            transitGatewayAttachments,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkInsightsAnalysisExplanationTransitGatewayAttachment,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'transitGatewayRouteTableRoutes':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              NetworkInsightsAnalysisExplanationTransitGatewayRouteTableRoute
            >,
            List<Map<String, dynamic>>
          >(
            transitGatewayRouteTableRoutes,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkInsightsAnalysisExplanationTransitGatewayRouteTableRoute,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'transitGatewayRouteTables':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkInsightsAnalysisExplanationTransitGatewayRouteTable>,
            List<Map<String, dynamic>>
          >(
            transitGatewayRouteTables,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkInsightsAnalysisExplanationTransitGatewayRouteTable,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'transitGateways':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkInsightsAnalysisExplanationTransitGateway>,
            List<Map<String, dynamic>>
          >(
            transitGateways,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkInsightsAnalysisExplanationTransitGateway,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'vpcEndpoints':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkInsightsAnalysisExplanationVpcEndpoint>,
            List<Map<String, dynamic>>
          >(
            vpcEndpoints,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkInsightsAnalysisExplanationVpcEndpoint,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'vpcPeeringConnections':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkInsightsAnalysisExplanationVpcPeeringConnection>,
            List<Map<String, dynamic>>
          >(
            vpcPeeringConnections,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkInsightsAnalysisExplanationVpcPeeringConnection,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'vpcs':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkInsightsAnalysisExplanationVpc>,
            List<Map<String, dynamic>>
          >(
            vpcs,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkInsightsAnalysisExplanationVpc,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'vpnConnections':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkInsightsAnalysisExplanationVpnConnection>,
            List<Map<String, dynamic>>
          >(
            vpnConnections,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkInsightsAnalysisExplanationVpnConnection,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'vpnGateways':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkInsightsAnalysisExplanationVpnGateway>,
            List<Map<String, dynamic>>
          >(
            vpnGateways,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkInsightsAnalysisExplanationVpnGateway,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory NetworkInsightsAnalysisExplanation.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsAnalysisExplanation(
      aclRules: (() {
        final guardedValue = map['aclRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationAclRule>(
            guardedValue,
            (value) => NetworkInsightsAnalysisExplanationAclRule.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      acls: (() {
        final guardedValue = map['acls'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationAcl>(
            guardedValue,
            (value) => NetworkInsightsAnalysisExplanationAcl.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      address: (() {
        final guardedValue = map['address'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      addresses: (() {
        final guardedValue = map['addresses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      attachedTos: (() {
        final guardedValue = map['attachedTos'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationAttachedTo>(
            guardedValue,
            (value) => NetworkInsightsAnalysisExplanationAttachedTo.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      availabilityZones: (() {
        final guardedValue = map['availabilityZones'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      cidrs: (() {
        final guardedValue = map['cidrs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      classicLoadBalancerListeners: (() {
        final guardedValue = map['classicLoadBalancerListeners'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            NetworkInsightsAnalysisExplanationClassicLoadBalancerListener
          >(
            guardedValue,
            (value) =>
                NetworkInsightsAnalysisExplanationClassicLoadBalancerListener.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      components: (() {
        final guardedValue = map['components'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationComponent>(
            guardedValue,
            (value) => NetworkInsightsAnalysisExplanationComponent.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      customerGateways: (() {
        final guardedValue = map['customerGateways'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            NetworkInsightsAnalysisExplanationCustomerGateway
          >(
            guardedValue,
            (value) =>
                NetworkInsightsAnalysisExplanationCustomerGateway.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      destinationVpcs: (() {
        final guardedValue = map['destinationVpcs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            NetworkInsightsAnalysisExplanationDestinationVpc
          >(
            guardedValue,
            (value) => NetworkInsightsAnalysisExplanationDestinationVpc.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      destinations: (() {
        final guardedValue = map['destinations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi
              .Input.decodeList<NetworkInsightsAnalysisExplanationDestination>(
            guardedValue,
            (value) => NetworkInsightsAnalysisExplanationDestination.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      direction: (() {
        final guardedValue = map['direction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      elasticLoadBalancerListeners: (() {
        final guardedValue = map['elasticLoadBalancerListeners'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            NetworkInsightsAnalysisExplanationElasticLoadBalancerListener
          >(
            guardedValue,
            (value) =>
                NetworkInsightsAnalysisExplanationElasticLoadBalancerListener.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      explanationCode: (() {
        final guardedValue = map['explanationCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ingressRouteTables: (() {
        final guardedValue = map['ingressRouteTables'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            NetworkInsightsAnalysisExplanationIngressRouteTable
          >(
            guardedValue,
            (value) =>
                NetworkInsightsAnalysisExplanationIngressRouteTable.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      internetGateways: (() {
        final guardedValue = map['internetGateways'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            NetworkInsightsAnalysisExplanationInternetGateway
          >(
            guardedValue,
            (value) =>
                NetworkInsightsAnalysisExplanationInternetGateway.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      loadBalancerArn: (() {
        final guardedValue = map['loadBalancerArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      loadBalancerListenerPort: (() {
        final guardedValue = map['loadBalancerListenerPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      loadBalancerTargetGroup: (() {
        final guardedValue = map['loadBalancerTargetGroup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            NetworkInsightsAnalysisExplanationLoadBalancerTargetGroup
          >(
            guardedValue,
            (value) =>
                NetworkInsightsAnalysisExplanationLoadBalancerTargetGroup.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      loadBalancerTargetGroups: (() {
        final guardedValue = map['loadBalancerTargetGroups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            NetworkInsightsAnalysisExplanationLoadBalancerTargetGroup
          >(
            guardedValue,
            (value) =>
                NetworkInsightsAnalysisExplanationLoadBalancerTargetGroup.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      loadBalancerTargetPort: (() {
        final guardedValue = map['loadBalancerTargetPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      missingComponent: (() {
        final guardedValue = map['missingComponent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      natGateways: (() {
        final guardedValue = map['natGateways'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationNatGateway>(
            guardedValue,
            (value) => NetworkInsightsAnalysisExplanationNatGateway.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      networkInterfaces: (() {
        final guardedValue = map['networkInterfaces'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            NetworkInsightsAnalysisExplanationNetworkInterface
          >(
            guardedValue,
            (value) =>
                NetworkInsightsAnalysisExplanationNetworkInterface.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      packetField: (() {
        final guardedValue = map['packetField'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      portRanges: (() {
        final guardedValue = map['portRanges'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationPortRange>(
            guardedValue,
            (value) => NetworkInsightsAnalysisExplanationPortRange.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      prefixLists: (() {
        final guardedValue = map['prefixLists'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationPrefixList>(
            guardedValue,
            (value) => NetworkInsightsAnalysisExplanationPrefixList.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      protocols: (() {
        final guardedValue = map['protocols'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      routeTableRoutes: (() {
        final guardedValue = map['routeTableRoutes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            NetworkInsightsAnalysisExplanationRouteTableRoute
          >(
            guardedValue,
            (value) =>
                NetworkInsightsAnalysisExplanationRouteTableRoute.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      routeTables: (() {
        final guardedValue = map['routeTables'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationRouteTable>(
            guardedValue,
            (value) => NetworkInsightsAnalysisExplanationRouteTable.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      securityGroup: (() {
        final guardedValue = map['securityGroup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            NetworkInsightsAnalysisExplanationSecurityGroup
          >(
            guardedValue,
            (value) => NetworkInsightsAnalysisExplanationSecurityGroup.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      securityGroupRules: (() {
        final guardedValue = map['securityGroupRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            NetworkInsightsAnalysisExplanationSecurityGroupRule
          >(
            guardedValue,
            (value) =>
                NetworkInsightsAnalysisExplanationSecurityGroupRule.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      securityGroups: (() {
        final guardedValue = map['securityGroups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            NetworkInsightsAnalysisExplanationSecurityGroup
          >(
            guardedValue,
            (value) => NetworkInsightsAnalysisExplanationSecurityGroup.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      sourceVpcs: (() {
        final guardedValue = map['sourceVpcs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationSourceVpc>(
            guardedValue,
            (value) => NetworkInsightsAnalysisExplanationSourceVpc.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subnetRouteTables: (() {
        final guardedValue = map['subnetRouteTables'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            NetworkInsightsAnalysisExplanationSubnetRouteTable
          >(
            guardedValue,
            (value) =>
                NetworkInsightsAnalysisExplanationSubnetRouteTable.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      subnets: (() {
        final guardedValue = map['subnets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationSubnet>(
            guardedValue,
            (value) => NetworkInsightsAnalysisExplanationSubnet.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      transitGatewayAttachments: (() {
        final guardedValue = map['transitGatewayAttachments'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            NetworkInsightsAnalysisExplanationTransitGatewayAttachment
          >(
            guardedValue,
            (value) =>
                NetworkInsightsAnalysisExplanationTransitGatewayAttachment.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      transitGatewayRouteTableRoutes: (() {
        final guardedValue = map['transitGatewayRouteTableRoutes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            NetworkInsightsAnalysisExplanationTransitGatewayRouteTableRoute
          >(
            guardedValue,
            (value) =>
                NetworkInsightsAnalysisExplanationTransitGatewayRouteTableRoute.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      transitGatewayRouteTables: (() {
        final guardedValue = map['transitGatewayRouteTables'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            NetworkInsightsAnalysisExplanationTransitGatewayRouteTable
          >(
            guardedValue,
            (value) =>
                NetworkInsightsAnalysisExplanationTransitGatewayRouteTable.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      transitGateways: (() {
        final guardedValue = map['transitGateways'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            NetworkInsightsAnalysisExplanationTransitGateway
          >(
            guardedValue,
            (value) => NetworkInsightsAnalysisExplanationTransitGateway.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      vpcEndpoints: (() {
        final guardedValue = map['vpcEndpoints'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi
              .Input.decodeList<NetworkInsightsAnalysisExplanationVpcEndpoint>(
            guardedValue,
            (value) => NetworkInsightsAnalysisExplanationVpcEndpoint.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      vpcPeeringConnections: (() {
        final guardedValue = map['vpcPeeringConnections'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            NetworkInsightsAnalysisExplanationVpcPeeringConnection
          >(
            guardedValue,
            (value) =>
                NetworkInsightsAnalysisExplanationVpcPeeringConnection.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      vpcs: (() {
        final guardedValue = map['vpcs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationVpc>(
            guardedValue,
            (value) => NetworkInsightsAnalysisExplanationVpc.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      vpnConnections: (() {
        final guardedValue = map['vpnConnections'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            NetworkInsightsAnalysisExplanationVpnConnection
          >(
            guardedValue,
            (value) => NetworkInsightsAnalysisExplanationVpnConnection.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      vpnGateways: (() {
        final guardedValue = map['vpnGateways'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NetworkInsightsAnalysisExplanationVpnGateway>(
            guardedValue,
            (value) => NetworkInsightsAnalysisExplanationVpnGateway.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
