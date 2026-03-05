// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_service_connect_default.dart';
import 'get_cluster_setting.dart';

/// Result data returned by getCluster.
class GetClusterResult {
  /// ARN of the ECS Cluster
  final String arn;
  final String clusterName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Number of pending tasks for the ECS Cluster
  final int pendingTasksCount;
  final String region;
  /// The number of registered container instances for the ECS Cluster
  final int registeredContainerInstancesCount;
  /// Number of running tasks for the ECS Cluster
  final int runningTasksCount;
  /// The default Service Connect namespace
  final List<GetClusterServiceConnectDefault> serviceConnectDefaults;
  /// Settings associated with the ECS Cluster
  final List<GetClusterSetting> settings;
  /// Status of the ECS Cluster
  final String status;
  /// Key-value map of resource tags
  final Map<String, String> tags;

  /// Creates a new [GetClusterResult].
  /// [arn] ARN of the ECS Cluster
  /// [clusterName] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [pendingTasksCount] Number of pending tasks for the ECS Cluster
  /// [region] Required.
  /// [registeredContainerInstancesCount] The number of registered container instances for the ECS Cluster
  /// [runningTasksCount] Number of running tasks for the ECS Cluster
  /// [serviceConnectDefaults] The default Service Connect namespace
  /// [settings] Settings associated with the ECS Cluster
  /// [status] Status of the ECS Cluster
  /// [tags] Key-value map of resource tags
  GetClusterResult({
    required this.arn,
    required this.clusterName,
    required this.id,
    required this.pendingTasksCount,
    required this.region,
    required this.registeredContainerInstancesCount,
    required this.runningTasksCount,
    required this.serviceConnectDefaults,
    required this.settings,
    required this.status,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'clusterName': clusterName,
      'id': id,
      'pendingTasksCount': pendingTasksCount,
      'region': region,
      'registeredContainerInstancesCount': registeredContainerInstancesCount,
      'runningTasksCount': runningTasksCount,
      'serviceConnectDefaults': pulumi.Input.encodeList<GetClusterServiceConnectDefault, Map<String, dynamic>>(serviceConnectDefaults, (value) => value.toMap()),
      'settings': pulumi.Input.encodeList<GetClusterSetting, Map<String, dynamic>>(settings, (value) => value.toMap()),
      'status': status,
      'tags': tags,
    };
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      arn: map['arn'] as String,
      clusterName: map['clusterName'] as String,
      id: map['id'] as String,
      pendingTasksCount: map['pendingTasksCount'] as int,
      region: map['region'] as String,
      registeredContainerInstancesCount: map['registeredContainerInstancesCount'] as int,
      runningTasksCount: map['runningTasksCount'] as int,
      serviceConnectDefaults: pulumi.Input.decodeList<GetClusterServiceConnectDefault>(map['serviceConnectDefaults']!, (value) => GetClusterServiceConnectDefault.fromMap((value as Map).cast<String, dynamic>())),
      settings: pulumi.Input.decodeList<GetClusterSetting>(map['settings']!, (value) => GetClusterSetting.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

