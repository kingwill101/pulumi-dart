import 'package:pulumi/pulumi.dart';
import '../index_field/index_field.dart';
import 'index_args.dart';

/// Cloud Firestore indexes enable simple and complex queries against documents in a database.
/// Both Firestore Native and Datastore Mode indexes are supported.
/// This resource manages composite indexes and not single field indexes.
/// To manage single field indexes, use the `gcp.firestore.Field` resource instead.
///
///
/// To get more information about Index, see:
///
/// * [API documentation](https://cloud.google.com/firestore/docs/reference/rest/v1/projects.databases.collectionGroups.indexes)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/firestore/docs/query-data/indexing)
///
/// > **Warning:** This resource creates a Firestore Index on a project that already has
/// a Firestore database. If you haven't already created it, you may
/// create a `gcp.firestore.Database` resource and `location_id` set
/// to your chosen location. If you wish to use App Engine, you may
/// instead create a `gcp.appengine.Application` resource.
/// Your Firestore location will be the same as the App Engine location specified.
///
/// ## Example Usage
///
/// ### Firestore Index Basic
///
///
///
/// ### Firestore Index Datastore Mode
///
///
///
/// ### Firestore Index Vector
///
///
///
/// ### Firestore Index Name Descending
///
///
///
/// ### Firestore Index Mongodb Compatible Scope
///
///
///
/// ### Firestore Index Sparse Any
///
///
///
/// ### Firestore Index Unique
///
///
///
///
/// ## Import
///
/// Index can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Index can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firestore/index:Index default {{name}}
/// ```
class Index extends CustomResource {
  /// The API scope at which a query is run.
  /// Default value is `ANY_API`.
  /// Possible values are: `ANY_API`, `DATASTORE_MODE_API`, `MONGODB_COMPATIBLE_API`.
  late final Output<String?> apiScope;

  /// The collection being indexed.
  late final Output<String> collection;

  /// The Firestore database id. Defaults to `"(default)"`.
  late final Output<String?> database;

  /// The density configuration for this index.
  /// Possible values are: `SPARSE_ALL`, `SPARSE_ANY`, `DENSE`.
  late final Output<String> density;

  /// The fields supported by this index. The last non-stored field entry is
  /// always for the field path `__name__`. If, on creation, `__name__` was not
  /// specified as the last field, it will be added automatically with the same
  /// direction as that of the last field defined. If the final field in a
  /// composite index is not directional, the `__name__` will be ordered
  /// `"ASCENDING"` (unless explicitly specified otherwise).
  /// Structure is documented below.
  late final Output<List<IndexField>> fields;

  /// Optional. Whether the index is multikey. By default, the index is not multikey. For non-multikey indexes, none of the paths in the index definition reach or traverse an array, except via an explicit array index. For multikey indexes, at most one of the paths in the index definition reach or traverse an array, except via an explicit array index. Violations will result in errors. Note this field only applies to indexes with MONGODB_COMPATIBLE_API ApiScope.
  late final Output<bool?> multikey;

  /// A server defined name for this index. Format:
  /// `projects/{{project}}/databases/{{database}}/collectionGroups/{{collection}}/indexes/{{server_generated_id}}`
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The scope at which a query is run.
  /// Default value is `COLLECTION`.
  /// Possible values are: `COLLECTION`, `COLLECTION_GROUP`, `COLLECTION_RECURSIVE`.
  late final Output<String?> queryScope;

  /// Whether it is an unique index. Unique index ensures all values for the indexed field(s) are unique across documents.
  late final Output<bool> unique;

  Index(
    String name, {
    IndexArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:firestore/index:Index',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.apiScope = registerOutput<String?>('apiScope');
    this.collection = registerOutput<String>('collection');
    this.database = registerOutput<String?>('database');
    this.density = registerOutput<String>('density');
    this.fields = registerOutput<List<IndexField>>('fields');
    this.multikey = registerOutput<bool?>('multikey');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.queryScope = registerOutput<String?>('queryScope');
    this.unique = registerOutput<bool>('unique');
  }
}
