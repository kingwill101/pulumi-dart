// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_backfill_all_salesforce_excluded_objects_object.dart';

class StreamBackfillAllSalesforceExcludedObjects {
  /// Salesforce objects in Salesforce Org.
  /// Structure is documented below.
  final List<StreamBackfillAllSalesforceExcludedObjectsObject> objects;

  /// Creates a new [StreamBackfillAllSalesforceExcludedObjects].
  /// [objects] Salesforce objects in Salesforce Org.
  StreamBackfillAllSalesforceExcludedObjects({required this.objects});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objects':
          pulumi.Input.encodeList<
            StreamBackfillAllSalesforceExcludedObjectsObject,
            Map<String, dynamic>
          >(objects, (value) => value.toMap()),
    };
  }

  factory StreamBackfillAllSalesforceExcludedObjects.fromMap(
    Map<String, dynamic> map,
  ) {
    return StreamBackfillAllSalesforceExcludedObjects(
      objects:
          pulumi.Input.decodeList<
            StreamBackfillAllSalesforceExcludedObjectsObject
          >(
            map['objects'],
            (value) => StreamBackfillAllSalesforceExcludedObjectsObject.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
    );
  }
}
