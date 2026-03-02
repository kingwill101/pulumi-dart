// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_source_flow_config_source_connector_properties_sapo_data_pagination_config.dart';
import 'flow_source_flow_config_source_connector_properties_sapo_data_parallelism_config.dart';

class FlowSourceFlowConfigSourceConnectorPropertiesSapoData {
  final pulumi.Input<String> objectPath;
  /// Sets the page size for each concurrent process that transfers OData records from your SAP instance.
  final pulumi.Input<FlowSourceFlowConfigSourceConnectorPropertiesSapoDataPaginationConfig>? paginationConfig;
  /// Sets the number of concurrent processes that transfers OData records from your SAP instance.
  final pulumi.Input<FlowSourceFlowConfigSourceConnectorPropertiesSapoDataParallelismConfig>? parallelismConfig;

  /// Creates a new [FlowSourceFlowConfigSourceConnectorPropertiesSapoData].
  /// [objectPath] Required.
  /// [paginationConfig] Sets the page size for each concurrent process that transfers OData records from your SAP instance.
  /// [parallelismConfig] Sets the number of concurrent processes that transfers OData records from your SAP instance.
  FlowSourceFlowConfigSourceConnectorPropertiesSapoData({
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
      objectPath: (map['objectPath'] as String).input(),
      paginationConfig: map['paginationConfig'] == null ? null : ((FlowSourceFlowConfigSourceConnectorPropertiesSapoDataPaginationConfig.fromMap((map['paginationConfig']! as Map).cast<String, dynamic>())).input()).input(),
      parallelismConfig: map['parallelismConfig'] == null ? null : ((FlowSourceFlowConfigSourceConnectorPropertiesSapoDataParallelismConfig.fromMap((map['parallelismConfig']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

