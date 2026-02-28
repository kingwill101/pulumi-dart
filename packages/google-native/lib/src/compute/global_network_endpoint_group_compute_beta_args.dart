// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'global_network_endpoint_group_network_endpoint_type_compute_beta.dart';
import 'network_endpoint_group_app_engine_compute_beta.dart';
import 'network_endpoint_group_cloud_function_compute_beta.dart';
import 'network_endpoint_group_cloud_run_compute_beta.dart';
import 'network_endpoint_group_lb_network_endpoint_group_compute_beta.dart';
import 'network_endpoint_group_serverless_deployment_compute_beta.dart';

/// {@template pulumi_compute_beta_global_network_endpoint_group_compute_beta_args_doc}
/// The set of arguments for GlobalNetworkEndpointGroup.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_global_network_endpoint_group_compute_beta_args_doc}
class GlobalNetworkEndpointGroupComputeBetaArgs {
  /// Metadata defined as annotations on the network endpoint group.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine or cloudFunction may be set.
  final pulumi.Input<NetworkEndpointGroupAppEngineComputeBeta>? appEngine;
  /// Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine or cloudFunction may be set.
  final pulumi.Input<NetworkEndpointGroupCloudFunctionComputeBeta>? cloudFunction;
  /// Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine or cloudFunction may be set.
  final pulumi.Input<NetworkEndpointGroupCloudRunComputeBeta>? cloudRun;
  /// The default port used if the port number is not specified in the network endpoint.
  final pulumi.Input<int>? defaultPort;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// This field is only valid when the network endpoint group is used for load balancing. [Deprecated] This field is deprecated.
  final pulumi.Input<NetworkEndpointGroupLbNetworkEndpointGroupComputeBeta>? loadBalancer;
  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// The URL of the network to which all network endpoints in the NEG belong. Uses "default" project network if unspecified.
  final pulumi.Input<String>? network;
  /// Type of network endpoints in this network endpoint group. Can be one of GCE_VM_IP, GCE_VM_IP_PORT, NON_GCP_PRIVATE_IP_PORT, INTERNET_FQDN_PORT, INTERNET_IP_PORT, SERVERLESS, PRIVATE_SERVICE_CONNECT.
  final pulumi.Input<GlobalNetworkEndpointGroupNetworkEndpointTypeComputeBeta>? networkEndpointType;
  final pulumi.Input<String>? project;
  final pulumi.Input<Map<String, dynamic>>? pscData;
  /// The target service url used to set up private service connection to a Google API or a PSC Producer Service Attachment. An example value is: "asia-northeast3-cloudkms.googleapis.com"
  final pulumi.Input<String>? pscTargetService;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine, cloudFunction or serverlessDeployment may be set.
  final pulumi.Input<NetworkEndpointGroupServerlessDeploymentComputeBeta>? serverlessDeployment;
  /// Optional URL of the subnetwork to which all network endpoints in the NEG belong.
  final pulumi.Input<String>? subnetwork;

