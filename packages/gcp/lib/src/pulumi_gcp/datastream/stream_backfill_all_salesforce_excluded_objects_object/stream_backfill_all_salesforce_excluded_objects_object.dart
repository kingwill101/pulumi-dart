// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../stream_backfill_all_salesforce_excluded_objects_object_field/stream_backfill_all_salesforce_excluded_objects_object_field.dart';

class StreamBackfillAllSalesforceExcludedObjectsObject {
  /// Fields in the Salesforce object. When unspecified as part of include/exclude objects, includes/excludes everything/nothing.
  /// Structure is documented below.
  final List<StreamBackfillAllSalesforceExcludedObjectsObjectField>? fields;

  /// Name of object in Salesforce Org.
  final String? objectName;

  StreamBackfillAllSalesforceExcludedObjectsObject({
    this.fields,
    this.objectName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fieldsValue = fields;
    if (fieldsValue != null) {
      map['fields'] = pulumi.Input.encodeList<
          StreamBackfillAllSalesforceExcludedObjectsObjectField,
          Map<String, dynamic>>(fieldsValue, (value) => value.toMap());
    }
    final objectNameValue = objectName;
    if (objectNameValue != null) {
      map['objectName'] = objectNameValue;
    }
    return map;
  }

  factory StreamBackfillAllSalesforceExcludedObjectsObject.fromMap(
      Map<String, dynamic> map) {
    return StreamBackfillAllSalesforceExcludedObjectsObject(
      fields: map['fields'] == null
          ? null
          : pulumi.Input.decodeList<
                  StreamBackfillAllSalesforceExcludedObjectsObjectField>(
              map['fields'],
              (value) =>
                  StreamBackfillAllSalesforceExcludedObjectsObjectField.fromMap(
                      (value as Map).cast<String, dynamic>())),
      objectName:
          map['objectName'] == null ? null : map['objectName'] as String,
    );
  }
}
