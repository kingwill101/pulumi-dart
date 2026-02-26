// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../stream_backfill_all_salesforce_excluded_objects_object/stream_backfill_all_salesforce_excluded_objects_object.dart';

class StreamBackfillAllSalesforceExcludedObjects {
  /// Salesforce objects in Salesforce Org.
  /// Structure is documented below.
  final List<StreamBackfillAllSalesforceExcludedObjectsObject> objects;

  StreamBackfillAllSalesforceExcludedObjects({
    required this.objects,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['objects'] = Input.encodeList<
        StreamBackfillAllSalesforceExcludedObjectsObject,
        Map<String, dynamic>>(objects, (value) => value.toMap());
    return map;
  }

  factory StreamBackfillAllSalesforceExcludedObjects.fromMap(
      Map<String, dynamic> map) {
    return StreamBackfillAllSalesforceExcludedObjects(
      objects:
          Input.decodeList<StreamBackfillAllSalesforceExcludedObjectsObject>(
              map['objects'],
              (value) =>
                  StreamBackfillAllSalesforceExcludedObjectsObject.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
