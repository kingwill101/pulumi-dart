// ignore_for_file: unused_element, unnecessary_cast

import '../flow_source_flow_config_source_connector_properties_sapo_data_pagination_config/flow_source_flow_config_source_connector_properties_sapo_data_pagination_config.dart';
import '../flow_source_flow_config_source_connector_properties_sapo_data_parallelism_config/flow_source_flow_config_source_connector_properties_sapo_data_parallelism_config.dart';

class FlowSourceFlowConfigSourceConnectorPropertiesSapoData {
  final String objectPath;

  /// Sets the page size for each concurrent process that transfers OData records from your SAP instance.
  final FlowSourceFlowConfigSourceConnectorPropertiesSapoDataPaginationConfig?
      paginationConfig;

  /// Sets the number of concurrent processes that transfers OData records from your SAP instance.
  final FlowSourceFlowConfigSourceConnectorPropertiesSapoDataParallelismConfig?
      parallelismConfig;

  FlowSourceFlowConfigSourceConnectorPropertiesSapoData({
    required this.objectPath,
    this.paginationConfig,
    this.parallelismConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['objectPath'] = objectPath;
    final paginationConfigValue = paginationConfig;
    if (paginationConfigValue != null) {
      map['paginationConfig'] = paginationConfigValue.toMap();
    }
    final parallelismConfigValue = parallelismConfig;
    if (parallelismConfigValue != null) {
      map['parallelismConfig'] = parallelismConfigValue.toMap();
    }
    return map;
  }

  factory FlowSourceFlowConfigSourceConnectorPropertiesSapoData.fromMap(
      Map<String, dynamic> map) {
    return FlowSourceFlowConfigSourceConnectorPropertiesSapoData(
      objectPath: map['objectPath'] as String,
      paginationConfig: map['paginationConfig'] == null
          ? null
          : FlowSourceFlowConfigSourceConnectorPropertiesSapoDataPaginationConfig
              .fromMap(
                  (map['paginationConfig'] as Map).cast<String, dynamic>()),
      parallelismConfig: map['parallelismConfig'] == null
          ? null
          : FlowSourceFlowConfigSourceConnectorPropertiesSapoDataParallelismConfig
              .fromMap(
                  (map['parallelismConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
