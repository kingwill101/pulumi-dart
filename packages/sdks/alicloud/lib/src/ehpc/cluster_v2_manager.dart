// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_v2_manager_directory_service.dart';
import 'cluster_v2_manager_dns.dart';
import 'cluster_v2_manager_manager_node.dart';
import 'cluster_v2_manager_scheduler.dart';

class ClusterV2Manager {
  /// The configurations of the domain account service. See `directory_service` below.
  final pulumi.Input<ClusterV2ManagerDirectoryService>? directoryService;
  /// The configurations of the domain name resolution service. See `dns` below.
  final pulumi.Input<ClusterV2ManagerDns>? dns;
  /// The hardware configurations of the management node. See `manager_node` below.
  final pulumi.Input<ClusterV2ManagerManagerNode>? managerNode;
  /// The configurations of the scheduler service. See `scheduler` below.
  final pulumi.Input<ClusterV2ManagerScheduler>? scheduler;

  /// Creates a new [ClusterV2Manager].
  /// [directoryService] The configurations of the domain account service. See `directory_service` below.
  /// [dns] The configurations of the domain name resolution service. See `dns` below.
  /// [managerNode] The hardware configurations of the management node. See `manager_node` below.
  /// [scheduler] The configurations of the scheduler service. See `scheduler` below.
  const ClusterV2Manager({
    this.directoryService,
    this.dns,
    this.managerNode,
    this.scheduler,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directoryService': ?pulumi.Input.mapOptionalInputValue<ClusterV2ManagerDirectoryService, Map<String, dynamic>>(directoryService, (value) => value.toMap()),
      'dns': ?pulumi.Input.mapOptionalInputValue<ClusterV2ManagerDns, Map<String, dynamic>>(dns, (value) => value.toMap()),
      'managerNode': ?pulumi.Input.mapOptionalInputValue<ClusterV2ManagerManagerNode, Map<String, dynamic>>(managerNode, (value) => value.toMap()),
      'scheduler': ?pulumi.Input.mapOptionalInputValue<ClusterV2ManagerScheduler, Map<String, dynamic>>(scheduler, (value) => value.toMap()),
    };
  }

  factory ClusterV2Manager.fromMap(Map<String, dynamic> map) {
    return ClusterV2Manager(
      directoryService: (() { final guardedValue = map['directoryService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterV2ManagerDirectoryService.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dns: (() { final guardedValue = map['dns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterV2ManagerDns.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      managerNode: (() { final guardedValue = map['managerNode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterV2ManagerManagerNode.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scheduler: (() { final guardedValue = map['scheduler']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterV2ManagerScheduler.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

