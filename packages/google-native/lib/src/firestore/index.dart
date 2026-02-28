import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_firestore_admin_v1_index_field_response.dart';
import 'index_args.dart';

/// Creates a composite index. This returns a google.longrunning.Operation which may be used to track the status of the creation. The metadata for the operation will be the type IndexOperationMetadata.
/// Auto-naming is currently not supported for this resource.
class Index extends pulumi.CustomResource {
  /// The API scope supported by this index.
  late final pulumi.Output<String> apiScope;
  late final pulumi.Output<String> collectionGroupId;
  late final pulumi.Output<String> databaseId;
  /// The fields supported by this index. For composite indexes, this requires a minimum of 2 and a maximum of 100 fields. The last field entry is always for the field path `__name__`. If, on creation, `__name__` was not specified as the last field, it will be added automatically with the same direction as that of the last field defined. If the final field in a composite index is not directional, the `__name__` will be ordered ASCENDING (unless explicitly specified). For single field indexes, this will always be exactly one entry with a field path equal to the field path of the associated field.
  late final pulumi.Output<List<GoogleFirestoreAdminV1IndexFieldResponse>> fields;
  /// A server defined name for this index. The form of this name for composite indexes will be: `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/indexes/{composite_index_id}` For single field indexes, this field will be empty.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// Indexes with a collection query scope specified allow queries against a collection that is the child of a specific document, specified at query time, and that has the same collection id. Indexes with a collection group query scope specified allow queries against all collections descended from a specific document, specified at query time, and that have the same collection id as this index.
  late final pulumi.Output<String> queryScope;
  /// The serving state of the index.
  late final pulumi.Output<String> state;

  /// Creates a new [Index].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Index]. {@macro pulumi_firestore_v1_index_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Index(
    String name, {
    IndexArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:firestore/v1:Index',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiScope = registerOutput<String>('apiScope');
    this.collectionGroupId = registerOutput<String>('collectionGroupId');
    this.databaseId = registerOutput<String>('databaseId');
    this.fields = registerOutput<List<GoogleFirestoreAdminV1IndexFieldResponse>>('fields');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.queryScope = registerOutput<String>('queryScope');
    this.state = registerOutput<String>('state');
  }
}
