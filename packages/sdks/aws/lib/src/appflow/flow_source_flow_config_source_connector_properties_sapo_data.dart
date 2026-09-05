// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_source_flow_config_source_connector_properties_sapo_data_pagination_config.dart';
import 'flow_source_flow_config_source_connector_properties_sapo_data_parallelism_config.dart';

class FlowSourceFlowConfigSourceConnectorPropertiesSapoData {
  final pulumi.Input<String> objectPath;
  /// Page size for each concurrent process that transfers OData records from your SAP instance. See the `source_flow_config.source_connector_properties.sapo_data.pagination_config` Block for details.
  final pulumi.Input<FlowSourceFlowConfigSourceConnectorPropertiesSapoDataPaginationConfig?>? paginationConfig;
  /// Number of concurrent processes that transfer OData records from your SAP instance. See the `source_flow_config.source_connector_properties.sapo_data.parallelism_config` Block for details.
  final pulumi.Input<FlowSourceFlowConfigSourceConnectorPropertiesSapoDataParallelismConfig?>? parallelismConfig;

  /// Creates a new [FlowSourceFlowConfigSourceConnectorPropertiesSapoData].
  /// [objectPath] Required.
  /// [paginationConfig] Page size for each concurrent process that transfers OData records from your SAP instance. See the `source_flow_config.source_connector_properties.sapo_data.pagination_config` Block for details.
  /// [parallelismConfig] Number of concurrent processes that transfer OData records from your SAP instance. See the `source_flow_config.source_connector_properties.sapo_data.parallelism_config` Block for details.
  const FlowSourceFlowConfigSourceConnectorPropertiesSapoData({
    required this.objectPath,
    this.paginationConfig,
    this.parallelismConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectPath': objectPath,
      'paginationConfig': ?pulumi.Input.mapOptionalInputValue<FlowSourceFlowConfigSourceConnectorPropertiesSapoDataPaginationConfig, Map<String, dynamic>>(paginationConfig, (value) => value.toMap()),
      'parallelismConfig': ?pulumi.Input.mapOptionalInputValue<FlowSourceFlowConfigSourceConnectorPropertiesSapoDataParallelismConfig, Map<String, dynamic>>(parallelismConfig, (value) => value.toMap()),
    };
  }

  factory FlowSourceFlowConfigSourceConnectorPropertiesSapoData.fromMap(Map<String, dynamic> map) {
    return FlowSourceFlowConfigSourceConnectorPropertiesSapoData(
      objectPath: pulumi.Input.fromValue(map['objectPath'] as String),
      paginationConfig: (() { final guardedValue = map['paginationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowSourceFlowConfigSourceConnectorPropertiesSapoDataPaginationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      parallelismConfig: (() { final guardedValue = map['parallelismConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowSourceFlowConfigSourceConnectorPropertiesSapoDataParallelismConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
