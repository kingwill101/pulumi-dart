// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_endpoint_group_app_engine_compute_v1.dart';
import 'network_endpoint_group_cloud_function_compute_v1.dart';
import 'network_endpoint_group_cloud_run_compute_v1.dart';
import 'network_endpoint_group_network_endpoint_type_compute_v1.dart';

/// {@template pulumi_compute_v1_network_endpoint_group_compute_v1_args_doc}
/// The set of arguments for NetworkEndpointGroup.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_network_endpoint_group_compute_v1_args_doc}
class NetworkEndpointGroupComputeV1Args {
  /// Metadata defined as annotations on the network endpoint group.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine or cloudFunction may be set.
  final pulumi.Input<NetworkEndpointGroupAppEngineComputeV1>? appEngine;
  /// Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine or cloudFunction may be set.
  final pulumi.Input<NetworkEndpointGroupCloudFunctionComputeV1>? cloudFunction;
  /// Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine or cloudFunction may be set.
  final pulumi.Input<NetworkEndpointGroupCloudRunComputeV1>? cloudRun;
  /// The default port used if the port number is not specified in the network endpoint.
  final pulumi.Input<int>? defaultPort;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// The URL of the network to which all network endpoints in the NEG belong. Uses "default" project network if unspecified.
  final pulumi.Input<String>? network;
  /// Type of network endpoints in this network endpoint group. Can be one of GCE_VM_IP, GCE_VM_IP_PORT, NON_GCP_PRIVATE_IP_PORT, INTERNET_FQDN_PORT, INTERNET_IP_PORT, SERVERLESS, PRIVATE_SERVICE_CONNECT.
  final pulumi.Input<NetworkEndpointGroupNetworkEndpointTypeComputeV1>? networkEndpointType;
  final pulumi.Input<String>? project;
  final pulumi.Input<Map<String, dynamic>>? pscData;
  /// The target service url used to set up private service connection to a Google API or a PSC Producer Service Attachment. An example value is: "asia-northeast3-cloudkms.googleapis.com"
  final pulumi.Input<String>? pscTargetService;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Optional URL of the subnetwork to which all network endpoints in the NEG belong.
  final pulumi.Input<String>? subnetwork;
  final pulumi.Input<String>? zone;

