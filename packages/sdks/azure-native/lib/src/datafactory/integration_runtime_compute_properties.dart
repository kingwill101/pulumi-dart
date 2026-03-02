// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'copy_compute_scale_properties.dart';
import 'integration_runtime_data_flow_properties.dart';
import 'integration_runtime_vnet_properties.dart';
import 'pipeline_external_compute_scale_properties.dart';

/// The compute resource properties for managed integration runtime.
class IntegrationRuntimeComputeProperties {
  /// CopyComputeScale properties for managed integration runtime.
  final pulumi.Input<CopyComputeScaleProperties>? copyComputeScaleProperties;
  /// Data flow properties for managed integration runtime.
  final pulumi.Input<IntegrationRuntimeDataFlowProperties>? dataFlowProperties;
  /// The location for managed integration runtime. The supported regions could be found on https://docs.microsoft.com/en-us/azure/data-factory/data-factory-data-movement-activities
  final pulumi.Input<String>? location;
  /// Maximum parallel executions count per node for managed integration runtime.
  final pulumi.Input<int>? maxParallelExecutionsPerNode;
  /// The node size requirement to managed integration runtime.
  final pulumi.Input<String>? nodeSize;
  /// The required number of nodes for managed integration runtime.
  final pulumi.Input<int>? numberOfNodes;
  /// PipelineExternalComputeScale properties for managed integration runtime.
  final pulumi.Input<PipelineExternalComputeScaleProperties>? pipelineExternalComputeScaleProperties;
  /// VNet properties for managed integration runtime.
  final pulumi.Input<IntegrationRuntimeVNetProperties>? vNetProperties;

  /// Creates a new [IntegrationRuntimeComputeProperties].
  /// [copyComputeScaleProperties] CopyComputeScale properties for managed integration runtime.
  /// [dataFlowProperties] Data flow properties for managed integration runtime.
  /// [location] The location for managed integration runtime. The supported regions could be found on https://docs.microsoft.com/en-us/azure/data-factory/data-factory-data-movement-activities
  /// [maxParallelExecutionsPerNode] Maximum parallel executions count per node for managed integration runtime.
  /// [nodeSize] The node size requirement to managed integration runtime.
  /// [numberOfNodes] The required number of nodes for managed integration runtime.
  /// [pipelineExternalComputeScaleProperties] PipelineExternalComputeScale properties for managed integration runtime.
  /// [vNetProperties] VNet properties for managed integration runtime.
  IntegrationRuntimeComputeProperties({
    this.copyComputeScaleProperties,
    this.dataFlowProperties,
    this.location,
    this.maxParallelExecutionsPerNode,
    this.nodeSize,
    this.numberOfNodes,
    this.pipelineExternalComputeScaleProperties,
    this.vNetProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copyComputeScaleProperties': ?pulumi.Input.mapOptionalInputValue<CopyComputeScaleProperties, Map<String, dynamic>>(copyComputeScaleProperties, (value) => value.toMap()),
      'dataFlowProperties': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeDataFlowProperties, Map<String, dynamic>>(dataFlowProperties, (value) => value.toMap()),
      'location': ?location,
      'maxParallelExecutionsPerNode': ?maxParallelExecutionsPerNode,
      'nodeSize': ?nodeSize,
      'numberOfNodes': ?numberOfNodes,
      'pipelineExternalComputeScaleProperties': ?pulumi.Input.mapOptionalInputValue<PipelineExternalComputeScaleProperties, Map<String, dynamic>>(pipelineExternalComputeScaleProperties, (value) => value.toMap()),
      'vNetProperties': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeVNetProperties, Map<String, dynamic>>(vNetProperties, (value) => value.toMap()),
    };
  }

  factory IntegrationRuntimeComputeProperties.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeComputeProperties(
      copyComputeScaleProperties: map['copyComputeScaleProperties'] == null ? null : (CopyComputeScaleProperties.fromMap((map['copyComputeScaleProperties']! as Map).cast<String, dynamic>())).input(),
      dataFlowProperties: map['dataFlowProperties'] == null ? null : (IntegrationRuntimeDataFlowProperties.fromMap((map['dataFlowProperties']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      maxParallelExecutionsPerNode: map['maxParallelExecutionsPerNode'] == null ? null : (map['maxParallelExecutionsPerNode']! as int).input(),
      nodeSize: map['nodeSize'] == null ? null : (map['nodeSize']! as String).input(),
      numberOfNodes: map['numberOfNodes'] == null ? null : (map['numberOfNodes']! as int).input(),
      pipelineExternalComputeScaleProperties: map['pipelineExternalComputeScaleProperties'] == null ? null : (PipelineExternalComputeScaleProperties.fromMap((map['pipelineExternalComputeScaleProperties']! as Map).cast<String, dynamic>())).input(),
      vNetProperties: map['vNetProperties'] == null ? null : (IntegrationRuntimeVNetProperties.fromMap((map['vNetProperties']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

