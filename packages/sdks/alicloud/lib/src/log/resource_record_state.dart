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
    this.recordId,
    this.resourceName,
    this.tag,
    this.value,
  });

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
      recordId: (() { final guardedValue = map['recordId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceName: (() { final guardedValue = map['resourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

