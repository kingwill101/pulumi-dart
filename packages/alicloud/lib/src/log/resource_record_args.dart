// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_log_resource_record_resource_record_args_doc}
/// The set of arguments for ResourceRecord.
/// {@endtemplate}
/// {@macro pulumi_log_resource_record_resource_record_args_doc}
class ResourceRecordArgs {
  /// The record's id, should be unique.
  final pulumi.Input<String> recordId;
  /// The name defined in log_resource, log service have some internal resource, like sls.common.user, sls.common.user_group. More detail see [Resource Data Structure](https://www.alibabacloud.com/help/en/sls/developer-reference/data-structure-of-alert-resource-data).
  final pulumi.Input<String> resourceName;
  /// The record's tag, can be used for search.
  final pulumi.Input<String> tag;
  /// The json value of record. More detail see [Resource Data Structure](https://www.alibabacloud.com/help/en/sls/developer-reference/data-structure-of-alert-resource-data).
  final pulumi.Input<String> value;

  /// Creates a new [ResourceRecordArgs].
  /// [recordId] The record's id, should be unique.
  /// [resourceName] The name defined in log_resource, log service have some internal resource, like sls.common.user, sls.common.user_group. More detail see [Resource Data Structure](https://www.alibabacloud.com/help/en/sls/developer-reference/data-structure-of-alert-resource-data).
  /// [tag] The record's tag, can be used for search.
  /// [value] The json value of record. More detail see [Resource Data Structure](https://www.alibabacloud.com/help/en/sls/developer-reference/data-structure-of-alert-resource-data).
  ResourceRecordArgs({
    required String recordId,
    required String resourceName,
    required String tag,
    required String value,
  }) :
      recordId = pulumi.Input.asInput<String>(recordId),
      resourceName = pulumi.Input.asInput<String>(resourceName),
      tag = pulumi.Input.asInput<String>(tag),
      value = pulumi.Input.asInput<String>(value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recordId': recordId,
      'resourceName': resourceName,
      'tag': tag,
      'value': value,
    };
  }

  factory ResourceRecordArgs.fromMap(Map<String, dynamic> map) {
    return ResourceRecordArgs(
      recordId: map['recordId'] as String,
      resourceName: map['resourceName'] as String,
      tag: map['tag'] as String,
      value: map['value'] as String,
    );
  }
}

