// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node_group_ack_config_custom_annotation.dart';
import 'cluster_node_group_ack_config_custom_label.dart';
import 'cluster_node_group_ack_config_node_selector.dart';
import 'cluster_node_group_ack_config_pvc.dart';
import 'cluster_node_group_ack_config_toleration.dart';
import 'cluster_node_group_ack_config_volume.dart';
import 'cluster_node_group_ack_config_volume_mount.dart';

class ClusterNodeGroupAckConfig {
  /// The ack cluster instance id.
  final String ackInstanceId;
  /// The ack cluster custom annotations. See `custom_annotations` below.
  final List<ClusterNodeGroupAckConfigCustomAnnotation>? customAnnotations;
  /// The ack cluster custom labels. See `custom_labels` below.
  final List<ClusterNodeGroupAckConfigCustomLabel>? customLabels;
  /// The job pod resource of limit cpu.
  final double limitCpu;
  /// The job pod resource of limit memory.
  final double limitMemory;
  /// The ack cluster namespace.
  final String namespace;
  /// The ack cluster node affinity.
  final String? nodeAffinity;
  /// The ack cluster node selectors for job pods scheduling. See `node_selectors` below.
  final List<ClusterNodeGroupAckConfigNodeSelector>? nodeSelectors;
  /// The job pod affinity.
  final String? podAffinity;
  /// The job pod anti-affinity.
  final String? podAntiAffinity;
  /// The job pod pre start command.
  final List<String>? preStartCommands;
  /// The ack cluster persistent volume claim. See `pvcs` below.
  final List<ClusterNodeGroupAckConfigPvc>? pvcs;
  /// The job pod resource of request cpu.
  final double requestCpu;
  /// The job pod resource of request memory.
  final double requestMemory;
  /// The ack cluster tolerations. See `tolerations` below.
  final List<ClusterNodeGroupAckConfigToleration>? tolerations;
  /// The ack cluster volume mounts. See `volume_mounts` below.
  final List<ClusterNodeGroupAckConfigVolumeMount>? volumeMounts;
  /// The ack cluster volumes. See `volumes` below.
  final List<ClusterNodeGroupAckConfigVolume>? volumes;

  /// Creates a new [ClusterNodeGroupAckConfig].
  /// [ackInstanceId] The ack cluster instance id.
  /// [customAnnotations] The ack cluster custom annotations. See `custom_annotations` below.
  /// [customLabels] The ack cluster custom labels. See `custom_labels` below.
  /// [limitCpu] The job pod resource of limit cpu.
  /// [limitMemory] The job pod resource of limit memory.
  /// [namespace] The ack cluster namespace.
  /// [nodeAffinity] The ack cluster node affinity.
  /// [nodeSelectors] The ack cluster node selectors for job pods scheduling. See `node_selectors` below.
  /// [podAffinity] The job pod affinity.
  /// [podAntiAffinity] The job pod anti-affinity.
  /// [preStartCommands] The job pod pre start command.
  /// [pvcs] The ack cluster persistent volume claim. See `pvcs` below.
  /// [requestCpu] The job pod resource of request cpu.
  /// [requestMemory] The job pod resource of request memory.
  /// [tolerations] The ack cluster tolerations. See `tolerations` below.
  /// [volumeMounts] The ack cluster volume mounts. See `volume_mounts` below.
  /// [volumes] The ack cluster volumes. See `volumes` below.
  ClusterNodeGroupAckConfig({
    required this.ackInstanceId,
    this.customAnnotations,
    this.customLabels,
    required this.limitCpu,
    required this.limitMemory,
    required this.namespace,
    this.nodeAffinity,
    this.nodeSelectors,
    this.podAffinity,
    this.podAntiAffinity,
    this.preStartCommands,
    this.pvcs,
    required this.requestCpu,
    required this.requestMemory,
    this.tolerations,
    this.volumeMounts,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ackInstanceId': ackInstanceId,
      'customAnnotations': ?customAnnotations == null ? null : pulumi.Input.encodeList<ClusterNodeGroupAckConfigCustomAnnotation, Map<String, dynamic>>(customAnnotations!, (value) => value.toMap()),
      'customLabels': ?customLabels == null ? null : pulumi.Input.encodeList<ClusterNodeGroupAckConfigCustomLabel, Map<String, dynamic>>(customLabels!, (value) => value.toMap()),
      'limitCpu': limitCpu,
      'limitMemory': limitMemory,
      'namespace': namespace,
      'nodeAffinity': ?nodeAffinity,
      'nodeSelectors': ?nodeSelectors == null ? null : pulumi.Input.encodeList<ClusterNodeGroupAckConfigNodeSelector, Map<String, dynamic>>(nodeSelectors!, (value) => value.toMap()),
      'podAffinity': ?podAffinity,
      'podAntiAffinity': ?podAntiAffinity,
      'preStartCommands': ?preStartCommands,
      'pvcs': ?pvcs == null ? null : pulumi.Input.encodeList<ClusterNodeGroupAckConfigPvc, Map<String, dynamic>>(pvcs!, (value) => value.toMap()),
      'requestCpu': requestCpu,
      'requestMemory': requestMemory,
      'tolerations': ?tolerations == null ? null : pulumi.Input.encodeList<ClusterNodeGroupAckConfigToleration, Map<String, dynamic>>(tolerations!, (value) => value.toMap()),
      'volumeMounts': ?volumeMounts == null ? null : pulumi.Input.encodeList<ClusterNodeGroupAckConfigVolumeMount, Map<String, dynamic>>(volumeMounts!, (value) => value.toMap()),
      'volumes': ?volumes == null ? null : pulumi.Input.encodeList<ClusterNodeGroupAckConfigVolume, Map<String, dynamic>>(volumes!, (value) => value.toMap()),
    };
  }

  factory ClusterNodeGroupAckConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodeGroupAckConfig(
      ackInstanceId: map['ackInstanceId'] as String,
      customAnnotations: map['customAnnotations'] == null ? null : pulumi.Input.decodeList<ClusterNodeGroupAckConfigCustomAnnotation>(map['customAnnotations'], (value) => ClusterNodeGroupAckConfigCustomAnnotation.fromMap((value as Map).cast<String, dynamic>())),
      customLabels: map['customLabels'] == null ? null : pulumi.Input.decodeList<ClusterNodeGroupAckConfigCustomLabel>(map['customLabels'], (value) => ClusterNodeGroupAckConfigCustomLabel.fromMap((value as Map).cast<String, dynamic>())),
      limitCpu: map['limitCpu'] as double,
      limitMemory: map['limitMemory'] as double,
      namespace: map['namespace'] as String,
      nodeAffinity: map['nodeAffinity'] == null ? null : map['nodeAffinity'] as String,
      nodeSelectors: map['nodeSelectors'] == null ? null : pulumi.Input.decodeList<ClusterNodeGroupAckConfigNodeSelector>(map['nodeSelectors'], (value) => ClusterNodeGroupAckConfigNodeSelector.fromMap((value as Map).cast<String, dynamic>())),
      podAffinity: map['podAffinity'] == null ? null : map['podAffinity'] as String,
      podAntiAffinity: map['podAntiAffinity'] == null ? null : map['podAntiAffinity'] as String,
      preStartCommands: map['preStartCommands'] == null ? null : (map['preStartCommands'] as List).cast<String>(),
      pvcs: map['pvcs'] == null ? null : pulumi.Input.decodeList<ClusterNodeGroupAckConfigPvc>(map['pvcs'], (value) => ClusterNodeGroupAckConfigPvc.fromMap((value as Map).cast<String, dynamic>())),
      requestCpu: map['requestCpu'] as double,
      requestMemory: map['requestMemory'] as double,
      tolerations: map['tolerations'] == null ? null : pulumi.Input.decodeList<ClusterNodeGroupAckConfigToleration>(map['tolerations'], (value) => ClusterNodeGroupAckConfigToleration.fromMap((value as Map).cast<String, dynamic>())),
      volumeMounts: map['volumeMounts'] == null ? null : pulumi.Input.decodeList<ClusterNodeGroupAckConfigVolumeMount>(map['volumeMounts'], (value) => ClusterNodeGroupAckConfigVolumeMount.fromMap((value as Map).cast<String, dynamic>())),
      volumes: map['volumes'] == null ? null : pulumi.Input.decodeList<ClusterNodeGroupAckConfigVolume>(map['volumes'], (value) => ClusterNodeGroupAckConfigVolume.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

