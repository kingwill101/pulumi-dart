// ignore_for_file: unused_element, unnecessary_cast

class FlowSourceFlowConfigSourceConnectorPropertiesSapoDataPaginationConfig {
  /// he maximum number of records that Amazon AppFlow receives in each page of the response from your SAP application.
  final int maxPageSize;

  FlowSourceFlowConfigSourceConnectorPropertiesSapoDataPaginationConfig({
    required this.maxPageSize,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxPageSize'] = maxPageSize;
    return map;
  }

  factory FlowSourceFlowConfigSourceConnectorPropertiesSapoDataPaginationConfig.fromMap(
      Map<String, dynamic> map) {
    return FlowSourceFlowConfigSourceConnectorPropertiesSapoDataPaginationConfig(
      maxPageSize: map['maxPageSize'] as int,
    );
  }
}
