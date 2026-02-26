// ignore_for_file: unused_element, unnecessary_cast

import 'abort_info_response2.dart';
import 'app_engine_version_info_response2.dart';
import 'cloud_function_info_response2.dart';
import 'cloud_run_revision_info_response2.dart';
import 'cloud_sqlinstance_info_response2.dart';
import 'deliver_info_response2.dart';
import 'drop_info_response2.dart';
import 'endpoint_info_response3.dart';
import 'firewall_info_response2.dart';
import 'forward_info_response2.dart';
import 'forwarding_rule_info_response2.dart';
import 'gkemaster_info_response2.dart';
import 'google_service_info_response2.dart';
import 'instance_info_response2.dart';
import 'load_balancer_info_response2.dart';
import 'network_info_response2.dart';
import 'route_info_response2.dart';
import 'vpc_connector_info_response2.dart';
import 'vpn_gateway_info_response2.dart';
import 'vpn_tunnel_info_response2.dart';

/// A simulated forwarding path is composed of multiple steps. Each step has a well-defined state and an associated configuration.
class StepResponse3 {
  /// Display information of the final state "abort" and reason.
  final AbortInfoResponse2 abort;

  /// Display information of an App Engine service version.
  final AppEngineVersionInfoResponse2 appEngineVersion;

  /// This is a step that leads to the final state Drop.
  final bool causesDrop;

  /// Display information of a Cloud Function.
  final CloudFunctionInfoResponse2 cloudFunction;

  /// Display information of a Cloud Run revision.
  final CloudRunRevisionInfoResponse2 cloudRunRevision;

  /// Display information of a Cloud SQL instance.
  final CloudSQLInstanceInfoResponse2 cloudSqlInstance;

  /// Display information of the final state "deliver" and reason.
  final DeliverInfoResponse2 deliver;

  /// A description of the step. Usually this is a summary of the state.
  final String description;

  /// Display information of the final state "drop" and reason.
  final DropInfoResponse2 drop;

  /// Display information of the source and destination under analysis. The endpoint information in an intermediate state may differ with the initial input, as it might be modified by state like NAT, or Connection Proxy.
  final EndpointInfoResponse3 endpoint;

  /// Display information of a Compute Engine firewall rule.
  final FirewallInfoResponse2 firewall;

  /// Display information of the final state "forward" and reason.
  final ForwardInfoResponse2 forward;

  /// Display information of a Compute Engine forwarding rule.
  final ForwardingRuleInfoResponse2 forwardingRule;

  /// Display information of a Google Kubernetes Engine cluster master.
  final GKEMasterInfoResponse2 gkeMaster;

  /// Display information of a Google service
  final GoogleServiceInfoResponse2 googleService;

  /// Display information of a Compute Engine instance.
  final InstanceInfoResponse2 instance;

  /// Display information of the load balancers.
  final LoadBalancerInfoResponse2 loadBalancer;

  /// Display information of a Google Cloud network.
  final NetworkInfoResponse2 network;

  /// Project ID that contains the configuration this step is validating.
  final String project;

  /// Display information of a Compute Engine route.
  final RouteInfoResponse2 route;

  /// Each step is in one of the pre-defined states.
  final String state;

  /// Display information of a VPC connector.
  final VpcConnectorInfoResponse2 vpcConnector;

  /// Display information of a Compute Engine VPN gateway.
  final VpnGatewayInfoResponse2 vpnGateway;

  /// Display information of a Compute Engine VPN tunnel.
  final VpnTunnelInfoResponse2 vpnTunnel;

  StepResponse3({
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
    final map = <String, dynamic>{};
    map['abort'] = abort.toMap();
    map['appEngineVersion'] = appEngineVersion.toMap();
    map['causesDrop'] = causesDrop;
    map['cloudFunction'] = cloudFunction.toMap();
    map['cloudRunRevision'] = cloudRunRevision.toMap();
    map['cloudSqlInstance'] = cloudSqlInstance.toMap();
    map['deliver'] = deliver.toMap();
    map['description'] = description;
    map['drop'] = drop.toMap();
    map['endpoint'] = endpoint.toMap();
    map['firewall'] = firewall.toMap();
    map['forward'] = forward.toMap();
    map['forwardingRule'] = forwardingRule.toMap();
    map['gkeMaster'] = gkeMaster.toMap();
    map['googleService'] = googleService.toMap();
    map['instance'] = instance.toMap();
    map['loadBalancer'] = loadBalancer.toMap();
    map['network'] = network.toMap();
    map['project'] = project;
    map['route'] = route.toMap();
    map['state'] = state;
    map['vpcConnector'] = vpcConnector.toMap();
    map['vpnGateway'] = vpnGateway.toMap();
    map['vpnTunnel'] = vpnTunnel.toMap();
    return map;
  }

  factory StepResponse3.fromMap(Map<String, dynamic> map) {
    return StepResponse3(
      abort: AbortInfoResponse2.fromMap(
          (map['abort'] as Map).cast<String, dynamic>()),
      appEngineVersion: AppEngineVersionInfoResponse2.fromMap(
          (map['appEngineVersion'] as Map).cast<String, dynamic>()),
      causesDrop: map['causesDrop'] as bool,
      cloudFunction: CloudFunctionInfoResponse2.fromMap(
          (map['cloudFunction'] as Map).cast<String, dynamic>()),
      cloudRunRevision: CloudRunRevisionInfoResponse2.fromMap(
          (map['cloudRunRevision'] as Map).cast<String, dynamic>()),
      cloudSqlInstance: CloudSQLInstanceInfoResponse2.fromMap(
          (map['cloudSqlInstance'] as Map).cast<String, dynamic>()),
      deliver: DeliverInfoResponse2.fromMap(
          (map['deliver'] as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      drop: DropInfoResponse2.fromMap(
          (map['drop'] as Map).cast<String, dynamic>()),
      endpoint: EndpointInfoResponse3.fromMap(
          (map['endpoint'] as Map).cast<String, dynamic>()),
      firewall: FirewallInfoResponse2.fromMap(
          (map['firewall'] as Map).cast<String, dynamic>()),
      forward: ForwardInfoResponse2.fromMap(
          (map['forward'] as Map).cast<String, dynamic>()),
      forwardingRule: ForwardingRuleInfoResponse2.fromMap(
          (map['forwardingRule'] as Map).cast<String, dynamic>()),
      gkeMaster: GKEMasterInfoResponse2.fromMap(
          (map['gkeMaster'] as Map).cast<String, dynamic>()),
      googleService: GoogleServiceInfoResponse2.fromMap(
          (map['googleService'] as Map).cast<String, dynamic>()),
      instance: InstanceInfoResponse2.fromMap(
          (map['instance'] as Map).cast<String, dynamic>()),
      loadBalancer: LoadBalancerInfoResponse2.fromMap(
          (map['loadBalancer'] as Map).cast<String, dynamic>()),
      network: NetworkInfoResponse2.fromMap(
          (map['network'] as Map).cast<String, dynamic>()),
      project: map['project'] as String,
      route: RouteInfoResponse2.fromMap(
          (map['route'] as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      vpcConnector: VpcConnectorInfoResponse2.fromMap(
          (map['vpcConnector'] as Map).cast<String, dynamic>()),
      vpnGateway: VpnGatewayInfoResponse2.fromMap(
          (map['vpnGateway'] as Map).cast<String, dynamic>()),
      vpnTunnel: VpnTunnelInfoResponse2.fromMap(
          (map['vpnTunnel'] as Map).cast<String, dynamic>()),
    );
  }
}
