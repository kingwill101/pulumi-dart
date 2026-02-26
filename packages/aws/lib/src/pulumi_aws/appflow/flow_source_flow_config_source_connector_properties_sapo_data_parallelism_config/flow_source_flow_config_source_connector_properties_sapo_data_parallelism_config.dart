// ignore_for_file: unused_element, unnecessary_cast

class FlowSourceFlowConfigSourceConnectorPropertiesSapoDataParallelismConfig {
  /// he maximum number of records that Amazon AppFlow receives in each page of the response from your SAP application.
  final int maxPageSize;

  FlowSourceFlowConfigSourceConnectorPropertiesSapoDataParallelismConfig({
    required this.maxPageSize,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxPageSize'] = maxPageSize;
    return map;
  }

  factory FlowSourceFlowConfigSourceConnectorPropertiesSapoDataParallelismConfig.fromMap(
      Map<String, dynamic> map) {
    return FlowSourceFlowConfigSourceConnectorPropertiesSapoDataParallelismConfig(
      maxPageSize: map['maxPageSize'] as int,
    );
  }
}
