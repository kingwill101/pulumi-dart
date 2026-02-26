// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_firestore_admin_v1beta1_index_field_response.dart';

/// Result data returned by getIndex.
class GetIndexResult5 {
  /// The collection ID to which this index applies. Required.
  final String collectionId;

  /// The fields to index.
  final List<GoogleFirestoreAdminV1beta1IndexFieldResponse> fields;

  /// The resource name of the index. Output only.
  final String name;

  /// The state of the index. Output only.
  final String state;

  GetIndexResult5({
    required this.collectionId,
    required this.fields,
    required this.name,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['collectionId'] = collectionId;
    map['fields'] = Input.encodeList<
        GoogleFirestoreAdminV1beta1IndexFieldResponse,
        Map<String, dynamic>>(fields, (value) => value.toMap());
    map['name'] = name;
    map['state'] = state;
    return map;
  }

  factory GetIndexResult5.fromMap(Map<String, dynamic> map) {
    return GetIndexResult5(
      collectionId: map['collectionId'] as String,
      fields: Input.decodeList<GoogleFirestoreAdminV1beta1IndexFieldResponse>(
          map['fields'],
          (value) => GoogleFirestoreAdminV1beta1IndexFieldResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      state: map['state'] as String,
    );
  }
}
