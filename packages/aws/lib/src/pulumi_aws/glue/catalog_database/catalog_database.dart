import 'package:pulumi/pulumi.dart' as pulumi;
import '../catalog_database_create_table_default_permission/catalog_database_create_table_default_permission.dart';
import '../catalog_database_federated_database/catalog_database_federated_database.dart';
import '../catalog_database_target_database/catalog_database_target_database.dart';
import 'catalog_database_args.dart';

/// Provides a Glue Catalog Database Resource. You can refer to the [Glue Developer Guide](http://docs.aws.amazon.com/glue/latest/dg/populate-data-catalog.html) for a full explanation of the Glue Data Catalog functionality
///
/// ## Example Usage
///
///
///
/// ### Create Table Default Permissions
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Glue Catalog Databases using the `catalog_id:name`. If you have not set a Catalog ID specify the AWS Account ID that the database is in. For example:
///
/// ```sh
/// $ pulumi import aws:glue/catalogDatabase:CatalogDatabase database 123456789012:my_database
/// ```
class CatalogDatabase extends pulumi.CustomResource {
  /// ARN of the Glue Catalog Database.
  late final pulumi.Output<String> arn;

  /// ID of the Glue Catalog to create the database in. If omitted, this defaults to the AWS Account ID.
  late final pulumi.Output<String> catalogId;

  /// Creates a set of default permissions on the table for principals. See `create_table_default_permission` below.
  late final pulumi.Output<List<CatalogDatabaseCreateTableDefaultPermission>>
      createTableDefaultPermissions;

  /// Description of the database.
  late final pulumi.Output<String?> description;

  /// Configuration block that references an entity outside the AWS Glue Data Catalog. See `federated_database` below.
  late final pulumi.Output<CatalogDatabaseFederatedDatabase?> federatedDatabase;

  /// Location of the database (for example, an HDFS path).
  late final pulumi.Output<String> locationUri;

  /// Name of the database. The acceptable characters are lowercase letters, numbers, and the underscore character.
  late final pulumi.Output<String> name;

  /// List of key-value pairs that define parameters and properties of the database.
  late final pulumi.Output<Map<String, String>?> parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Configuration block for a target database for resource linking. See `target_database` below.
  late final pulumi.Output<CatalogDatabaseTargetDatabase?> targetDatabase;

  CatalogDatabase(
    String name, {
    CatalogDatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:glue/catalogDatabase:CatalogDatabase',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.catalogId = registerOutput<String>('catalogId');
    this.createTableDefaultPermissions =
        registerOutput<List<CatalogDatabaseCreateTableDefaultPermission>>(
            'createTableDefaultPermissions');
    this.description = registerOutput<String?>('description');
    this.federatedDatabase =
        registerOutput<CatalogDatabaseFederatedDatabase?>('federatedDatabase');
    this.locationUri = registerOutput<String>('locationUri');
    this.name = registerOutput<String>('name');
    this.parameters = registerOutput<Map<String, String>?>('parameters');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.targetDatabase =
        registerOutput<CatalogDatabaseTargetDatabase?>('targetDatabase');
  }
}
