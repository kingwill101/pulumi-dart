// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_firestore_admin_v1beta1_index_field.dart';
import 'index_state.dart';

/// {@template pulumi_firestore_v1beta1_index_firestore_v1beta1_args_doc}
/// The set of arguments for Index.
/// {@endtemplate}
/// {@macro pulumi_firestore_v1beta1_index_firestore_v1beta1_args_doc}
class IndexFirestoreV1beta1Args {
  /// The collection ID to which this index applies. Required.
  final pulumi.Input<String>? collectionId;
  final pulumi.Input<String> databaseId;

  /// The fields to index.
  final pulumi.Input<List<GoogleFirestoreAdminV1beta1IndexField>>? fields;

  /// The resource name of the index. Output only.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// The state of the index. Output only.
  final pulumi.Input<IndexState>? state;

  /// Creates a new [IndexFirestoreV1beta1Args].
  /// [collectionId] The collection ID to which this index applies. Required.
  /// [databaseId] Required.
  /// [fields] The fields to index.
  /// [name] The resource name of the index. Output only.
  /// [project] Optional.
  /// [state] The state of the index. Output only.
  IndexFirestoreV1beta1Args({
    String? collectionId,
    required String databaseId,
    List<GoogleFirestoreAdminV1beta1IndexField>? fields,
    String? name,
    String? project,
    IndexState? state,
  }) : collectionId = pulumi.Input.asOptionalInput<String>(collectionId),
       databaseId = pulumi.Input.asInput<String>(databaseId),
       fields =
           pulumi.Input.asOptionalInput<
             List<GoogleFirestoreAdminV1beta1IndexField>
           >(fields),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project),
       state = pulumi.Input.asOptionalInput<IndexState>(state);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionId': ?collectionId,
      'databaseId': databaseId,
      'fields':
          ?pulumi.Input.mapOptionalInputValue<
            List<GoogleFirestoreAdminV1beta1IndexField>,
            List<Map<String, dynamic>>
          >(
            fields,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleFirestoreAdminV1beta1IndexField,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': ?name,
      'project': ?project,
      'state': ?pulumi.Input.mapOptionalInputValue<IndexState, String>(
        state,
        (value) => value.value,
      ),
    };
  }

  factory IndexFirestoreV1beta1Args.fromMap(Map<String, dynamic> map) {
    return IndexFirestoreV1beta1Args(
      collectionId: map['collectionId'] == null
          ? null
          : map['collectionId'] as String,
      databaseId: map['databaseId'] as String,
      fields: map['fields'] == null
          ? null
          : pulumi.Input.decodeList<GoogleFirestoreAdminV1beta1IndexField>(
              map['fields'],
              (value) => GoogleFirestoreAdminV1beta1IndexField.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      state: map['state'] == null
          ? null
          : IndexState.fromValue(map['state'] as String),
    );
  }
}