  /// Creates a new [GlobalNetworkEndpointGroupComputeBetaArgs].
  /// [annotations] Metadata defined as annotations on the network endpoint group.
  /// [appEngine] Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine or cloudFunction may be set.
  /// [cloudFunction] Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine or cloudFunction may be set.
  /// [cloudRun] Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine or cloudFunction may be set.
  /// [defaultPort] The default port used if the port number is not specified in the network endpoint.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [loadBalancer] This field is only valid when the network endpoint group is used for load balancing. [Deprecated] This field is deprecated.
  /// [name] Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [network] The URL of the network to which all network endpoints in the NEG belong. Uses "default" project network if unspecified.
  /// [networkEndpointType] Type of network endpoints in this network endpoint group. Can be one of GCE_VM_IP, GCE_VM_IP_PORT, NON_GCP_PRIVATE_IP_PORT, INTERNET_FQDN_PORT, INTERNET_IP_PORT, SERVERLESS, PRIVATE_SERVICE_CONNECT.
  /// [project] Optional.
  /// [pscData] Optional.
  /// [pscTargetService] The target service url used to set up private service connection to a Google API or a PSC Producer Service Attachment. An example value is: "asia-northeast3-cloudkms.googleapis.com"
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [serverlessDeployment] Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine, cloudFunction or serverlessDeployment may be set.
  /// [subnetwork] Optional URL of the subnetwork to which all network endpoints in the NEG belong.
  GlobalNetworkEndpointGroupComputeBetaArgs({
    Map<String, String>? annotations,
    NetworkEndpointGroupAppEngineComputeBeta? appEngine,
    NetworkEndpointGroupCloudFunctionComputeBeta? cloudFunction,
    NetworkEndpointGroupCloudRunComputeBeta? cloudRun,
    int? defaultPort,
    String? description,
    NetworkEndpointGroupLbNetworkEndpointGroupComputeBeta? loadBalancer,
    String? name,
    String? network,
    GlobalNetworkEndpointGroupNetworkEndpointTypeComputeBeta? networkEndpointType,
    String? project,
    Map<String, dynamic>? pscData,
    String? pscTargetService,
    String? requestId,
    NetworkEndpointGroupServerlessDeploymentComputeBeta? serverlessDeployment,
    String? subnetwork,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      appEngine = pulumi.Input.asOptionalInput<NetworkEndpointGroupAppEngineComputeBeta>(appEngine),
      cloudFunction = pulumi.Input.asOptionalInput<NetworkEndpointGroupCloudFunctionComputeBeta>(cloudFunction),
      cloudRun = pulumi.Input.asOptionalInput<NetworkEndpointGroupCloudRunComputeBeta>(cloudRun),
      defaultPort = pulumi.Input.asOptionalInput<int>(defaultPort),
      description = pulumi.Input.asOptionalInput<String>(description),
      loadBalancer = pulumi.Input.asOptionalInput<NetworkEndpointGroupLbNetworkEndpointGroupComputeBeta>(loadBalancer),
      name = pulumi.Input.asOptionalInput<String>(name),
      network = pulumi.Input.asOptionalInput<String>(network),
      networkEndpointType = pulumi.Input.asOptionalInput<GlobalNetworkEndpointGroupNetworkEndpointTypeComputeBeta>(networkEndpointType),
      project = pulumi.Input.asOptionalInput<String>(project),
      pscData = pulumi.Input.asOptionalInput<Map<String, dynamic>>(pscData),
      pscTargetService = pulumi.Input.asOptionalInput<String>(pscTargetService),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      serverlessDeployment = pulumi.Input.asOptionalInput<NetworkEndpointGroupServerlessDeploymentComputeBeta>(serverlessDeployment),
      subnetwork = pulumi.Input.asOptionalInput<String>(subnetwork);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'appEngine': ?pulumi.Input.mapOptionalInputValue<NetworkEndpointGroupAppEngineComputeBeta, Map<String, dynamic>>(appEngine, (value) => value.toMap()),
      'cloudFunction': ?pulumi.Input.mapOptionalInputValue<NetworkEndpointGroupCloudFunctionComputeBeta, Map<String, dynamic>>(cloudFunction, (value) => value.toMap()),
      'cloudRun': ?pulumi.Input.mapOptionalInputValue<NetworkEndpointGroupCloudRunComputeBeta, Map<String, dynamic>>(cloudRun, (value) => value.toMap()),
      'defaultPort': ?defaultPort,
      'description': ?description,
      'loadBalancer': ?pulumi.Input.mapOptionalInputValue<NetworkEndpointGroupLbNetworkEndpointGroupComputeBeta, Map<String, dynamic>>(loadBalancer, (value) => value.toMap()),
      'name': ?name,
      'network': ?network,
      'networkEndpointType': ?pulumi.Input.mapOptionalInputValue<GlobalNetworkEndpointGroupNetworkEndpointTypeComputeBeta, String>(networkEndpointType, (value) => value.value),
      'project': ?project,
      'pscData': ?pscData,
      'pscTargetService': ?pscTargetService,
      'requestId': ?requestId,
      'serverlessDeployment': ?pulumi.Input.mapOptionalInputValue<NetworkEndpointGroupServerlessDeploymentComputeBeta, Map<String, dynamic>>(serverlessDeployment, (value) => value.toMap()),
      'subnetwork': ?subnetwork,
    };
  }

  factory GlobalNetworkEndpointGroupComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GlobalNetworkEndpointGroupComputeBetaArgs(
      annotations: map['annotations'] == null ? null : (map['annotations'] as Map).cast<String, String>(),
      appEngine: map['appEngine'] == null ? null : NetworkEndpointGroupAppEngineComputeBeta.fromMap((map['appEngine'] as Map).cast<String, dynamic>()),
      cloudFunction: map['cloudFunction'] == null ? null : NetworkEndpointGroupCloudFunctionComputeBeta.fromMap((map['cloudFunction'] as Map).cast<String, dynamic>()),
      cloudRun: map['cloudRun'] == null ? null : NetworkEndpointGroupCloudRunComputeBeta.fromMap((map['cloudRun'] as Map).cast<String, dynamic>()),
      defaultPort: map['defaultPort'] == null ? null : map['defaultPort'] as int,
      description: map['description'] == null ? null : map['description'] as String,
      loadBalancer: map['loadBalancer'] == null ? null : NetworkEndpointGroupLbNetworkEndpointGroupComputeBeta.fromMap((map['loadBalancer'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      network: map['network'] == null ? null : map['network'] as String,
      networkEndpointType: map['networkEndpointType'] == null ? null : GlobalNetworkEndpointGroupNetworkEndpointTypeComputeBeta.fromValue(map['networkEndpointType'] as String),
      project: map['project'] == null ? null : map['project'] as String,
      pscData: map['pscData'] == null ? null : (map['pscData'] as Map).cast<String, dynamic>(),
      pscTargetService: map['pscTargetService'] == null ? null : map['pscTargetService'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      serverlessDeployment: map['serverlessDeployment'] == null ? null : NetworkEndpointGroupServerlessDeploymentComputeBeta.fromMap((map['serverlessDeployment'] as Map).cast<String, dynamic>()),
      subnetwork: map['subnetwork'] == null ? null : map['subnetwork'] as String,
    );
  }
}

