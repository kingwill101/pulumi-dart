// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_service_connect_default.dart';
import 'get_cluster_setting.dart';

/// Result data returned by getCluster.
class GetClusterResult {
  /// ARN of the ECS Cluster
  final String? arn;
  final String? clusterName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Number of pending tasks for the ECS Cluster
  final int? pendingTasksCount;
  final String? region;
  /// Number of registered container instances for the ECS Cluster
  final int? registeredContainerInstancesCount;
  /// Number of running tasks for the ECS Cluster
  final int? runningTasksCount;
  /// Default Service Connect namespace
  final List<GetClusterServiceConnectDefault>? serviceConnectDefaults;
  /// Settings associated with the ECS Cluster
  final List<GetClusterSetting>? settings;
  /// Status of the ECS Cluster
  final String? status;
  /// Key-value map of resource tags
  final Map<String, String>? tags;

  /// Creates a new [GetClusterResult].
  /// [arn] ARN of the ECS Cluster
  /// [clusterName] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [pendingTasksCount] Number of pending tasks for the ECS Cluster
  /// [region] Optional.
  /// [registeredContainerInstancesCount] Number of registered container instances for the ECS Cluster
  /// [runningTasksCount] Number of running tasks for the ECS Cluster
  /// [serviceConnectDefaults] Default Service Connect namespace
  /// [settings] Settings associated with the ECS Cluster
  /// [status] Status of the ECS Cluster
  /// [tags] Key-value map of resource tags
  const GetClusterResult({
    this.arn,
    this.clusterName,
    this.id,
    this.pendingTasksCount,
    this.region,
    this.registeredContainerInstancesCount,
    this.runningTasksCount,
    this.serviceConnectDefaults,
    this.settings,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'clusterName': ?clusterName,
      'id': ?id,
      'pendingTasksCount': ?pendingTasksCount,
      'region': ?region,
      'registeredContainerInstancesCount': ?registeredContainerInstancesCount,
      'runningTasksCount': ?runningTasksCount,
      'serviceConnectDefaults': ?(() { final guardedValue = serviceConnectDefaults; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterServiceConnectDefault, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'settings': ?(() { final guardedValue = settings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterSetting, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pendingTasksCount: (() { final guardedValue = map['pendingTasksCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      registeredContainerInstancesCount: (() { final guardedValue = map['registeredContainerInstancesCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      runningTasksCount: (() { final guardedValue = map['runningTasksCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      serviceConnectDefaults: (() { final guardedValue = map['serviceConnectDefaults']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterServiceConnectDefault>(guardedValue, (value) => GetClusterServiceConnectDefault.fromMap((value as Map).cast<String, dynamic>())); })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterSetting>(guardedValue, (value) => GetClusterSetting.fromMap((value as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
