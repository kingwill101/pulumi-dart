// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ResourceRecord resources.
class ResourceRecordState {
  /// The record's id, should be unique.
  final pulumi.Input<String>? recordId;
  /// The name defined in log_resource, log service have some internal resource, like sls.common.user, sls.common.user_group. More detail see [Resource Data Structure](https://www.alibabacloud.com/help/en/sls/developer-reference/data-structure-of-alert-resource-data).
  final pulumi.Input<String>? resourceName;
  /// The record's tag, can be used for search.
  final pulumi.Input<String>? tag;
  /// The json value of record. More detail see [Resource Data Structure](https://www.alibabacloud.com/help/en/sls/developer-reference/data-structure-of-alert-resource-data).
  final pulumi.Input<String>? value;

  /// Creates a new [ResourceRecordState].
  /// [recordId] The record's id, should be unique.
  /// [resourceName] The name defined in log_resource, log service have some internal resource, like sls.common.user, sls.common.user_group. More detail see [Resource Data Structure](https://www.alibabacloud.com/help/en/sls/developer-reference/data-structure-of-alert-resource-data).
  /// [tag] The record's tag, can be used for search.
  /// [value] The json value of record. More detail see [Resource Data Structure](https://www.alibabacloud.com/help/en/sls/developer-reference/data-structure-of-alert-resource-data).
  ResourceRecordState({
    pulumi.Output<String>? recordId,
    pulumi.Output<String>? resourceName,
    pulumi.Output<String>? tag,
    pulumi.Output<String>? value,
  }) :
      recordId = pulumi.Input.asOptionalInput<String>(recordId),
      resourceName = pulumi.Input.asOptionalInput<String>(resourceName),
      tag = pulumi.Input.asOptionalInput<String>(tag),
      value = pulumi.Input.asOptionalInput<String>(value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recordId': ?recordId,
      'resourceName': ?resourceName,
      'tag': ?tag,
      'value': ?value,
    };
  }

  factory ResourceRecordState.fromMap(Map<String, dynamic> map) {
    return ResourceRecordState(
      recordId: map['recordId'] == null ? null : pulumi.Output.create<String>(map['recordId'] as String),
      resourceName: map['resourceName'] == null ? null : pulumi.Output.create<String>(map['resourceName'] as String),
      tag: map['tag'] == null ? null : pulumi.Output.create<String>(map['tag'] as String),
      value: map['value'] == null ? null : pulumi.Output.create<String>(map['value'] as String),
    );
  }
}

