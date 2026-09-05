// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlowSourceFlowConfigSourceConnectorPropertiesSapoDataParallelismConfig {
  /// Maximum number of processes that Amazon AppFlow runs at the same time when it retrieves your data from your SAP application.
  final pulumi.Input<int> maxPageSize;

  /// Creates a new [FlowSourceFlowConfigSourceConnectorPropertiesSapoDataParallelismConfig].
  /// [maxPageSize] Maximum number of processes that Amazon AppFlow runs at the same time when it retrieves your data from your SAP application.
  const FlowSourceFlowConfigSourceConnectorPropertiesSapoDataParallelismConfig({
    required this.maxPageSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxPageSize': maxPageSize,
    };
  }

  factory FlowSourceFlowConfigSourceConnectorPropertiesSapoDataParallelismConfig.fromMap(Map<String, dynamic> map) {
    return FlowSourceFlowConfigSourceConnectorPropertiesSapoDataParallelismConfig(
      maxPageSize: pulumi.Input.fromValue((map['maxPageSize'] as num).toInt()),
    );
  }
}