  /// Creates a new [NetworkEndpointGroupComputeV1Args].
  /// [annotations] Metadata defined as annotations on the network endpoint group.
  /// [appEngine] Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine or cloudFunction may be set.
  /// [cloudFunction] Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine or cloudFunction may be set.
  /// [cloudRun] Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine or cloudFunction may be set.
  /// [defaultPort] The default port used if the port number is not specified in the network endpoint.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [name] Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [network] The URL of the network to which all network endpoints in the NEG belong. Uses "default" project network if unspecified.
  /// [networkEndpointType] Type of network endpoints in this network endpoint group. Can be one of GCE_VM_IP, GCE_VM_IP_PORT, NON_GCP_PRIVATE_IP_PORT, INTERNET_FQDN_PORT, INTERNET_IP_PORT, SERVERLESS, PRIVATE_SERVICE_CONNECT.
  /// [project] Optional.
  /// [pscData] Optional.
  /// [pscTargetService] The target service url used to set up private service connection to a Google API or a PSC Producer Service Attachment. An example value is: "asia-northeast3-cloudkms.googleapis.com"
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [subnetwork] Optional URL of the subnetwork to which all network endpoints in the NEG belong.
  /// [zone] Optional.
  NetworkEndpointGroupComputeV1Args({
    Map<String, String>? annotations,
    NetworkEndpointGroupAppEngineComputeV1? appEngine,
    NetworkEndpointGroupCloudFunctionComputeV1? cloudFunction,
    NetworkEndpointGroupCloudRunComputeV1? cloudRun,
    int? defaultPort,
    String? description,
    String? name,
    String? network,
    NetworkEndpointGroupNetworkEndpointTypeComputeV1? networkEndpointType,
    String? project,
    Map<String, dynamic>? pscData,
    String? pscTargetService,
    String? requestId,
    String? subnetwork,
    String? zone,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      appEngine = pulumi.Input.asOptionalInput<NetworkEndpointGroupAppEngineComputeV1>(appEngine),
      cloudFunction = pulumi.Input.asOptionalInput<NetworkEndpointGroupCloudFunctionComputeV1>(cloudFunction),
      cloudRun = pulumi.Input.asOptionalInput<NetworkEndpointGroupCloudRunComputeV1>(cloudRun),
      defaultPort = pulumi.Input.asOptionalInput<int>(defaultPort),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      network = pulumi.Input.asOptionalInput<String>(network),
      networkEndpointType = pulumi.Input.asOptionalInput<NetworkEndpointGroupNetworkEndpointTypeComputeV1>(networkEndpointType),
      project = pulumi.Input.asOptionalInput<String>(project),
      pscData = pulumi.Input.asOptionalInput<Map<String, dynamic>>(pscData),
      pscTargetService = pulumi.Input.asOptionalInput<String>(pscTargetService),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      subnetwork = pulumi.Input.asOptionalInput<String>(subnetwork),
      zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'appEngine': ?pulumi.Input.mapOptionalInputValue<NetworkEndpointGroupAppEngineComputeV1, Map<String, dynamic>>(appEngine, (value) => value.toMap()),
      'cloudFunction': ?pulumi.Input.mapOptionalInputValue<NetworkEndpointGroupCloudFunctionComputeV1, Map<String, dynamic>>(cloudFunction, (value) => value.toMap()),
      'cloudRun': ?pulumi.Input.mapOptionalInputValue<NetworkEndpointGroupCloudRunComputeV1, Map<String, dynamic>>(cloudRun, (value) => value.toMap()),
      'defaultPort': ?defaultPort,
      'description': ?description,
      'name': ?name,
      'network': ?network,
      'networkEndpointType': ?pulumi.Input.mapOptionalInputValue<NetworkEndpointGroupNetworkEndpointTypeComputeV1, String>(networkEndpointType, (value) => value.value),
      'project': ?project,
      'pscData': ?pscData,
      'pscTargetService': ?pscTargetService,
      'requestId': ?requestId,
      'subnetwork': ?subnetwork,
      'zone': ?zone,
    };
  }

  factory NetworkEndpointGroupComputeV1Args.fromMap(Map<String, dynamic> map) {
    return NetworkEndpointGroupComputeV1Args(
      annotations: map['annotations'] == null ? null : (map['annotations'] as Map).cast<String, String>(),
      appEngine: map['appEngine'] == null ? null : NetworkEndpointGroupAppEngineComputeV1.fromMap((map['appEngine'] as Map).cast<String, dynamic>()),
      cloudFunction: map['cloudFunction'] == null ? null : NetworkEndpointGroupCloudFunctionComputeV1.fromMap((map['cloudFunction'] as Map).cast<String, dynamic>()),
      cloudRun: map['cloudRun'] == null ? null : NetworkEndpointGroupCloudRunComputeV1.fromMap((map['cloudRun'] as Map).cast<String, dynamic>()),
      defaultPort: map['defaultPort'] == null ? null : map['defaultPort'] as int,
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      network: map['network'] == null ? null : map['network'] as String,
      networkEndpointType: map['networkEndpointType'] == null ? null : NetworkEndpointGroupNetworkEndpointTypeComputeV1.fromValue(map['networkEndpointType'] as String),
      project: map['project'] == null ? null : map['project'] as String,
      pscData: map['pscData'] == null ? null : (map['pscData'] as Map).cast<String, dynamic>(),
      pscTargetService: map['pscTargetService'] == null ? null : map['pscTargetService'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      subnetwork: map['subnetwork'] == null ? null : map['subnetwork'] as String,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}

