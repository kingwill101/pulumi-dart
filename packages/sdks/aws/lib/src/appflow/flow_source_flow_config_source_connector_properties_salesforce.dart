// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlowSourceFlowConfigSourceConnectorPropertiesSalesforce {
  final pulumi.Input<String>? dataTransferApi;
  /// Flag that enables dynamic fetching of new (recently added) fields in the Salesforce objects while running a flow.
  final pulumi.Input<bool>? enableDynamicFieldUpdate;
  /// Whether Amazon AppFlow includes deleted files in the flow run.
  final pulumi.Input<bool>? includeDeletedRecords;
  final pulumi.Input<String> object;

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

  factory FlowSourceFlowConfigSourceConnectorPropertiesSalesforce.fromMap(Map<String, dynamic> map) {
    return FlowSourceFlowConfigSourceConnectorPropertiesSalesforce(
      dataTransferApi: map['dataTransferApi'] == null ? null : (map['dataTransferApi'] as String).input(),
      enableDynamicFieldUpdate: map['enableDynamicFieldUpdate'] == null ? null : (map['enableDynamicFieldUpdate'] as bool).input(),
      includeDeletedRecords: map['includeDeletedRecords'] == null ? null : (map['includeDeletedRecords'] as bool).input(),
      object: (map['object'] as String).input(),
    );
  }
}

