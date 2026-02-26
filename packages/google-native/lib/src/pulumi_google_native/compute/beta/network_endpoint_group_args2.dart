// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'network_endpoint_group_app_engine2.dart';
import 'network_endpoint_group_cloud_function2.dart';
import 'network_endpoint_group_cloud_run2.dart';
import 'network_endpoint_group_lb_network_endpoint_group2.dart';
import 'network_endpoint_group_network_endpoint_type2.dart';
import 'network_endpoint_group_serverless_deployment2.dart';

/// The set of arguments for NetworkEndpointGroup.
class NetworkEndpointGroupArgs2 {
  /// Metadata defined as annotations on the network endpoint group.
  final Input<Map<String, String>>? annotations;

  /// Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine or cloudFunction may be set.
  final Input<NetworkEndpointGroupAppEngine2>? appEngine;

  /// Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine or cloudFunction may be set.
  final Input<NetworkEndpointGroupCloudFunction2>? cloudFunction;

  /// Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine or cloudFunction may be set.
  final Input<NetworkEndpointGroupCloudRun2>? cloudRun;

  /// The default port used if the port number is not specified in the network endpoint.
  final Input<int>? defaultPort;

  /// An optional description of this resource. Provide this property when you create the resource.
  final Input<String>? description;

  /// This field is only valid when the network endpoint group is used for load balancing. [Deprecated] This field is deprecated.
  final Input<NetworkEndpointGroupLbNetworkEndpointGroup2>? loadBalancer;

  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final Input<String>? name;

  /// The URL of the network to which all network endpoints in the NEG belong. Uses "default" project network if unspecified.
  final Input<String>? network;

  /// Type of network endpoints in this network endpoint group. Can be one of GCE_VM_IP, GCE_VM_IP_PORT, NON_GCP_PRIVATE_IP_PORT, INTERNET_FQDN_PORT, INTERNET_IP_PORT, SERVERLESS, PRIVATE_SERVICE_CONNECT.
  final Input<NetworkEndpointGroupNetworkEndpointType2>? networkEndpointType;
  final Input<String>? project;
  final Input<Map<String, dynamic>>? pscData;

  /// The target service url used to set up private service connection to a Google API or a PSC Producer Service Attachment. An example value is: "asia-northeast3-cloudkms.googleapis.com"
  final Input<String>? pscTargetService;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine, cloudFunction or serverlessDeployment may be set.
  final Input<NetworkEndpointGroupServerlessDeployment2>? serverlessDeployment;

  /// Optional URL of the subnetwork to which all network endpoints in the NEG belong.
  final Input<String>? subnetwork;
  final Input<String>? zone;

  NetworkEndpointGroupArgs2({
    this.annotations,
    this.appEngine,
    this.cloudFunction,
    this.cloudRun,
    this.defaultPort,
    this.description,
    this.loadBalancer,
    this.name,
    this.network,
    this.networkEndpointType,
    this.project,
    this.pscData,
    this.pscTargetService,
    this.requestId,
    this.serverlessDeployment,
    this.subnetwork,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    final appEngineValue = appEngine;
    if (appEngineValue != null) {
      map['appEngine'] = Input.mapOptionalInputValue<
          NetworkEndpointGroupAppEngine2,
          Map<String, dynamic>>(appEngineValue, (value) => value.toMap());
    }
    final cloudFunctionValue = cloudFunction;
    if (cloudFunctionValue != null) {
      map['cloudFunction'] = Input.mapOptionalInputValue<
          NetworkEndpointGroupCloudFunction2,
          Map<String, dynamic>>(cloudFunctionValue, (value) => value.toMap());
    }
    final cloudRunValue = cloudRun;
    if (cloudRunValue != null) {
      map['cloudRun'] = Input.mapOptionalInputValue<
          NetworkEndpointGroupCloudRun2,
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
    final loadBalancerValue = loadBalancer;
    if (loadBalancerValue != null) {
      map['loadBalancer'] = Input.mapOptionalInputValue<
          NetworkEndpointGroupLbNetworkEndpointGroup2,
          Map<String, dynamic>>(loadBalancerValue, (value) => value.toMap());
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
      map['networkEndpointType'] = Input.mapOptionalInputValue<
          NetworkEndpointGroupNetworkEndpointType2,
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
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final serverlessDeploymentValue = serverlessDeployment;
    if (serverlessDeploymentValue != null) {
      map['serverlessDeployment'] = Input.mapOptionalInputValue<
              NetworkEndpointGroupServerlessDeployment2, Map<String, dynamic>>(
          serverlessDeploymentValue, (value) => value.toMap());
    }
    final subnetworkValue = subnetwork;
    if (subnetworkValue != null) {
      map['subnetwork'] = subnetworkValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory NetworkEndpointGroupArgs2.fromMap(Map<String, dynamic> map) {
    return NetworkEndpointGroupArgs2(
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      appEngine: Input.asOptionalInput<NetworkEndpointGroupAppEngine2>(
          map['appEngine']),
      cloudFunction: Input.asOptionalInput<NetworkEndpointGroupCloudFunction2>(
          map['cloudFunction']),
      cloudRun:
          Input.asOptionalInput<NetworkEndpointGroupCloudRun2>(map['cloudRun']),
      defaultPort: Input.asOptionalInput<int>(map['defaultPort']),
      description: Input.asOptionalInput<String>(map['description']),
      loadBalancer:
          Input.asOptionalInput<NetworkEndpointGroupLbNetworkEndpointGroup2>(
              map['loadBalancer']),
      name: Input.asOptionalInput<String>(map['name']),
      network: Input.asOptionalInput<String>(map['network']),
      networkEndpointType:
          Input.asOptionalInput<NetworkEndpointGroupNetworkEndpointType2>(
              map['networkEndpointType']),
      project: Input.asOptionalInput<String>(map['project']),
      pscData: Input.asOptionalInput<Map<String, dynamic>>(map['pscData']),
      pscTargetService: Input.asOptionalInput<String>(map['pscTargetService']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      serverlessDeployment:
          Input.asOptionalInput<NetworkEndpointGroupServerlessDeployment2>(
              map['serverlessDeployment']),
      subnetwork: Input.asOptionalInput<String>(map['subnetwork']),
      zone: Input.asOptionalInput<String>(map['zone']),
    );
  }
}
