// ignore_for_file: unused_element, unnecessary_cast

class FlowSourceFlowConfigSourceConnectorPropertiesSalesforce {
  final String? dataTransferApi;

  /// Flag that enables dynamic fetching of new (recently added) fields in the Salesforce objects while running a flow.
  final bool? enableDynamicFieldUpdate;

  /// Whether Amazon AppFlow includes deleted files in the flow run.
  final bool? includeDeletedRecords;
  final String object;

  /// Creates a new [FlowSourceFlowConfigSourceConnectorPropertiesSalesforce].
  /// [dataTransferApi] Optional.
  /// [enableDynamicFieldUpdate] Flag that enables dynamic fetching of new (recently added) fields in the Salesforce objects while running a flow.
  /// [includeDeletedRecords] Whether Amazon AppFlow includes deleted files in the flow run.
  /// [object] Required.
  FlowSourceFlowConfigSourceConnectorPropertiesSalesforce({
    this.dataTransferApi,
    this.enableDynamicFieldUpdate,
    this.includeDeletedRecords,
    required this.object,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataTransferApi': ?dataTransferApi,
      'enableDynamicFieldUpdate': ?enableDynamicFieldUpdate,
      'includeDeletedRecords': ?includeDeletedRecords,
      'object': object,
    };
  }

  factory FlowSourceFlowConfigSourceConnectorPropertiesSalesforce.fromMap(
    Map<String, dynamic> map,
  ) {
    return FlowSourceFlowConfigSourceConnectorPropertiesSalesforce(
      dataTransferApi: map['dataTransferApi'] == null
          ? null
          : map['dataTransferApi'] as String,
      enableDynamicFieldUpdate: map['enableDynamicFieldUpdate'] == null
          ? null
          : map['enableDynamicFieldUpdate'] as bool,
      includeDeletedRecords: map['includeDeletedRecords'] == null
          ? null
          : map['includeDeletedRecords'] as bool,
      object: map['object'] as String,
    );
  }
}
