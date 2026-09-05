// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlowSourceFlowConfigSourceConnectorPropertiesSapoDataPaginationConfig {
  /// Maximum number of processes that Amazon AppFlow runs at the same time when it retrieves your data from your SAP application.
  final pulumi.Input<int> maxPageSize;

  /// Creates a new [FlowSourceFlowConfigSourceConnectorPropertiesSapoDataPaginationConfig].
  /// [maxPageSize] Maximum number of processes that Amazon AppFlow runs at the same time when it retrieves your data from your SAP application.
  const FlowSourceFlowConfigSourceConnectorPropertiesSapoDataPaginationConfig({
    required this.maxPageSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxPageSize': maxPageSize,
    };
  }

  factory FlowSourceFlowConfigSourceConnectorPropertiesSapoDataPaginationConfig.fromMap(Map<String, dynamic> map) {
    return FlowSourceFlowConfigSourceConnectorPropertiesSapoDataPaginationConfig(
      maxPageSize: pulumi.Input.fromValue((map['maxPageSize'] as num).toInt()),
    );
  }
}
