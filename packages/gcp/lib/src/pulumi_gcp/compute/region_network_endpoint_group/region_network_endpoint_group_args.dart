// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../region_network_endpoint_group_app_engine/region_network_endpoint_group_app_engine.dart';
import '../region_network_endpoint_group_cloud_function/region_network_endpoint_group_cloud_function.dart';
import '../region_network_endpoint_group_cloud_run/region_network_endpoint_group_cloud_run.dart';
import '../region_network_endpoint_group_psc_data/region_network_endpoint_group_psc_data.dart';
import '../region_network_endpoint_group_serverless_deployment/region_network_endpoint_group_serverless_deployment.dart';

/// The set of arguments for RegionNetworkEndpointGroup.
class RegionNetworkEndpointGroupArgs {
  /// This field is only used for SERVERLESS NEGs.
  /// Only one of cloud_run, app_engine, cloud_function or serverless_deployment may be set.
  /// Structure is documented below.
  final Input<RegionNetworkEndpointGroupAppEngine>? appEngine;

  /// This field is only used for SERVERLESS NEGs.
  /// Only one of cloud_run, app_engine, cloud_function or serverless_deployment may be set.
  /// Structure is documented below.
  final Input<RegionNetworkEndpointGroupCloudFunction>? cloudFunction;

  /// This field is only used for SERVERLESS NEGs.
  /// Only one of cloud_run, app_engine, cloud_function or serverless_deployment may be set.
  /// Structure is documented below.
  final Input<RegionNetworkEndpointGroupCloudRun>? cloudRun;

  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  final Input<String>? description;

  /// Name of the resource; provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final Input<String>? name;

  /// This field is only used for PSC and INTERNET NEGs.
  /// The URL of the network to which all network endpoints in the NEG belong. Uses
  /// "default" project network if unspecified.
  final Input<String>? network;

  /// Type of network endpoints in this network endpoint group. Defaults to SERVERLESS.
  /// Default value is `SERVERLESS`.
  /// Possible values are: `SERVERLESS`, `PRIVATE_SERVICE_CONNECT`, `INTERNET_IP_PORT`, `INTERNET_FQDN_PORT`, `GCE_VM_IP_PORTMAP`.
  final Input<String>? networkEndpointType;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// This field is only used for PSC NEGs.
  /// Structure is documented below.
  final Input<RegionNetworkEndpointGroupPscData>? pscData;

  /// This field is only used for PSC and INTERNET NEGs.
  /// The target service url used to set up private service connection to
  /// a Google API or a PSC Producer Service Attachment.
  final Input<String>? pscTargetService;

  /// A reference to the region where the regional NEGs reside.
  final Input<String> region;

  /// This field is only used for SERVERLESS NEGs.
  /// Only one of cloudRun, appEngine, cloudFunction or serverlessDeployment may be set.
  /// Structure is documented below.
  final Input<RegionNetworkEndpointGroupServerlessDeployment>?
      serverlessDeployment;

  /// This field is only used for PSC NEGs.
  /// Optional URL of the subnetwork to which all network endpoints in the NEG belong.
  final Input<String>? subnetwork;

  RegionNetworkEndpointGroupArgs({
    this.appEngine,
    this.cloudFunction,
    this.cloudRun,
    this.description,
    this.name,
    this.network,
    this.networkEndpointType,
    this.project,
    this.pscData,
    this.pscTargetService,
    required this.region,
    this.serverlessDeployment,
    this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final appEngineValue = appEngine;
    if (appEngineValue != null) {
      map['appEngine'] = Input.mapOptionalInputValue<
          RegionNetworkEndpointGroupAppEngine,
          Map<String, dynamic>>(appEngineValue, (value) => value.toMap());
    }
    final cloudFunctionValue = cloudFunction;
    if (cloudFunctionValue != null) {
      map['cloudFunction'] = Input.mapOptionalInputValue<
          RegionNetworkEndpointGroupCloudFunction,
          Map<String, dynamic>>(cloudFunctionValue, (value) => value.toMap());
    }
    final cloudRunValue = cloudRun;
    if (cloudRunValue != null) {
      map['cloudRun'] = Input.mapOptionalInputValue<
          RegionNetworkEndpointGroupCloudRun,
          Map<String, dynamic>>(cloudRunValue, (value) => value.toMap());
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
      map['networkEndpointType'] = networkEndpointTypeValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final pscDataValue = pscData;
    if (pscDataValue != null) {
      map['pscData'] = Input.mapOptionalInputValue<
          RegionNetworkEndpointGroupPscData,
          Map<String, dynamic>>(pscDataValue, (value) => value.toMap());
    }
    final pscTargetServiceValue = pscTargetService;
    if (pscTargetServiceValue != null) {
      map['pscTargetService'] = pscTargetServiceValue;
    }
    map['region'] = region;
    final serverlessDeploymentValue = serverlessDeployment;
    if (serverlessDeploymentValue != null) {
      map['serverlessDeployment'] = Input.mapOptionalInputValue<
              RegionNetworkEndpointGroupServerlessDeployment,
              Map<String, dynamic>>(
          serverlessDeploymentValue, (value) => value.toMap());
    }
    final subnetworkValue = subnetwork;
    if (subnetworkValue != null) {
      map['subnetwork'] = subnetworkValue;
    }
    return map;
  }

  factory RegionNetworkEndpointGroupArgs.fromMap(Map<String, dynamic> map) {
    return RegionNetworkEndpointGroupArgs(
      appEngine: Input.asOptionalInput<RegionNetworkEndpointGroupAppEngine>(
          map['appEngine']),
      cloudFunction:
          Input.asOptionalInput<RegionNetworkEndpointGroupCloudFunction>(
              map['cloudFunction']),
      cloudRun: Input.asOptionalInput<RegionNetworkEndpointGroupCloudRun>(
          map['cloudRun']),
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      network: Input.asOptionalInput<String>(map['network']),
      networkEndpointType:
          Input.asOptionalInput<String>(map['networkEndpointType']),
      project: Input.asOptionalInput<String>(map['project']),
      pscData: Input.asOptionalInput<RegionNetworkEndpointGroupPscData>(
          map['pscData']),
      pscTargetService: Input.asOptionalInput<String>(map['pscTargetService']),
      region: Input.asInput<String>(map['region']),
      serverlessDeployment:
          Input.asOptionalInput<RegionNetworkEndpointGroupServerlessDeployment>(
              map['serverlessDeployment']),
      subnetwork: Input.asOptionalInput<String>(map['subnetwork']),
    );
  }
}
