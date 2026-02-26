// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../stream_source_config_salesforce_source_config_exclude_objects_object_field/stream_source_config_salesforce_source_config_exclude_objects_object_field.dart';

class StreamSourceConfigSalesforceSourceConfigExcludeObjectsObject {
  /// Fields in the Salesforce object. When unspecified as part of include/exclude objects, includes/excludes everything/nothing.
  /// Structure is documented below.
  final List<StreamSourceConfigSalesforceSourceConfigExcludeObjectsObjectField>?
      fields;

  /// Name of object in Salesforce Org.
  final String? objectName;

  StreamSourceConfigSalesforceSourceConfigExcludeObjectsObject({
    this.fields,
    this.objectName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fieldsValue = fields;
    if (fieldsValue != null) {
      map['fields'] = Input.encodeList<
          StreamSourceConfigSalesforceSourceConfigExcludeObjectsObjectField,
          Map<String, dynamic>>(fieldsValue, (value) => value.toMap());
    }
    final objectNameValue = objectName;
    if (objectNameValue != null) {
      map['objectName'] = objectNameValue;
    }
    return map;
  }

  factory StreamSourceConfigSalesforceSourceConfigExcludeObjectsObject.fromMap(
      Map<String, dynamic> map) {
    return StreamSourceConfigSalesforceSourceConfigExcludeObjectsObject(
      fields: map['fields'] == null
          ? null
          : Input.decodeList<
                  StreamSourceConfigSalesforceSourceConfigExcludeObjectsObjectField>(
              map['fields'],
              (value) =>
                  StreamSourceConfigSalesforceSourceConfigExcludeObjectsObjectField
                      .fromMap((value as Map).cast<String, dynamic>())),
      objectName:
          map['objectName'] == null ? null : map['objectName'] as String,
    );
  }
}
