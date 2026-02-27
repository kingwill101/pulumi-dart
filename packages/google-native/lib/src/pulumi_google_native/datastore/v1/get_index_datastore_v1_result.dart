// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_datastore_admin_v1_indexed_property_response.dart';

/// Result data returned by getIndex.
class GetIndexDatastoreV1Result {
  /// The index's ancestor mode. Must not be ANCESTOR_MODE_UNSPECIFIED.
  final String ancestor;

  /// The resource ID of the index.
  final String indexId;

  /// The entity kind to which this index applies.
  final String kind;

  /// Project ID.
  final String project;

  /// An ordered sequence of property names and their index attributes. Requires: * A maximum of 100 properties.
  final List<GoogleDatastoreAdminV1IndexedPropertyResponse> properties;

  /// The state of the index.
  final String state;

  GetIndexDatastoreV1Result({
    required this.ancestor,
    required this.indexId,
    required this.kind,
    required this.project,
    required this.properties,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ancestor'] = ancestor;
    map['indexId'] = indexId;
    map['kind'] = kind;
    map['project'] = project;
    map['properties'] = pulumi.Input.encodeList<
        GoogleDatastoreAdminV1IndexedPropertyResponse,
        Map<String, dynamic>>(properties, (value) => value.toMap());
    map['state'] = state;
    return map;
  }

  factory GetIndexDatastoreV1Result.fromMap(Map<String, dynamic> map) {
    return GetIndexDatastoreV1Result(
      ancestor: map['ancestor'] as String,
      indexId: map['indexId'] as String,
      kind: map['kind'] as String,
      project: map['project'] as String,
      properties: pulumi.Input.decodeList<
              GoogleDatastoreAdminV1IndexedPropertyResponse>(
          map['properties'],
          (value) => GoogleDatastoreAdminV1IndexedPropertyResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      state: map['state'] as String,
    );
  }
}
