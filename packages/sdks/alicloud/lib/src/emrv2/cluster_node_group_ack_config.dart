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
  final pulumi.Input<String> ackInstanceId;
  /// The ack cluster custom annotations. See `custom_annotations` below.
  final pulumi.Input<List<ClusterNodeGroupAckConfigCustomAnnotation>>? customAnnotations;
  /// The ack cluster custom labels. See `custom_labels` below.
  final pulumi.Input<List<ClusterNodeGroupAckConfigCustomLabel>>? customLabels;
  /// The job pod resource of limit cpu.
  final pulumi.Input<double> limitCpu;
  /// The job pod resource of limit memory.
  final pulumi.Input<double> limitMemory;
  /// The ack cluster namespace.
  final pulumi.Input<String> namespace;
  /// The ack cluster node affinity.
  final pulumi.Input<String>? nodeAffinity;
  /// The ack cluster node selectors for job pods scheduling. See `node_selectors` below.
  final pulumi.Input<List<ClusterNodeGroupAckConfigNodeSelector>>? nodeSelectors;
  /// The job pod affinity.
  final pulumi.Input<String>? podAffinity;
  /// The job pod anti-affinity.
  final pulumi.Input<String>? podAntiAffinity;
  /// The job pod pre start command.
  final pulumi.Input<List<String>>? preStartCommands;
  /// The ack cluster persistent volume claim. See `pvcs` below.
  final pulumi.Input<List<ClusterNodeGroupAckConfigPvc>>? pvcs;
  /// The job pod resource of request cpu.
  final pulumi.Input<double> requestCpu;
  /// The job pod resource of request memory.
  final pulumi.Input<double> requestMemory;
  /// The ack cluster tolerations. See `tolerations` below.
  final pulumi.Input<List<ClusterNodeGroupAckConfigToleration>>? tolerations;
  /// The ack cluster volume mounts. See `volume_mounts` below.
  final pulumi.Input<List<ClusterNodeGroupAckConfigVolumeMount>>? volumeMounts;
  /// The ack cluster volumes. See `volumes` below.
  final pulumi.Input<List<ClusterNodeGroupAckConfigVolume>>? volumes;

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
      'customAnnotations': ?pulumi.Input.mapOptionalInputValue<List<ClusterNodeGroupAckConfigCustomAnnotation>, List<Map<String, dynamic>>>(customAnnotations, (value) => pulumi.Input.encodeList<ClusterNodeGroupAckConfigCustomAnnotation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customLabels': ?pulumi.Input.mapOptionalInputValue<List<ClusterNodeGroupAckConfigCustomLabel>, List<Map<String, dynamic>>>(customLabels, (value) => pulumi.Input.encodeList<ClusterNodeGroupAckConfigCustomLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'limitCpu': limitCpu,
      'limitMemory': limitMemory,
      'namespace': namespace,
      'nodeAffinity': ?nodeAffinity,
      'nodeSelectors': ?pulumi.Input.mapOptionalInputValue<List<ClusterNodeGroupAckConfigNodeSelector>, List<Map<String, dynamic>>>(nodeSelectors, (value) => pulumi.Input.encodeList<ClusterNodeGroupAckConfigNodeSelector, Map<String, dynamic>>(value, (value) => value.toMap())),
      'podAffinity': ?podAffinity,
      'podAntiAffinity': ?podAntiAffinity,
      'preStartCommands': ?preStartCommands,
      'pvcs': ?pulumi.Input.mapOptionalInputValue<List<ClusterNodeGroupAckConfigPvc>, List<Map<String, dynamic>>>(pvcs, (value) => pulumi.Input.encodeList<ClusterNodeGroupAckConfigPvc, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestCpu': requestCpu,
      'requestMemory': requestMemory,
      'tolerations': ?pulumi.Input.mapOptionalInputValue<List<ClusterNodeGroupAckConfigToleration>, List<Map<String, dynamic>>>(tolerations, (value) => pulumi.Input.encodeList<ClusterNodeGroupAckConfigToleration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'volumeMounts': ?pulumi.Input.mapOptionalInputValue<List<ClusterNodeGroupAckConfigVolumeMount>, List<Map<String, dynamic>>>(volumeMounts, (value) => pulumi.Input.encodeList<ClusterNodeGroupAckConfigVolumeMount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'volumes': ?pulumi.Input.mapOptionalInputValue<List<ClusterNodeGroupAckConfigVolume>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<ClusterNodeGroupAckConfigVolume, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ClusterNodeGroupAckConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodeGroupAckConfig(
      ackInstanceId: (map['ackInstanceId'] as String).input(),
      customAnnotations: map['customAnnotations'] == null ? null : (pulumi.Input.decodeList<ClusterNodeGroupAckConfigCustomAnnotation>(map['customAnnotations']!, (value) => ClusterNodeGroupAckConfigCustomAnnotation.fromMap((value as Map).cast<String, dynamic>()))).input(),
      customLabels: map['customLabels'] == null ? null : (pulumi.Input.decodeList<ClusterNodeGroupAckConfigCustomLabel>(map['customLabels']!, (value) => ClusterNodeGroupAckConfigCustomLabel.fromMap((value as Map).cast<String, dynamic>()))).input(),
      limitCpu: (map['limitCpu'] as double).input(),
      limitMemory: (map['limitMemory'] as double).input(),
      namespace: (map['namespace'] as String).input(),
      nodeAffinity: map['nodeAffinity'] == null ? null : (map['nodeAffinity']! as String).input(),
      nodeSelectors: map['nodeSelectors'] == null ? null : (pulumi.Input.decodeList<ClusterNodeGroupAckConfigNodeSelector>(map['nodeSelectors']!, (value) => ClusterNodeGroupAckConfigNodeSelector.fromMap((value as Map).cast<String, dynamic>()))).input(),
      podAffinity: map['podAffinity'] == null ? null : (map['podAffinity']! as String).input(),
      podAntiAffinity: map['podAntiAffinity'] == null ? null : (map['podAntiAffinity']! as String).input(),
      preStartCommands: map['preStartCommands'] == null ? null : ((map['preStartCommands']! as List).cast<String>()).input(),
      pvcs: map['pvcs'] == null ? null : (pulumi.Input.decodeList<ClusterNodeGroupAckConfigPvc>(map['pvcs']!, (value) => ClusterNodeGroupAckConfigPvc.fromMap((value as Map).cast<String, dynamic>()))).input(),
      requestCpu: (map['requestCpu'] as double).input(),
      requestMemory: (map['requestMemory'] as double).input(),
      tolerations: map['tolerations'] == null ? null : (pulumi.Input.decodeList<ClusterNodeGroupAckConfigToleration>(map['tolerations']!, (value) => ClusterNodeGroupAckConfigToleration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      volumeMounts: map['volumeMounts'] == null ? null : (pulumi.Input.decodeList<ClusterNodeGroupAckConfigVolumeMount>(map['volumeMounts']!, (value) => ClusterNodeGroupAckConfigVolumeMount.fromMap((value as Map).cast<String, dynamic>()))).input(),
      volumes: map['volumes'] == null ? null : (pulumi.Input.decodeList<ClusterNodeGroupAckConfigVolume>(map['volumes']!, (value) => ClusterNodeGroupAckConfigVolume.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

