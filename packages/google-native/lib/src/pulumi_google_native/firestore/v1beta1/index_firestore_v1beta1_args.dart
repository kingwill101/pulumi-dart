// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_firestore_admin_v1beta1_index_field.dart';
import 'index_state.dart';

/// The set of arguments for Index.
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

  IndexFirestoreV1beta1Args({
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
      map['fields'] = pulumi.Input.mapOptionalInputValue<
              List<GoogleFirestoreAdminV1beta1IndexField>,
              List<Map<String, dynamic>>>(
          fieldsValue,
          (value) => pulumi.Input.encodeList<
              GoogleFirestoreAdminV1beta1IndexField,
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
      map['state'] = pulumi.Input.mapOptionalInputValue<IndexState, String>(
          stateValue, (value) => value.value);
    }
    return map;
  }

  factory IndexFirestoreV1beta1Args.fromMap(Map<String, dynamic> map) {
    return IndexFirestoreV1beta1Args(
      collectionId: pulumi.Input.asOptionalInput<String>(map['collectionId']),
      databaseId: pulumi.Input.asInput<String>(map['databaseId']),
      fields: pulumi.Input.asOptionalInput<
          List<GoogleFirestoreAdminV1beta1IndexField>>(map['fields']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      state: pulumi.Input.asOptionalInput<IndexState>(map['state']),
    );
  }
}
