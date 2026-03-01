// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_v2_manager_directory_service.dart';
import 'cluster_v2_manager_dns.dart';
import 'cluster_v2_manager_manager_node.dart';
import 'cluster_v2_manager_scheduler.dart';

class ClusterV2Manager {
  /// The configurations of the domain account service. See `directory_service` below.
  final ClusterV2ManagerDirectoryService? directoryService;
  /// The configurations of the domain name resolution service. See `dns` below.
  final ClusterV2ManagerDns? dns;
  /// The hardware configurations of the management node. See `manager_node` below.
  final ClusterV2ManagerManagerNode? managerNode;
  /// The configurations of the scheduler service. See `scheduler` below.
  final ClusterV2ManagerScheduler? scheduler;

  /// Creates a new [ClusterV2Manager].
  /// [directoryService] The configurations of the domain account service. See `directory_service` below.
  /// [dns] The configurations of the domain name resolution service. See `dns` below.
  /// [managerNode] The hardware configurations of the management node. See `manager_node` below.
  /// [scheduler] The configurations of the scheduler service. See `scheduler` below.
  ClusterV2Manager({
    this.directoryService,
    this.dns,
    this.managerNode,
    this.scheduler,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directoryService': ?directoryService == null ? null : directoryService!.toMap(),
      'dns': ?dns == null ? null : dns!.toMap(),
      'managerNode': ?managerNode == null ? null : managerNode!.toMap(),
      'scheduler': ?scheduler == null ? null : scheduler!.toMap(),
    };
  }

  factory ClusterV2Manager.fromMap(Map<String, dynamic> map) {
    return ClusterV2Manager(
      directoryService: map['directoryService'] == null ? null : ClusterV2ManagerDirectoryService.fromMap((map['directoryService'] as Map).cast<String, dynamic>()),
      dns: map['dns'] == null ? null : ClusterV2ManagerDns.fromMap((map['dns'] as Map).cast<String, dynamic>()),
      managerNode: map['managerNode'] == null ? null : ClusterV2ManagerManagerNode.fromMap((map['managerNode'] as Map).cast<String, dynamic>()),
      scheduler: map['scheduler'] == null ? null : ClusterV2ManagerScheduler.fromMap((map['scheduler'] as Map).cast<String, dynamic>()),
    );
  }
}

