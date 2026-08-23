// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlowSourceFlowConfigSourceConnectorPropertiesSalesforce {
  final pulumi.Input<String>? dataTransferApi;
  /// Whether to enable dynamic fetching of new (recently added) fields in the Salesforce objects while running a flow.
  final pulumi.Input<bool>? enableDynamicFieldUpdate;
  /// Whether to include deleted files in the flow run.
  final pulumi.Input<bool>? includeDeletedRecords;
  final pulumi.Input<String> object_;

  /// Creates a new [FlowSourceFlowConfigSourceConnectorPropertiesSalesforce].
  /// [dataTransferApi] Optional.
  /// [enableDynamicFieldUpdate] Whether to enable dynamic fetching of new (recently added) fields in the Salesforce objects while running a flow.
  /// [includeDeletedRecords] Whether to include deleted files in the flow run.
  /// [object_] Required.
  const FlowSourceFlowConfigSourceConnectorPropertiesSalesforce({
    this.dataTransferApi,
    this.enableDynamicFieldUpdate,
    this.includeDeletedRecords,
    required this.object_,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataTransferApi': ?dataTransferApi,
      'enableDynamicFieldUpdate': ?enableDynamicFieldUpdate,
      'includeDeletedRecords': ?includeDeletedRecords,
      'object': object_,
    };
  }

  factory FlowSourceFlowConfigSourceConnectorPropertiesSalesforce.fromMap(Map<String, dynamic> map) {
    return FlowSourceFlowConfigSourceConnectorPropertiesSalesforce(
      dataTransferApi: (() { final guardedValue = map['dataTransferApi']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableDynamicFieldUpdate: (() { final guardedValue = map['enableDynamicFieldUpdate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      includeDeletedRecords: (() { final guardedValue = map['includeDeletedRecords']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      object_: pulumi.Input.fromValue(map['object'] as String),
    );
  }
}
