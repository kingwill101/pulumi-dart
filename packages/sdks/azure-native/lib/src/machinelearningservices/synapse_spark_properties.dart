// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_pause_properties.dart';
import 'auto_scale_properties.dart';

class SynapseSparkProperties {
  /// Auto pause properties.
  final pulumi.Input<AutoPauseProperties>? autoPauseProperties;
  /// Auto scale properties.
  final pulumi.Input<AutoScaleProperties>? autoScaleProperties;
  /// The number of compute nodes currently assigned to the compute.
  final pulumi.Input<int>? nodeCount;
  /// Node size.
  final pulumi.Input<String>? nodeSize;
  /// Node size family.
  final pulumi.Input<String>? nodeSizeFamily;
  /// Pool name.
  final pulumi.Input<String>? poolName;
  /// Name of the resource group in which workspace is located.
  final pulumi.Input<String>? resourceGroup;
  /// Spark version.
  final pulumi.Input<String>? sparkVersion;
  /// Azure subscription identifier.
  final pulumi.Input<String>? subscriptionId;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String>? workspaceName;

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
  const SynapseSparkProperties({
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
      'autoPauseProperties': ?pulumi.Input.mapOptionalInputValue<AutoPauseProperties, Map<String, dynamic>>(autoPauseProperties, (value) => value.toMap()),
      'autoScaleProperties': ?pulumi.Input.mapOptionalInputValue<AutoScaleProperties, Map<String, dynamic>>(autoScaleProperties, (value) => value.toMap()),
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
      autoPauseProperties: (() { final guardedValue = map['autoPauseProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutoPauseProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      autoScaleProperties: (() { final guardedValue = map['autoScaleProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutoScaleProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nodeCount: (() { final guardedValue = map['nodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      nodeSize: (() { final guardedValue = map['nodeSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeSizeFamily: (() { final guardedValue = map['nodeSizeFamily']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      poolName: (() { final guardedValue = map['poolName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroup: (() { final guardedValue = map['resourceGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sparkVersion: (() { final guardedValue = map['sparkVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceName: (() { final guardedValue = map['workspaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
