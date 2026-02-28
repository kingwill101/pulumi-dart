// ignore_for_file: unused_element, unnecessary_cast

import 'abort_info_response.dart';
import 'app_engine_version_info_response.dart';
import 'cloud_function_info_response.dart';
import 'cloud_run_revision_info_response.dart';
import 'cloud_sqlinstance_info_response.dart';
import 'deliver_info_response.dart';
import 'drop_info_response.dart';
import 'endpoint_info_response.dart';
import 'firewall_info_response.dart';
import 'forward_info_response.dart';
import 'forwarding_rule_info_response.dart';
import 'gkemaster_info_response.dart';
import 'google_service_info_response.dart';
import 'instance_info_response.dart';
import 'load_balancer_info_response.dart';
import 'network_info_response.dart';
import 'route_info_response.dart';
import 'vpc_connector_info_response.dart';
import 'vpn_gateway_info_response.dart';
import 'vpn_tunnel_info_response.dart';

/// A simulated forwarding path is composed of multiple steps. Each step has a well-defined state and an associated configuration.
class StepResponse {
  /// Display information of the final state "abort" and reason.
  final AbortInfoResponse abort;
  /// Display information of an App Engine service version.
  final AppEngineVersionInfoResponse appEngineVersion;
  /// This is a step that leads to the final state Drop.
  final bool causesDrop;
  /// Display information of a Cloud Function.
  final CloudFunctionInfoResponse cloudFunction;
  /// Display information of a Cloud Run revision.
  final CloudRunRevisionInfoResponse cloudRunRevision;
  /// Display information of a Cloud SQL instance.
  final CloudSQLInstanceInfoResponse cloudSqlInstance;
  /// Display information of the final state "deliver" and reason.
  final DeliverInfoResponse deliver;
  /// A description of the step. Usually this is a summary of the state.
  final String description;
  /// Display information of the final state "drop" and reason.
  final DropInfoResponse drop;
  /// Display information of the source and destination under analysis. The endpoint information in an intermediate state may differ with the initial input, as it might be modified by state like NAT, or Connection Proxy.
  final EndpointInfoResponse endpoint;
  /// Display information of a Compute Engine firewall rule.
  final FirewallInfoResponse firewall;
  /// Display information of the final state "forward" and reason.
  final ForwardInfoResponse forward;
  /// Display information of a Compute Engine forwarding rule.
  final ForwardingRuleInfoResponse forwardingRule;
  /// Display information of a Google Kubernetes Engine cluster master.
  final GKEMasterInfoResponse gkeMaster;
  /// Display information of a Google service
  final GoogleServiceInfoResponse googleService;
  /// Display information of a Compute Engine instance.
  final InstanceInfoResponse instance;
  /// Display information of the load balancers.
  final LoadBalancerInfoResponse loadBalancer;
  /// Display information of a Google Cloud network.
  final NetworkInfoResponse network;
  /// Project ID that contains the configuration this step is validating.
  final String project;
  /// Display information of a Compute Engine route.
  final RouteInfoResponse route;
  /// Each step is in one of the pre-defined states.
  final String state;
  /// Display information of a VPC connector.
  final VpcConnectorInfoResponse vpcConnector;
  /// Display information of a Compute Engine VPN gateway.
  final VpnGatewayInfoResponse vpnGateway;
  /// Display information of a Compute Engine VPN tunnel.
  final VpnTunnelInfoResponse vpnTunnel;

