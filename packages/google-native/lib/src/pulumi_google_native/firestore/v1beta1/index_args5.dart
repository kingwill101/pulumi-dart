// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_firestore_admin_v1beta1_index_field.dart';
import 'index_state.dart';

/// The set of arguments for Index.
class IndexArgs5 {
  /// The collection ID to which this index applies. Required.
  final Input<String>? collectionId;
  final Input<String> databaseId;

  /// The fields to index.
  final Input<List<GoogleFirestoreAdminV1beta1IndexField>>? fields;

  /// The resource name of the index. Output only.
  final Input<String>? name;
  final Input<String>? project;

  /// The state of the index. Output only.
  final Input<IndexState>? state;

  IndexArgs5({
    this.collectionId,
    required this.databaseId,
    this.fields,
    this.name,
    this.project,
    this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final collectionIdValue = collectionId;
    if (collectionIdValue != null) {
      map['collectionId'] = collectionIdValue;
    }
    map['databaseId'] = databaseId;
    final fieldsValue = fields;
    if (fieldsValue != null) {
      map['fields'] = Input.mapOptionalInputValue<
              List<GoogleFirestoreAdminV1beta1IndexField>,
              List<Map<String, dynamic>>>(
          fieldsValue,
          (value) => Input.encodeList<GoogleFirestoreAdminV1beta1IndexField,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = Input.mapOptionalInputValue<IndexState, String>(
          stateValue, (value) => value.value);
    }
    return map;
  }

  factory IndexArgs5.fromMap(Map<String, dynamic> map) {
    return IndexArgs5(
      collectionId: Input.asOptionalInput<String>(map['collectionId']),
      databaseId: Input.asInput<String>(map['databaseId']),
      fields:
          Input.asOptionalInput<List<GoogleFirestoreAdminV1beta1IndexField>>(
              map['fields']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      state: Input.asOptionalInput<IndexState>(map['state']),
    );
  }
}
