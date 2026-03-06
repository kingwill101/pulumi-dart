// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_meshes_mesh_endpoint.dart';
import 'get_service_meshes_mesh_load_balancer.dart';
import 'get_service_meshes_mesh_mesh_config.dart';
import 'get_service_meshes_mesh_network.dart';

class GetServiceMeshesMesh {
  /// The Cluster List.
  final pulumi.Input<List<String>> clusters;
  /// The created time of the Service Mesh instance.
  final pulumi.Input<String> createTime;
  /// Grid instance version type. **Note:** `edition` takes effect only if `enable_details` is set to `true`.
  final pulumi.Input<String> edition;
  /// The endpoint details. **Note:** `endpoints` takes effect only if `enable_details` is set to `true`.
  final pulumi.Input<List<GetServiceMeshesMeshEndpoint>> endpoints;
  /// The returned error message.
  final pulumi.Input<String> errorMessage;
  /// The ID of the Service Mesh instance.
  final pulumi.Input<String> id;
  /// (Available since v1.170.0) The Istio Operator Version. **Note:** `istio_operator_version` takes effect only if `enable_details` is set to `true`.
  final pulumi.Input<String> istioOperatorVersion;
  /// The content of Kube config. **Note:** `kube_config` takes effect only if `enable_details` is set to `true`.
  final pulumi.Input<String> kubeConfig;
  /// The configuration of the Load Balancer. **Note:** `load_balancer` takes effect only if `enable_details` is set to `true`.
  final pulumi.Input<List<GetServiceMeshesMeshLoadBalancer>> loadBalancers;
  /// The configuration of the Service grid. **Note:** `mesh_config` takes effect only if `enable_details` is set to `true`.
  final pulumi.Input<List<GetServiceMeshesMeshMeshConfig>> meshConfigs;
  /// The configuration of the Service grid network. **Note:** `network` takes effect only if `enable_details` is set to `true`.
  final pulumi.Input<List<GetServiceMeshesMeshNetwork>> networks;
  /// The ID of the Service Mesh instance.
  final pulumi.Input<String> serviceMeshId;
  /// The name of the Service Mesh instance.
  final pulumi.Input<String> serviceMeshName;
  /// (Available since v1.170.0) The SideCar Version. **Note:** `sidecar_version` takes effect only if `enable_details` is set to `true`.
  final pulumi.Input<String> sidecarVersion;
  /// The status of the Service Mesh. Valid values: `running`, `initial`.
  final pulumi.Input<String> status;
  /// The version of the Service Mesh instance.
  final pulumi.Input<String> version;

  /// Creates a new [GetServiceMeshesMesh].
  /// [clusters] The Cluster List.
  /// [createTime] The created time of the Service Mesh instance.
  /// [edition] Grid instance version type. **Note:** `edition` takes effect only if `enable_details` is set to `true`.
  /// [endpoints] The endpoint details. **Note:** `endpoints` takes effect only if `enable_details` is set to `true`.
  /// [errorMessage] The returned error message.
  /// [id] The ID of the Service Mesh instance.
  /// [istioOperatorVersion] (Available since v1.170.0) The Istio Operator Version. **Note:** `istio_operator_version` takes effect only if `enable_details` is set to `true`.
  /// [kubeConfig] The content of Kube config. **Note:** `kube_config` takes effect only if `enable_details` is set to `true`.
  /// [loadBalancers] The configuration of the Load Balancer. **Note:** `load_balancer` takes effect only if `enable_details` is set to `true`.
  /// [meshConfigs] The configuration of the Service grid. **Note:** `mesh_config` takes effect only if `enable_details` is set to `true`.
  /// [networks] The configuration of the Service grid network. **Note:** `network` takes effect only if `enable_details` is set to `true`.
  /// [serviceMeshId] The ID of the Service Mesh instance.
  /// [serviceMeshName] The name of the Service Mesh instance.
  /// [sidecarVersion] (Available since v1.170.0) The SideCar Version. **Note:** `sidecar_version` takes effect only if `enable_details` is set to `true`.
  /// [status] The status of the Service Mesh. Valid values: `running`, `initial`.
  /// [version] The version of the Service Mesh instance.
  const GetServiceMeshesMesh({
    required this.clusters,
    required this.createTime,
    required this.edition,
    required this.endpoints,
    required this.errorMessage,
    required this.id,
    required this.istioOperatorVersion,
    required this.kubeConfig,
    required this.loadBalancers,
    required this.meshConfigs,
    required this.networks,
    required this.serviceMeshId,
    required this.serviceMeshName,
    required this.sidecarVersion,
    required this.status,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusters': clusters,
      'createTime': createTime,
      'edition': edition,
      'endpoints': pulumi.Input.mapInputValue<List<GetServiceMeshesMeshEndpoint>, List<Map<String, dynamic>>>(endpoints, (value) => pulumi.Input.encodeList<GetServiceMeshesMeshEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'errorMessage': errorMessage,
      'id': id,
      'istioOperatorVersion': istioOperatorVersion,
      'kubeConfig': kubeConfig,
      'loadBalancers': pulumi.Input.mapInputValue<List<GetServiceMeshesMeshLoadBalancer>, List<Map<String, dynamic>>>(loadBalancers, (value) => pulumi.Input.encodeList<GetServiceMeshesMeshLoadBalancer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'meshConfigs': pulumi.Input.mapInputValue<List<GetServiceMeshesMeshMeshConfig>, List<Map<String, dynamic>>>(meshConfigs, (value) => pulumi.Input.encodeList<GetServiceMeshesMeshMeshConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networks': pulumi.Input.mapInputValue<List<GetServiceMeshesMeshNetwork>, List<Map<String, dynamic>>>(networks, (value) => pulumi.Input.encodeList<GetServiceMeshesMeshNetwork, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceMeshId': serviceMeshId,
      'serviceMeshName': serviceMeshName,
      'sidecarVersion': sidecarVersion,
      'status': status,
      'version': version,
    };
  }

  factory GetServiceMeshesMesh.fromMap(Map<String, dynamic> map) {
    return GetServiceMeshesMesh(
      clusters: pulumi.Input.fromValue((map['clusters'] as List).cast<String>()),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      edition: pulumi.Input.fromValue(map['edition'] as String),
      endpoints: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceMeshesMeshEndpoint>(map['endpoints']!, (value) => GetServiceMeshesMeshEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
      errorMessage: pulumi.Input.fromValue(map['errorMessage'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      istioOperatorVersion: pulumi.Input.fromValue(map['istioOperatorVersion'] as String),
      kubeConfig: pulumi.Input.fromValue(map['kubeConfig'] as String),
      loadBalancers: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceMeshesMeshLoadBalancer>(map['loadBalancers']!, (value) => GetServiceMeshesMeshLoadBalancer.fromMap((value as Map).cast<String, dynamic>()))),
      meshConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceMeshesMeshMeshConfig>(map['meshConfigs']!, (value) => GetServiceMeshesMeshMeshConfig.fromMap((value as Map).cast<String, dynamic>()))),
      networks: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceMeshesMeshNetwork>(map['networks']!, (value) => GetServiceMeshesMeshNetwork.fromMap((value as Map).cast<String, dynamic>()))),
      serviceMeshId: pulumi.Input.fromValue(map['serviceMeshId'] as String),
      serviceMeshName: pulumi.Input.fromValue(map['serviceMeshName'] as String),
      sidecarVersion: pulumi.Input.fromValue(map['sidecarVersion'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

