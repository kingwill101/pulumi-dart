// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_region_network_endpoint_group_app_engine/get_region_network_endpoint_group_app_engine.dart';
import '../get_region_network_endpoint_group_cloud_function/get_region_network_endpoint_group_cloud_function.dart';
import '../get_region_network_endpoint_group_cloud_run/get_region_network_endpoint_group_cloud_run.dart';
import '../get_region_network_endpoint_group_psc_data/get_region_network_endpoint_group_psc_data.dart';
import '../get_region_network_endpoint_group_serverless_deployment/get_region_network_endpoint_group_serverless_deployment.dart';

/// Result data returned by getRegionNetworkEndpointGroup.
class GetRegionNetworkEndpointGroupResult {
  final List<GetRegionNetworkEndpointGroupAppEngine> appEngines;
  final List<GetRegionNetworkEndpointGroupCloudFunction> cloudFunctions;
  final List<GetRegionNetworkEndpointGroupCloudRun> cloudRuns;

  /// The RNEG description.
  final String description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? name;

  /// The network to which all network endpoints in the RNEG belong.
  final String network;

  /// Type of network endpoints in this network endpoint group.
  final String networkEndpointType;
  final String? project;
  final List<GetRegionNetworkEndpointGroupPscData> pscDatas;

  /// The target service url used to set up private service connection to a Google API or a PSC Producer Service Attachment.
  final String pscTargetService;
  final String? region;
  final String? selfLink;
  final List<GetRegionNetworkEndpointGroupServerlessDeployment>
      serverlessDeployments;

  /// subnetwork to which all network endpoints in the RNEG belong.
  final String subnetwork;

  GetRegionNetworkEndpointGroupResult({
    required this.appEngines,
    required this.cloudFunctions,
    required this.cloudRuns,
    required this.description,
    required this.id,
    this.name,
    required this.network,
    required this.networkEndpointType,
    this.project,
    required this.pscDatas,
    required this.pscTargetService,
    this.region,
    this.selfLink,
    required this.serverlessDeployments,
    required this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appEngines'] = pulumi.Input.encodeList<
        GetRegionNetworkEndpointGroupAppEngine,
        Map<String, dynamic>>(appEngines, (value) => value.toMap());
    map['cloudFunctions'] = pulumi.Input.encodeList<
        GetRegionNetworkEndpointGroupCloudFunction,
        Map<String, dynamic>>(cloudFunctions, (value) => value.toMap());
    map['cloudRuns'] = pulumi.Input.encodeList<
        GetRegionNetworkEndpointGroupCloudRun,
        Map<String, dynamic>>(cloudRuns, (value) => value.toMap());
    map['description'] = description;
    map['id'] = id;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['network'] = network;
    map['networkEndpointType'] = networkEndpointType;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['pscDatas'] = pulumi.Input.encodeList<
        GetRegionNetworkEndpointGroupPscData,
        Map<String, dynamic>>(pscDatas, (value) => value.toMap());
    map['pscTargetService'] = pscTargetService;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final selfLinkValue = selfLink;
    if (selfLinkValue != null) {
      map['selfLink'] = selfLinkValue;
    }
    map['serverlessDeployments'] = pulumi.Input.encodeList<
        GetRegionNetworkEndpointGroupServerlessDeployment,
        Map<String, dynamic>>(serverlessDeployments, (value) => value.toMap());
    map['subnetwork'] = subnetwork;
    return map;
  }

  factory GetRegionNetworkEndpointGroupResult.fromMap(
      Map<String, dynamic> map) {
    return GetRegionNetworkEndpointGroupResult(
      appEngines:
          pulumi.Input.decodeList<GetRegionNetworkEndpointGroupAppEngine>(
              map['appEngines'],
              (value) => GetRegionNetworkEndpointGroupAppEngine.fromMap(
                  (value as Map).cast<String, dynamic>())),
      cloudFunctions:
          pulumi.Input.decodeList<GetRegionNetworkEndpointGroupCloudFunction>(
              map['cloudFunctions'],
              (value) => GetRegionNetworkEndpointGroupCloudFunction.fromMap(
                  (value as Map).cast<String, dynamic>())),
      cloudRuns: pulumi.Input.decodeList<GetRegionNetworkEndpointGroupCloudRun>(
          map['cloudRuns'],
          (value) => GetRegionNetworkEndpointGroupCloudRun.fromMap(
              (value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      network: map['network'] as String,
      networkEndpointType: map['networkEndpointType'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      pscDatas: pulumi.Input.decodeList<GetRegionNetworkEndpointGroupPscData>(
          map['pscDatas'],
          (value) => GetRegionNetworkEndpointGroupPscData.fromMap(
              (value as Map).cast<String, dynamic>())),
      pscTargetService: map['pscTargetService'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      selfLink: map['selfLink'] == null ? null : map['selfLink'] as String,
      serverlessDeployments: pulumi.Input.decodeList<
              GetRegionNetworkEndpointGroupServerlessDeployment>(
          map['serverlessDeployments'],
          (value) => GetRegionNetworkEndpointGroupServerlessDeployment.fromMap(
              (value as Map).cast<String, dynamic>())),
      subnetwork: map['subnetwork'] as String,
    );
  }
}