  /// Creates a new [StepResponse].
  /// [abort] Display information of the final state "abort" and reason.
  /// [appEngineVersion] Display information of an App Engine service version.
  /// [causesDrop] This is a step that leads to the final state Drop.
  /// [cloudFunction] Display information of a Cloud Function.
  /// [cloudRunRevision] Display information of a Cloud Run revision.
  /// [cloudSqlInstance] Display information of a Cloud SQL instance.
  /// [deliver] Display information of the final state "deliver" and reason.
  /// [description] A description of the step. Usually this is a summary of the state.
  /// [drop] Display information of the final state "drop" and reason.
  /// [endpoint] Display information of the source and destination under analysis. The endpoint information in an intermediate state may differ with the initial input, as it might be modified by state like NAT, or Connection Proxy.
  /// [firewall] Display information of a Compute Engine firewall rule.
  /// [forward] Display information of the final state "forward" and reason.
  /// [forwardingRule] Display information of a Compute Engine forwarding rule.
  /// [gkeMaster] Display information of a Google Kubernetes Engine cluster master.
  /// [googleService] Display information of a Google service
  /// [instance] Display information of a Compute Engine instance.
  /// [loadBalancer] Display information of the load balancers.
  /// [network] Display information of a Google Cloud network.
  /// [project] Project ID that contains the configuration this step is validating.
  /// [route] Display information of a Compute Engine route.
  /// [state] Each step is in one of the pre-defined states.
  /// [vpcConnector] Display information of a VPC connector.
  /// [vpnGateway] Display information of a Compute Engine VPN gateway.
  /// [vpnTunnel] Display information of a Compute Engine VPN tunnel.
  StepResponse({
    required this.abort,
    required this.appEngineVersion,
    required this.causesDrop,
    required this.cloudFunction,
    required this.cloudRunRevision,
    required this.cloudSqlInstance,
    required this.deliver,
    required this.description,
    required this.drop,
    required this.endpoint,
    required this.firewall,
    required this.forward,
    required this.forwardingRule,
    required this.gkeMaster,
    required this.googleService,
    required this.instance,
    required this.loadBalancer,
    required this.network,
    required this.project,
    required this.route,
    required this.state,
    required this.vpcConnector,
    required this.vpnGateway,
    required this.vpnTunnel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abort': abort.toMap(),
      'appEngineVersion': appEngineVersion.toMap(),
      'causesDrop': causesDrop,
      'cloudFunction': cloudFunction.toMap(),
      'cloudRunRevision': cloudRunRevision.toMap(),
      'cloudSqlInstance': cloudSqlInstance.toMap(),
      'deliver': deliver.toMap(),
      'description': description,
      'drop': drop.toMap(),
      'endpoint': endpoint.toMap(),
      'firewall': firewall.toMap(),
      'forward': forward.toMap(),
      'forwardingRule': forwardingRule.toMap(),
      'gkeMaster': gkeMaster.toMap(),
      'googleService': googleService.toMap(),
      'instance': instance.toMap(),
      'loadBalancer': loadBalancer.toMap(),
      'network': network.toMap(),
      'project': project,
      'route': route.toMap(),
      'state': state,
      'vpcConnector': vpcConnector.toMap(),
      'vpnGateway': vpnGateway.toMap(),
      'vpnTunnel': vpnTunnel.toMap(),
    };
  }

  factory StepResponse.fromMap(Map<String, dynamic> map) {
    return StepResponse(
      abort: AbortInfoResponse.fromMap((map['abort'] as Map).cast<String, dynamic>()),
      appEngineVersion: AppEngineVersionInfoResponse.fromMap((map['appEngineVersion'] as Map).cast<String, dynamic>()),
      causesDrop: map['causesDrop'] as bool,
      cloudFunction: CloudFunctionInfoResponse.fromMap((map['cloudFunction'] as Map).cast<String, dynamic>()),
      cloudRunRevision: CloudRunRevisionInfoResponse.fromMap((map['cloudRunRevision'] as Map).cast<String, dynamic>()),
      cloudSqlInstance: CloudSQLInstanceInfoResponse.fromMap((map['cloudSqlInstance'] as Map).cast<String, dynamic>()),
      deliver: DeliverInfoResponse.fromMap((map['deliver'] as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      drop: DropInfoResponse.fromMap((map['drop'] as Map).cast<String, dynamic>()),
      endpoint: EndpointInfoResponse.fromMap((map['endpoint'] as Map).cast<String, dynamic>()),
      firewall: FirewallInfoResponse.fromMap((map['firewall'] as Map).cast<String, dynamic>()),
      forward: ForwardInfoResponse.fromMap((map['forward'] as Map).cast<String, dynamic>()),
      forwardingRule: ForwardingRuleInfoResponse.fromMap((map['forwardingRule'] as Map).cast<String, dynamic>()),
      gkeMaster: GKEMasterInfoResponse.fromMap((map['gkeMaster'] as Map).cast<String, dynamic>()),
      googleService: GoogleServiceInfoResponse.fromMap((map['googleService'] as Map).cast<String, dynamic>()),
      instance: InstanceInfoResponse.fromMap((map['instance'] as Map).cast<String, dynamic>()),
      loadBalancer: LoadBalancerInfoResponse.fromMap((map['loadBalancer'] as Map).cast<String, dynamic>()),
      network: NetworkInfoResponse.fromMap((map['network'] as Map).cast<String, dynamic>()),
      project: map['project'] as String,
      route: RouteInfoResponse.fromMap((map['route'] as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      vpcConnector: VpcConnectorInfoResponse.fromMap((map['vpcConnector'] as Map).cast<String, dynamic>()),
      vpnGateway: VpnGatewayInfoResponse.fromMap((map['vpnGateway'] as Map).cast<String, dynamic>()),
      vpnTunnel: VpnTunnelInfoResponse.fromMap((map['vpnTunnel'] as Map).cast<String, dynamic>()),
    );
  }
}

