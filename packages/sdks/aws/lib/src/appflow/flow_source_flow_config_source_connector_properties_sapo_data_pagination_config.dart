// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlowSourceFlowConfigSourceConnectorPropertiesSapoDataPaginationConfig {
  /// he maximum number of records that Amazon AppFlow receives in each page of the response from your SAP application.
  final pulumi.Input<int> maxPageSize;

  /// Creates a new [FlowSourceFlowConfigSourceConnectorPropertiesSapoDataPaginationConfig].
  /// [maxPageSize] he maximum number of records that Amazon AppFlow receives in each page of the response from your SAP application.
  FlowSourceFlowConfigSourceConnectorPropertiesSapoDataPaginationConfig({
    required this.maxPageSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxPageSize': maxPageSize,
    };
  }

  factory FlowSourceFlowConfigSourceConnectorPropertiesSapoDataPaginationConfig.fromMap(Map<String, dynamic> map) {
    return FlowSourceFlowConfigSourceConnectorPropertiesSapoDataPaginationConfig(
      maxPageSize: pulumi.Input.fromValue(map['maxPageSize'] as int),
    );
  }
}

