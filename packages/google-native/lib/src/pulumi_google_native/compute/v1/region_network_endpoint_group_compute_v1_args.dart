// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_endpoint_group_app_engine_compute_v1.dart';
import 'network_endpoint_group_cloud_function_compute_v1.dart';
import 'network_endpoint_group_cloud_run_compute_v1.dart';
import 'region_network_endpoint_group_network_endpoint_type_compute_v1.dart';

/// The set of arguments for RegionNetworkEndpointGroup.
class RegionNetworkEndpointGroupComputeV1Args {
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
  final pulumi.Input<RegionNetworkEndpointGroupNetworkEndpointTypeComputeV1>?
      networkEndpointType;
  final pulumi.Input<String>? project;
  final pulumi.Input<Map<String, dynamic>>? pscData;

  /// The target service url used to set up private service connection to a Google API or a PSC Producer Service Attachment. An example value is: "asia-northeast3-cloudkms.googleapis.com"
  final pulumi.Input<String>? pscTargetService;
  final pulumi.Input<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Optional URL of the subnetwork to which all network endpoints in the NEG belong.
  final pulumi.Input<String>? subnetwork;

  RegionNetworkEndpointGroupComputeV1Args({
    this.annotations,
    this.appEngine,
    this.cloudFunction,
    this.cloudRun,
    this.defaultPort,
    this.description,
    this.name,
    this.network,
    this.networkEndpointType,
    this.project,
    this.pscData,
    this.pscTargetService,
    required this.region,
    this.requestId,
    this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    final appEngineValue = appEngine;
    if (appEngineValue != null) {
      map['appEngine'] = pulumi.Input.mapOptionalInputValue<
          NetworkEndpointGroupAppEngineComputeV1,
          Map<String, dynamic>>(appEngineValue, (value) => value.toMap());
    }
    final cloudFunctionValue = cloudFunction;
    if (cloudFunctionValue != null) {
      map['cloudFunction'] = pulumi.Input.mapOptionalInputValue<
          NetworkEndpointGroupCloudFunctionComputeV1,
          Map<String, dynamic>>(cloudFunctionValue, (value) => value.toMap());
    }
    final cloudRunValue = cloudRun;
    if (cloudRunValue != null) {
      map['cloudRun'] = pulumi.Input.mapOptionalInputValue<
          NetworkEndpointGroupCloudRunComputeV1,
          Map<String, dynamic>>(cloudRunValue, (value) => value.toMap());
    }
    final defaultPortValue = defaultPort;
    if (defaultPortValue != null) {
      map['defaultPort'] = defaultPortValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final networkEndpointTypeValue = networkEndpointType;
    if (networkEndpointTypeValue != null) {
      map['networkEndpointType'] = pulumi.Input.mapOptionalInputValue<
          RegionNetworkEndpointGroupNetworkEndpointTypeComputeV1,
          String>(networkEndpointTypeValue, (value) => value.value);
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final pscDataValue = pscData;
    if (pscDataValue != null) {
      map['pscData'] = pscDataValue;
    }
    final pscTargetServiceValue = pscTargetService;
    if (pscTargetServiceValue != null) {
      map['pscTargetService'] = pscTargetServiceValue;
    }
    map['region'] = region;
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final subnetworkValue = subnetwork;
    if (subnetworkValue != null) {
      map['subnetwork'] = subnetworkValue;
    }
    return map;
  }

  factory RegionNetworkEndpointGroupComputeV1Args.fromMap(
      Map<String, dynamic> map) {
    return RegionNetworkEndpointGroupComputeV1Args(
      annotations:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['annotations']),
      appEngine:
          pulumi.Input.asOptionalInput<NetworkEndpointGroupAppEngineComputeV1>(
              map['appEngine']),
      cloudFunction: pulumi.Input.asOptionalInput<
          NetworkEndpointGroupCloudFunctionComputeV1>(map['cloudFunction']),
      cloudRun:
          pulumi.Input.asOptionalInput<NetworkEndpointGroupCloudRunComputeV1>(
              map['cloudRun']),
      defaultPort: pulumi.Input.asOptionalInput<int>(map['defaultPort']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      network: pulumi.Input.asOptionalInput<String>(map['network']),
      networkEndpointType: pulumi.Input.asOptionalInput<
              RegionNetworkEndpointGroupNetworkEndpointTypeComputeV1>(
          map['networkEndpointType']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      pscData:
          pulumi.Input.asOptionalInput<Map<String, dynamic>>(map['pscData']),
      pscTargetService:
          pulumi.Input.asOptionalInput<String>(map['pscTargetService']),
      region: pulumi.Input.asInput<String>(map['region']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      subnetwork: pulumi.Input.asOptionalInput<String>(map['subnetwork']),
    );
  }
}
