// ignore_for_file: unused_element, unnecessary_cast

import 'abort_info_response_networkmanagement_v1beta1.dart';
import 'app_engine_version_info_response_networkmanagement_v1beta1.dart';
import 'cloud_function_info_response_networkmanagement_v1beta1.dart';
import 'cloud_run_revision_info_response_networkmanagement_v1beta1.dart';
import 'cloud_sqlinstance_info_response_networkmanagement_v1beta1.dart';
import 'deliver_info_response_networkmanagement_v1beta1.dart';
import 'drop_info_response_networkmanagement_v1beta1.dart';
import 'endpoint_info_response_networkmanagement_v1beta1.dart';
import 'firewall_info_response_networkmanagement_v1beta1.dart';
import 'forward_info_response_networkmanagement_v1beta1.dart';
import 'forwarding_rule_info_response_networkmanagement_v1beta1.dart';
import 'gkemaster_info_response_networkmanagement_v1beta1.dart';
import 'google_service_info_response_networkmanagement_v1beta1.dart';
import 'instance_info_response_networkmanagement_v1beta1.dart';
import 'load_balancer_info_response_networkmanagement_v1beta1.dart';
import 'network_info_response_networkmanagement_v1beta1.dart';
import 'route_info_response_networkmanagement_v1beta1.dart';
import 'vpc_connector_info_response_networkmanagement_v1beta1.dart';
import 'vpn_gateway_info_response_networkmanagement_v1beta1.dart';
import 'vpn_tunnel_info_response_networkmanagement_v1beta1.dart';

/// A simulated forwarding path is composed of multiple steps. Each step has a well-defined state and an associated configuration.
class StepResponseNetworkmanagementV1beta1 {
  /// Display information of the final state "abort" and reason.
  final AbortInfoResponseNetworkmanagementV1beta1 abort;

  /// Display information of an App Engine service version.
  final AppEngineVersionInfoResponseNetworkmanagementV1beta1 appEngineVersion;

  /// This is a step that leads to the final state Drop.
  final bool causesDrop;

  /// Display information of a Cloud Function.
  final CloudFunctionInfoResponseNetworkmanagementV1beta1 cloudFunction;

  /// Display information of a Cloud Run revision.
  final CloudRunRevisionInfoResponseNetworkmanagementV1beta1 cloudRunRevision;

  /// Display information of a Cloud SQL instance.
  final CloudSQLInstanceInfoResponseNetworkmanagementV1beta1 cloudSqlInstance;

  /// Display information of the final state "deliver" and reason.
  final DeliverInfoResponseNetworkmanagementV1beta1 deliver;

  /// A description of the step. Usually this is a summary of the state.
  final String description;

  /// Display information of the final state "drop" and reason.
  final DropInfoResponseNetworkmanagementV1beta1 drop;

  /// Display information of the source and destination under analysis. The endpoint information in an intermediate state may differ with the initial input, as it might be modified by state like NAT, or Connection Proxy.
  final EndpointInfoResponseNetworkmanagementV1beta1 endpoint;

  /// Display information of a Compute Engine firewall rule.
  final FirewallInfoResponseNetworkmanagementV1beta1 firewall;

  /// Display information of the final state "forward" and reason.
  final ForwardInfoResponseNetworkmanagementV1beta1 forward;

  /// Display information of a Compute Engine forwarding rule.
  final ForwardingRuleInfoResponseNetworkmanagementV1beta1 forwardingRule;

  /// Display information of a Google Kubernetes Engine cluster master.
  final GKEMasterInfoResponseNetworkmanagementV1beta1 gkeMaster;

  /// Display information of a Google service
  final GoogleServiceInfoResponseNetworkmanagementV1beta1 googleService;

  /// Display information of a Compute Engine instance.
  final InstanceInfoResponseNetworkmanagementV1beta1 instance;

  /// Display information of the load balancers.
  final LoadBalancerInfoResponseNetworkmanagementV1beta1 loadBalancer;

  /// Display information of a Google Cloud network.
  final NetworkInfoResponseNetworkmanagementV1beta1 network;

  /// Project ID that contains the configuration this step is validating.
  final String project;

  /// Display information of a Compute Engine route.
  final RouteInfoResponseNetworkmanagementV1beta1 route;

  /// Each step is in one of the pre-defined states.
  final String state;

