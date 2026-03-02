// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_pause_properties_response.dart';
import 'auto_scale_properties_response.dart';

class SynapseSparkResponseProperties {
  /// Auto pause properties.
  final pulumi.Input<AutoPausePropertiesResponse>? autoPauseProperties;
  /// Auto scale properties.
  final pulumi.Input<AutoScalePropertiesResponse>? autoScaleProperties;
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

  /// Creates a new [SynapseSparkResponseProperties].
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
  SynapseSparkResponseProperties({
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
      'autoPauseProperties': ?pulumi.Input.mapOptionalInputValue<AutoPausePropertiesResponse, Map<String, dynamic>>(autoPauseProperties, (value) => value.toMap()),
      'autoScaleProperties': ?pulumi.Input.mapOptionalInputValue<AutoScalePropertiesResponse, Map<String, dynamic>>(autoScaleProperties, (value) => value.toMap()),
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

  factory SynapseSparkResponseProperties.fromMap(Map<String, dynamic> map) {
    return SynapseSparkResponseProperties(
      autoPauseProperties: map['autoPauseProperties'] == null ? null : (AutoPausePropertiesResponse.fromMap((map['autoPauseProperties']! as Map).cast<String, dynamic>())).input(),
      autoScaleProperties: map['autoScaleProperties'] == null ? null : (AutoScalePropertiesResponse.fromMap((map['autoScaleProperties']! as Map).cast<String, dynamic>())).input(),
      nodeCount: map['nodeCount'] == null ? null : (map['nodeCount']! as int).input(),
      nodeSize: map['nodeSize'] == null ? null : (map['nodeSize']! as String).input(),
      nodeSizeFamily: map['nodeSizeFamily'] == null ? null : (map['nodeSizeFamily']! as String).input(),
      poolName: map['poolName'] == null ? null : (map['poolName']! as String).input(),
      resourceGroup: map['resourceGroup'] == null ? null : (map['resourceGroup']! as String).input(),
      sparkVersion: map['sparkVersion'] == null ? null : (map['sparkVersion']! as String).input(),
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId']! as String).input(),
      workspaceName: map['workspaceName'] == null ? null : (map['workspaceName']! as String).input(),
    );
  }
}

