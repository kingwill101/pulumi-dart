// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEnvironmentsEnvironment {
  /// The ID of the resource bound to the environment instance.
  final pulumi.Input<String> bindResourceId;

  /// The resource type.
  final pulumi.Input<String> bindResourceType;

  /// The CIDR block that is bound to the VPC.
  final pulumi.Input<String> bindVpcCidr;

  /// The ID of the environment instance.
  final pulumi.Input<String> environmentId;

  /// The name of the environment instance.
  final pulumi.Input<String> environmentName;

  /// The environment type. Valid values: `CS`, `ECS`, `Cloud`.
  final pulumi.Input<String> environmentType;

  /// The unique ID of the Grafana data source.
  final pulumi.Input<String> grafanaDatasourceUid;

  /// The unique ID of the Grafana directory.
  final pulumi.Input<String> grafanaFolderUid;

  /// The ID of the environment instance.
  final pulumi.Input<String> id;

  /// Indicates whether agents or exporters are managed.
  final pulumi.Input<String> managedType;

  /// The ID of the Prometheus instance.
  final pulumi.Input<String> prometheusInstanceId;

  /// The region ID.
  final pulumi.Input<String> regionId;

  /// The ID of the resource group.
  final pulumi.Input<String> resourceGroupId;

  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>> tags;

  /// The user ID.
  final pulumi.Input<String> userId;

  /// Creates a new [GetEnvironmentsEnvironment].
  /// [bindResourceId] The ID of the resource bound to the environment instance.
  /// [bindResourceType] The resource type.
  /// [bindVpcCidr] The CIDR block that is bound to the VPC.
  /// [environmentId] The ID of the environment instance.
  /// [environmentName] The name of the environment instance.
  /// [environmentType] The environment type. Valid values: `CS`, `ECS`, `Cloud`.
  /// [grafanaDatasourceUid] The unique ID of the Grafana data source.
  /// [grafanaFolderUid] The unique ID of the Grafana directory.
  /// [id] The ID of the environment instance.
  /// [managedType] Indicates whether agents or exporters are managed.
  /// [prometheusInstanceId] The ID of the Prometheus instance.
  /// [regionId] The region ID.
  /// [resourceGroupId] The ID of the resource group.
  /// [tags] A mapping of tags to assign to the resource.
  /// [userId] The user ID.
  GetEnvironmentsEnvironment({
    required this.bindResourceId,
    required this.bindResourceType,
    required this.bindVpcCidr,
    required this.environmentId,
    required this.environmentName,
    required this.environmentType,
    required this.grafanaDatasourceUid,
    required this.grafanaFolderUid,
    required this.id,
    required this.managedType,
    required this.prometheusInstanceId,
    required this.regionId,
    required this.resourceGroupId,
    required this.tags,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bindResourceId': bindResourceId,
      'bindResourceType': bindResourceType,
      'bindVpcCidr': bindVpcCidr,
      'environmentId': environmentId,
      'environmentName': environmentName,
      'environmentType': environmentType,
      'grafanaDatasourceUid': grafanaDatasourceUid,
      'grafanaFolderUid': grafanaFolderUid,
      'id': id,
      'managedType': managedType,
      'prometheusInstanceId': prometheusInstanceId,
      'regionId': regionId,
      'resourceGroupId': resourceGroupId,
      'tags': tags,
      'userId': userId,
    };
  }

  factory GetEnvironmentsEnvironment.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentsEnvironment(
      bindResourceId: pulumi.Input.fromValue(map['bindResourceId'] as String),
      bindResourceType: pulumi.Input.fromValue(
        map['bindResourceType'] as String,
      ),
      bindVpcCidr: pulumi.Input.fromValue(map['bindVpcCidr'] as String),
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      environmentName: pulumi.Input.fromValue(map['environmentName'] as String),
      environmentType: pulumi.Input.fromValue(map['environmentType'] as String),
      grafanaDatasourceUid: pulumi.Input.fromValue(
        map['grafanaDatasourceUid'] as String,
      ),
      grafanaFolderUid: pulumi.Input.fromValue(
        map['grafanaFolderUid'] as String,
      ),
      id: pulumi.Input.fromValue(map['id'] as String),
      managedType: pulumi.Input.fromValue(map['managedType'] as String),
      prometheusInstanceId: pulumi.Input.fromValue(
        map['prometheusInstanceId'] as String,
      ),
      regionId: pulumi.Input.fromValue(map['regionId'] as String),
      resourceGroupId: pulumi.Input.fromValue(map['resourceGroupId'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      userId: pulumi.Input.fromValue(map['userId'] as String),
    );
  }
}
