import 'package:pulumi/pulumi.dart' as pulumi;
import '../field_index_config/field_index_config.dart';
import '../field_ttl_config/field_ttl_config.dart';
import 'field_args.dart';

/// Represents a single field in the database.
/// Fields are grouped by their "Collection Group", which represent all collections
/// in the database with the same id.
///
///
/// To get more information about Field, see:
///
/// * [API documentation](https://cloud.google.com/firestore/docs/reference/rest/v1/projects.databases.collectionGroups.fields)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/firestore/docs/query-data/indexing)
///
/// > **Warning:** This resource creates a Firestore Single Field override on a project that
/// already has a Firestore database. If you haven't already created it, you may
/// create a `gcp.firestore.Database` resource with `location_id` set to your
/// chosen location.
///
/// ## Example Usage
///
/// ### Firestore Field Basic
///
///
///
/// ### Firestore Field Timestamp
///
///
///
/// ### Firestore Field Match Override
///
///
///
/// ### Firestore Field Wildcard
///
///
///
///
/// ## Import
///
/// Field can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Field can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firestore/field:Field default {{name}}
/// ```
class Field extends pulumi.CustomResource {
  /// The id of the collection group to configure.
  late final pulumi.Output<String> collection;

  /// The Firestore database id. Defaults to `"(default)"`.
  late final pulumi.Output<String?> database;

  /// The id of the field to configure.
  late final pulumi.Output<String> field;

  /// The single field index configuration for this field.
  /// Creating an index configuration for this field will override any inherited configuration with the
  /// indexes specified. Configuring the index configuration with an empty block disables all indexes on
  /// the field.
  /// Structure is documented below.
  late final pulumi.Output<FieldIndexConfig?> indexConfig;

  /// The name of this field. Format:
  /// `projects/{{project}}/databases/{{database}}/collectionGroups/{{collection}}/fields/{{field}}`
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The TTL configuration for this Field. If set to an empty block (i.e. `ttl_config {}`), a TTL policy is configured based on the field. If unset, a TTL policy is not configured (or will be disabled upon updating the resource).
  /// Structure is documented below.
  late final pulumi.Output<FieldTtlConfig?> ttlConfig;

  Field(
    String name, {
    FieldArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firestore/field:Field',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.collection = registerOutput<String>('collection');
    this.database = registerOutput<String?>('database');
    this.field = registerOutput<String>('field');
    this.indexConfig = registerOutput<FieldIndexConfig?>('indexConfig');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.ttlConfig = registerOutput<FieldTtlConfig?>('ttlConfig');
  }
}
