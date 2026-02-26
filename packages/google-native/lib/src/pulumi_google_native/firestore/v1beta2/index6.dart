import 'package:pulumi/pulumi.dart';
import 'google_firestore_admin_v1beta2_index_field_response.dart';
import 'index_args6.dart';

/// Creates a composite index. This returns a google.longrunning.Operation which may be used to track the status of the creation. The metadata for the operation will be the type IndexOperationMetadata.
/// Auto-naming is currently not supported for this resource.
class Index6 extends CustomResource {
  late final Output<String> collectionGroupId;
  late final Output<String> databaseId;

  /// The fields supported by this index. For composite indexes, this is always 2 or more fields. The last field entry is always for the field path `__name__`. If, on creation, `__name__` was not specified as the last field, it will be added automatically with the same direction as that of the last field defined. If the final field in a composite index is not directional, the `__name__` will be ordered ASCENDING (unless explicitly specified). For single field indexes, this will always be exactly one entry with a field path equal to the field path of the associated field.
  late final Output<List<GoogleFirestoreAdminV1beta2IndexFieldResponse>> fields;

  /// A server defined name for this index. The form of this name for composite indexes will be: `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/indexes/{composite_index_id}` For single field indexes, this field will be empty.
  late final Output<String> name;
  late final Output<String> project;

  /// Indexes with a collection query scope specified allow queries against a collection that is the child of a specific document, specified at query time, and that has the same collection id. Indexes with a collection group query scope specified allow queries against all collections descended from a specific document, specified at query time, and that have the same collection id as this index.
  late final Output<String> queryScope;

  /// The serving state of the index.
  late final Output<String> state;

  Index6(
    String name, {
    IndexArgs6? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:firestore/v1beta2:Index',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.collectionGroupId = Output.createUnknown<String>();
    this.databaseId = Output.createUnknown<String>();
    this.fields = Output.createUnknown<
        List<GoogleFirestoreAdminV1beta2IndexFieldResponse>>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.queryScope = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
  }
}