  /// Display information of a VPC connector.
  final VpcConnectorInfoResponseNetworkmanagementV1beta1 vpcConnector;

  /// Display information of a Compute Engine VPN gateway.
  final VpnGatewayInfoResponseNetworkmanagementV1beta1 vpnGateway;

  /// Display information of a Compute Engine VPN tunnel.
  final VpnTunnelInfoResponseNetworkmanagementV1beta1 vpnTunnel;

  /// Creates a new [StepResponseNetworkmanagementV1beta1].
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
  StepResponseNetworkmanagementV1beta1({
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

  factory StepResponseNetworkmanagementV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return StepResponseNetworkmanagementV1beta1(
      abort: AbortInfoResponseNetworkmanagementV1beta1.fromMap(
        (map['abort'] as Map).cast<String, dynamic>(),
      ),
      appEngineVersion:
          AppEngineVersionInfoResponseNetworkmanagementV1beta1.fromMap(
            (map['appEngineVersion'] as Map).cast<String, dynamic>(),
          ),
      causesDrop: map['causesDrop'] as bool,
      cloudFunction: CloudFunctionInfoResponseNetworkmanagementV1beta1.fromMap(
        (map['cloudFunction'] as Map).cast<String, dynamic>(),
      ),
      cloudRunRevision:
          CloudRunRevisionInfoResponseNetworkmanagementV1beta1.fromMap(
            (map['cloudRunRevision'] as Map).cast<String, dynamic>(),
          ),
      cloudSqlInstance:
          CloudSQLInstanceInfoResponseNetworkmanagementV1beta1.fromMap(
            (map['cloudSqlInstance'] as Map).cast<String, dynamic>(),
          ),
      deliver: DeliverInfoResponseNetworkmanagementV1beta1.fromMap(
        (map['deliver'] as Map).cast<String, dynamic>(),
      ),
      description: map['description'] as String,
      drop: DropInfoResponseNetworkmanagementV1beta1.fromMap(
        (map['drop'] as Map).cast<String, dynamic>(),
      ),
      endpoint: EndpointInfoResponseNetworkmanagementV1beta1.fromMap(
        (map['endpoint'] as Map).cast<String, dynamic>(),
      ),
      firewall: FirewallInfoResponseNetworkmanagementV1beta1.fromMap(
        (map['firewall'] as Map).cast<String, dynamic>(),
      ),
      forward: ForwardInfoResponseNetworkmanagementV1beta1.fromMap(
        (map['forward'] as Map).cast<String, dynamic>(),
      ),
      forwardingRule:
          ForwardingRuleInfoResponseNetworkmanagementV1beta1.fromMap(
            (map['forwardingRule'] as Map).cast<String, dynamic>(),
          ),
      gkeMaster: GKEMasterInfoResponseNetworkmanagementV1beta1.fromMap(
        (map['gkeMaster'] as Map).cast<String, dynamic>(),
      ),
      googleService: GoogleServiceInfoResponseNetworkmanagementV1beta1.fromMap(
        (map['googleService'] as Map).cast<String, dynamic>(),
      ),
      instance: InstanceInfoResponseNetworkmanagementV1beta1.fromMap(
        (map['instance'] as Map).cast<String, dynamic>(),
      ),
      loadBalancer: LoadBalancerInfoResponseNetworkmanagementV1beta1.fromMap(
        (map['loadBalancer'] as Map).cast<String, dynamic>(),
      ),
      network: NetworkInfoResponseNetworkmanagementV1beta1.fromMap(
        (map['network'] as Map).cast<String, dynamic>(),
      ),
      project: map['project'] as String,
      route: RouteInfoResponseNetworkmanagementV1beta1.fromMap(
        (map['route'] as Map).cast<String, dynamic>(),
      ),
      state: map['state'] as String,
      vpcConnector: VpcConnectorInfoResponseNetworkmanagementV1beta1.fromMap(
        (map['vpcConnector'] as Map).cast<String, dynamic>(),
      ),
      vpnGateway: VpnGatewayInfoResponseNetworkmanagementV1beta1.fromMap(
        (map['vpnGateway'] as Map).cast<String, dynamic>(),
      ),
      vpnTunnel: VpnTunnelInfoResponseNetworkmanagementV1beta1.fromMap(
        (map['vpnTunnel'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
