// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_firestore_admin_v1beta1_index_field_response.dart';

/// Result data returned by getIndex.
class GetIndexFirestoreV1beta1Result {
  /// The collection ID to which this index applies. Required.
  final String collectionId;

  /// The fields to index.
  final List<GoogleFirestoreAdminV1beta1IndexFieldResponse> fields;

  /// The resource name of the index. Output only.
  final String name;

  /// The state of the index. Output only.
  final String state;

  /// Creates a new [GetIndexFirestoreV1beta1Result].
  /// [collectionId] The collection ID to which this index applies. Required.
  /// [fields] The fields to index.
  /// [name] The resource name of the index. Output only.
  /// [state] The state of the index. Output only.
  GetIndexFirestoreV1beta1Result({
    required this.collectionId,
    required this.fields,
    required this.name,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionId': collectionId,
      'fields':
          pulumi.Input.encodeList<
            GoogleFirestoreAdminV1beta1IndexFieldResponse,
            Map<String, dynamic>
          >(fields, (value) => value.toMap()),
      'name': name,
      'state': state,
    };
  }

  factory GetIndexFirestoreV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetIndexFirestoreV1beta1Result(
      collectionId: map['collectionId'] as String,
      fields:
          pulumi
              .Input.decodeList<GoogleFirestoreAdminV1beta1IndexFieldResponse>(
            map['fields'],
            (value) => GoogleFirestoreAdminV1beta1IndexFieldResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      name: map['name'] as String,
      state: map['state'] as String,
    );
  }
}
