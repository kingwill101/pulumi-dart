// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'global_network_endpoint_group_client_port_mapping_mode.dart';
import 'global_network_endpoint_group_network_endpoint_type.dart';
import 'global_network_endpoint_group_type.dart';
import 'network_endpoint_group_app_engine.dart';
import 'network_endpoint_group_cloud_function.dart';
import 'network_endpoint_group_cloud_run.dart';
import 'network_endpoint_group_lb_network_endpoint_group.dart';
import 'network_endpoint_group_serverless_deployment.dart';

/// The set of arguments for GlobalNetworkEndpointGroup.
class GlobalNetworkEndpointGroupArgs {
  /// Metadata defined as annotations on the network endpoint group.
  final pulumi.Input<Map<String, String>>? annotations;

  /// Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine or cloudFunction may be set.
  final pulumi.Input<NetworkEndpointGroupAppEngine>? appEngine;

  /// Only valid when networkEndpointType is "GCE_VM_IP_PORT" and the NEG is regional.
  final pulumi.Input<GlobalNetworkEndpointGroupClientPortMappingMode>?
      clientPortMappingMode;

  /// Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine or cloudFunction may be set.
  final pulumi.Input<NetworkEndpointGroupCloudFunction>? cloudFunction;

  /// Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine or cloudFunction may be set.
  final pulumi.Input<NetworkEndpointGroupCloudRun>? cloudRun;

  /// The default port used if the port number is not specified in the network endpoint.
  final pulumi.Input<int>? defaultPort;

  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;

  /// This field is only valid when the network endpoint group is used for load balancing. [Deprecated] This field is deprecated.
  final pulumi.Input<NetworkEndpointGroupLbNetworkEndpointGroup>? loadBalancer;

  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// The URL of the network to which all network endpoints in the NEG belong. Uses "default" project network if unspecified.
  final pulumi.Input<String>? network;

  /// Type of network endpoints in this network endpoint group. Can be one of GCE_VM_IP, GCE_VM_IP_PORT, NON_GCP_PRIVATE_IP_PORT, INTERNET_FQDN_PORT, INTERNET_IP_PORT, SERVERLESS, PRIVATE_SERVICE_CONNECT.
  final pulumi.Input<GlobalNetworkEndpointGroupNetworkEndpointType>?
      networkEndpointType;
  final pulumi.Input<String>? project;
  final pulumi.Input<Map<String, dynamic>>? pscData;

  /// The target service url used to set up private service connection to a Google API or a PSC Producer Service Attachment. An example value is: "asia-northeast3-cloudkms.googleapis.com"
  final pulumi.Input<String>? pscTargetService;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine, cloudFunction or serverlessDeployment may be set.
  final pulumi.Input<NetworkEndpointGroupServerlessDeployment>?
      serverlessDeployment;

  /// Optional URL of the subnetwork to which all network endpoints in the NEG belong.
  final pulumi.Input<String>? subnetwork;

  /// Specify the type of this network endpoint group. Only LOAD_BALANCING is valid for now.
  final pulumi.Input<GlobalNetworkEndpointGroupType>? type;

  GlobalNetworkEndpointGroupArgs({
    this.annotations,
    this.appEngine,
    this.clientPortMappingMode,
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
    this.type,
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
          NetworkEndpointGroupAppEngine,
          Map<String, dynamic>>(appEngineValue, (value) => value.toMap());
    }
    final clientPortMappingModeValue = clientPortMappingMode;
    if (clientPortMappingModeValue != null) {
      map['clientPortMappingMode'] = pulumi.Input.mapOptionalInputValue<
          GlobalNetworkEndpointGroupClientPortMappingMode,
          String>(clientPortMappingModeValue, (value) => value.value);
    }
    final cloudFunctionValue = cloudFunction;
    if (cloudFunctionValue != null) {
      map['cloudFunction'] = pulumi.Input.mapOptionalInputValue<
          NetworkEndpointGroupCloudFunction,
          Map<String, dynamic>>(cloudFunctionValue, (value) => value.toMap());
    }
    final cloudRunValue = cloudRun;
    if (cloudRunValue != null) {
      map['cloudRun'] = pulumi.Input.mapOptionalInputValue<
          NetworkEndpointGroupCloudRun,
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
      map['loadBalancer'] = pulumi.Input.mapOptionalInputValue<
          NetworkEndpointGroupLbNetworkEndpointGroup,
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
      map['networkEndpointType'] = pulumi.Input.mapOptionalInputValue<
          GlobalNetworkEndpointGroupNetworkEndpointType,
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
      map['serverlessDeployment'] = pulumi.Input.mapOptionalInputValue<
              NetworkEndpointGroupServerlessDeployment, Map<String, dynamic>>(
          serverlessDeploymentValue, (value) => value.toMap());
    }
    final subnetworkValue = subnetwork;
    if (subnetworkValue != null) {
      map['subnetwork'] = subnetworkValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = pulumi.Input.mapOptionalInputValue<
          GlobalNetworkEndpointGroupType,
          String>(typeValue, (value) => value.value);
    }
    return map;
  }

  factory GlobalNetworkEndpointGroupArgs.fromMap(Map<String, dynamic> map) {
    return GlobalNetworkEndpointGroupArgs(
      annotations:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['annotations']),
      appEngine: pulumi.Input.asOptionalInput<NetworkEndpointGroupAppEngine>(
          map['appEngine']),
      clientPortMappingMode: pulumi.Input.asOptionalInput<
              GlobalNetworkEndpointGroupClientPortMappingMode>(
          map['clientPortMappingMode']),
      cloudFunction:
          pulumi.Input.asOptionalInput<NetworkEndpointGroupCloudFunction>(
              map['cloudFunction']),
      cloudRun: pulumi.Input.asOptionalInput<NetworkEndpointGroupCloudRun>(
          map['cloudRun']),
      defaultPort: pulumi.Input.asOptionalInput<int>(map['defaultPort']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      loadBalancer: pulumi.Input.asOptionalInput<
          NetworkEndpointGroupLbNetworkEndpointGroup>(map['loadBalancer']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      network: pulumi.Input.asOptionalInput<String>(map['network']),
      networkEndpointType: pulumi.Input.asOptionalInput<
              GlobalNetworkEndpointGroupNetworkEndpointType>(
          map['networkEndpointType']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      pscData:
          pulumi.Input.asOptionalInput<Map<String, dynamic>>(map['pscData']),
      pscTargetService:
          pulumi.Input.asOptionalInput<String>(map['pscTargetService']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      serverlessDeployment: pulumi.Input.asOptionalInput<
              NetworkEndpointGroupServerlessDeployment>(
          map['serverlessDeployment']),
      subnetwork: pulumi.Input.asOptionalInput<String>(map['subnetwork']),
      type: pulumi.Input.asOptionalInput<GlobalNetworkEndpointGroupType>(
          map['type']),
    );
  }
}
