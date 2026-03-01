// ignore_for_file: unused_element, unnecessary_cast

import 'auto_pause_properties.dart';
import 'auto_scale_properties.dart';

class SynapseSparkProperties {
  /// Auto pause properties.
  final AutoPauseProperties? autoPauseProperties;
  /// Auto scale properties.
  final AutoScaleProperties? autoScaleProperties;
  /// The number of compute nodes currently assigned to the compute.
  final int? nodeCount;
  /// Node size.
  final String? nodeSize;
  /// Node size family.
  final String? nodeSizeFamily;
  /// Pool name.
  final String? poolName;
  /// Name of the resource group in which workspace is located.
  final String? resourceGroup;
  /// Spark version.
  final String? sparkVersion;
  /// Azure subscription identifier.
  final String? subscriptionId;
  /// Name of Azure Machine Learning workspace.
  final String? workspaceName;

  /// Creates a new [SynapseSparkProperties].
  /// [autoPauseProperties] Auto pause properties.
  /// [autoScaleProperties] Auto scale properties.
  /// [nodeCount] The number of compute nodes currently assigned to the compute.
  /// [nodeSize] Node size.
  /// [nodeSizeFamily] Node size family.
  /// [poolName] Pool name.
  /// [resourceGroup] Name of the resource group in which workspace is located.
  /// [sparkVersion] Spark version.
  /// [subscriptionId] Azure subscription identifier.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  SynapseSparkProperties({
    this.autoPauseProperties,
    this.autoScaleProperties,
    this.nodeCount,
    this.nodeSize,
    this.nodeSizeFamily,
    this.poolName,
    this.resourceGroup,
    this.sparkVersion,
    this.subscriptionId,
    this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPauseProperties': ?autoPauseProperties == null ? null : autoPauseProperties!.toMap(),
      'autoScaleProperties': ?autoScaleProperties == null ? null : autoScaleProperties!.toMap(),
      'nodeCount': ?nodeCount,
      'nodeSize': ?nodeSize,
      'nodeSizeFamily': ?nodeSizeFamily,
      'poolName': ?poolName,
      'resourceGroup': ?resourceGroup,
      'sparkVersion': ?sparkVersion,
      'subscriptionId': ?subscriptionId,
      'workspaceName': ?workspaceName,
    };
  }

  factory SynapseSparkProperties.fromMap(Map<String, dynamic> map) {
    return SynapseSparkProperties(
      autoPauseProperties: map['autoPauseProperties'] == null ? null : AutoPauseProperties.fromMap((map['autoPauseProperties'] as Map).cast<String, dynamic>()),
      autoScaleProperties: map['autoScaleProperties'] == null ? null : AutoScaleProperties.fromMap((map['autoScaleProperties'] as Map).cast<String, dynamic>()),
      nodeCount: map['nodeCount'] == null ? null : map['nodeCount'] as int,
      nodeSize: map['nodeSize'] == null ? null : map['nodeSize'] as String,
      nodeSizeFamily: map['nodeSizeFamily'] == null ? null : map['nodeSizeFamily'] as String,
      poolName: map['poolName'] == null ? null : map['poolName'] as String,
      resourceGroup: map['resourceGroup'] == null ? null : map['resourceGroup'] as String,
      sparkVersion: map['sparkVersion'] == null ? null : map['sparkVersion'] as String,
      subscriptionId: map['subscriptionId'] == null ? null : map['subscriptionId'] as String,
      workspaceName: map['workspaceName'] == null ? null : map['workspaceName'] as String,
    );
  }
}

