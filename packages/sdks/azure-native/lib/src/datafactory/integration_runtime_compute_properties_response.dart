// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'copy_compute_scale_properties_response.dart';
import 'integration_runtime_data_flow_properties_response.dart';
import 'integration_runtime_vnet_properties_response.dart';
import 'pipeline_external_compute_scale_properties_response.dart';

/// The compute resource properties for managed integration runtime.
class IntegrationRuntimeComputePropertiesResponse {
  /// CopyComputeScale properties for managed integration runtime.
  final pulumi.Input<CopyComputeScalePropertiesResponse>? copyComputeScaleProperties;
  /// Data flow properties for managed integration runtime.
  final pulumi.Input<IntegrationRuntimeDataFlowPropertiesResponse>? dataFlowProperties;
  /// The location for managed integration runtime. The supported regions could be found on https://docs.microsoft.com/en-us/azure/data-factory/data-factory-data-movement-activities
  final pulumi.Input<String>? location;
  /// Maximum parallel executions count per node for managed integration runtime.
  final pulumi.Input<int>? maxParallelExecutionsPerNode;
  /// The node size requirement to managed integration runtime.
  final pulumi.Input<String>? nodeSize;
  /// The required number of nodes for managed integration runtime.
  final pulumi.Input<int>? numberOfNodes;
  /// PipelineExternalComputeScale properties for managed integration runtime.
  final pulumi.Input<PipelineExternalComputeScalePropertiesResponse>? pipelineExternalComputeScaleProperties;
  /// VNet properties for managed integration runtime.
  final pulumi.Input<IntegrationRuntimeVNetPropertiesResponse>? vNetProperties;

  /// Creates a new [IntegrationRuntimeComputePropertiesResponse].
  /// [copyComputeScaleProperties] CopyComputeScale properties for managed integration runtime.
  /// [dataFlowProperties] Data flow properties for managed integration runtime.
  /// [location] The location for managed integration runtime. The supported regions could be found on https://docs.microsoft.com/en-us/azure/data-factory/data-factory-data-movement-activities
  /// [maxParallelExecutionsPerNode] Maximum parallel executions count per node for managed integration runtime.
  /// [nodeSize] The node size requirement to managed integration runtime.
  /// [numberOfNodes] The required number of nodes for managed integration runtime.
  /// [pipelineExternalComputeScaleProperties] PipelineExternalComputeScale properties for managed integration runtime.
  /// [vNetProperties] VNet properties for managed integration runtime.
  IntegrationRuntimeComputePropertiesResponse({
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
      'copyComputeScaleProperties': ?pulumi.Input.mapOptionalInputValue<CopyComputeScalePropertiesResponse, Map<String, dynamic>>(copyComputeScaleProperties, (value) => value.toMap()),
      'dataFlowProperties': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeDataFlowPropertiesResponse, Map<String, dynamic>>(dataFlowProperties, (value) => value.toMap()),
      'location': ?location,
      'maxParallelExecutionsPerNode': ?maxParallelExecutionsPerNode,
      'nodeSize': ?nodeSize,
      'numberOfNodes': ?numberOfNodes,
      'pipelineExternalComputeScaleProperties': ?pulumi.Input.mapOptionalInputValue<PipelineExternalComputeScalePropertiesResponse, Map<String, dynamic>>(pipelineExternalComputeScaleProperties, (value) => value.toMap()),
      'vNetProperties': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeVNetPropertiesResponse, Map<String, dynamic>>(vNetProperties, (value) => value.toMap()),
    };
  }

  factory IntegrationRuntimeComputePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeComputePropertiesResponse(
      copyComputeScaleProperties: map['copyComputeScaleProperties'] == null ? null : (CopyComputeScalePropertiesResponse.fromMap((map['copyComputeScaleProperties']! as Map).cast<String, dynamic>())).input(),
      dataFlowProperties: map['dataFlowProperties'] == null ? null : (IntegrationRuntimeDataFlowPropertiesResponse.fromMap((map['dataFlowProperties']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      maxParallelExecutionsPerNode: map['maxParallelExecutionsPerNode'] == null ? null : (map['maxParallelExecutionsPerNode']! as int).input(),
      nodeSize: map['nodeSize'] == null ? null : (map['nodeSize']! as String).input(),
      numberOfNodes: map['numberOfNodes'] == null ? null : (map['numberOfNodes']! as int).input(),
      pipelineExternalComputeScaleProperties: map['pipelineExternalComputeScaleProperties'] == null ? null : (PipelineExternalComputeScalePropertiesResponse.fromMap((map['pipelineExternalComputeScaleProperties']! as Map).cast<String, dynamic>())).input(),
      vNetProperties: map['vNetProperties'] == null ? null : (IntegrationRuntimeVNetPropertiesResponse.fromMap((map['vNetProperties']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

