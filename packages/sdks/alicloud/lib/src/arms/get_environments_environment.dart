// ignore_for_file: unused_element, unnecessary_cast


class GetEnvironmentsEnvironment {
  /// The ID of the resource bound to the environment instance.
  final String bindResourceId;
  /// The resource type.
  final String bindResourceType;
  /// The CIDR block that is bound to the VPC.
  final String bindVpcCidr;
  /// The ID of the environment instance.
  final String environmentId;
  /// The name of the environment instance.
  final String environmentName;
  /// The environment type. Valid values: `CS`, `ECS`, `Cloud`.
  final String environmentType;
  /// The unique ID of the Grafana data source.
  final String grafanaDatasourceUid;
  /// The unique ID of the Grafana directory.
  final String grafanaFolderUid;
  /// The ID of the environment instance.
  final String id;
  /// Indicates whether agents or exporters are managed.
  final String managedType;
  /// The ID of the Prometheus instance.
  final String prometheusInstanceId;
  /// The region ID.
  final String regionId;
  /// The ID of the resource group.
  final String resourceGroupId;
  /// A mapping of tags to assign to the resource.
  final Map<String, String> tags;
  /// The user ID.
  final String userId;

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
      bindResourceId: map['bindResourceId'] as String,
      bindResourceType: map['bindResourceType'] as String,
      bindVpcCidr: map['bindVpcCidr'] as String,
      environmentId: map['environmentId'] as String,
      environmentName: map['environmentName'] as String,
      environmentType: map['environmentType'] as String,
      grafanaDatasourceUid: map['grafanaDatasourceUid'] as String,
      grafanaFolderUid: map['grafanaFolderUid'] as String,
      id: map['id'] as String,
      managedType: map['managedType'] as String,
      prometheusInstanceId: map['prometheusInstanceId'] as String,
      regionId: map['regionId'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      userId: map['userId'] as String,
    );
  }
}

