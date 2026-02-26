// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../stream_source_config_salesforce_source_config_include_objects_object_field/stream_source_config_salesforce_source_config_include_objects_object_field.dart';

class StreamSourceConfigSalesforceSourceConfigIncludeObjectsObject {
  /// Fields in the Salesforce object. When unspecified as part of include/exclude objects, includes/excludes everything/nothing.
  /// Structure is documented below.
  final List<StreamSourceConfigSalesforceSourceConfigIncludeObjectsObjectField>?
      fields;

  /// Name of object in Salesforce Org.
  final String? objectName;

  StreamSourceConfigSalesforceSourceConfigIncludeObjectsObject({
    this.fields,
    this.objectName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fieldsValue = fields;
    if (fieldsValue != null) {
      map['fields'] = Input.encodeList<
          StreamSourceConfigSalesforceSourceConfigIncludeObjectsObjectField,
          Map<String, dynamic>>(fieldsValue, (value) => value.toMap());
    }
    final objectNameValue = objectName;
    if (objectNameValue != null) {
      map['objectName'] = objectNameValue;
    }
    return map;
  }

  factory StreamSourceConfigSalesforceSourceConfigIncludeObjectsObject.fromMap(
      Map<String, dynamic> map) {
    return StreamSourceConfigSalesforceSourceConfigIncludeObjectsObject(
      fields: map['fields'] == null
          ? null
          : Input.decodeList<
                  StreamSourceConfigSalesforceSourceConfigIncludeObjectsObjectField>(
              map['fields'],
              (value) =>
                  StreamSourceConfigSalesforceSourceConfigIncludeObjectsObjectField
                      .fromMap((value as Map).cast<String, dynamic>())),
      objectName:
          map['objectName'] == null ? null : map['objectName'] as String,
    );
  }
}
