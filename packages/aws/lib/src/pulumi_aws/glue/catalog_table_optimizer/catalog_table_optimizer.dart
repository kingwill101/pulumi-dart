import 'package:pulumi/pulumi.dart';
import '../catalog_table_optimizer_configuration/catalog_table_optimizer_configuration.dart';
import 'catalog_table_optimizer_args.dart';

/// Resource for managing an AWS Glue Catalog Table Optimizer.
///
/// ## Example Usage
///
/// ### Compaction Optimizer
///
///
///
/// ### Snapshot Retention Optimizer
///
///
///
/// ### Orphan File Deletion Optimizer
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Glue Catalog Table Optimizer using the `catalog_id,database_name,table_name,type`. For example:
///
/// ```sh
/// $ pulumi import aws:glue/catalogTableOptimizer:CatalogTableOptimizer example 123456789012,example_database,example_table,compaction
/// ```
class CatalogTableOptimizer extends CustomResource {
  /// The Catalog ID of the table.
  late final Output<String> catalogId;

  /// A configuration block that defines the table optimizer settings. See Configuration for additional details.
  late final Output<CatalogTableOptimizerConfiguration> configuration;

  /// The name of the database in the catalog in which the table resides.
  late final Output<String> databaseName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The name of the table.
  late final Output<String> tableName;

  /// The type of table optimizer. Valid values are `compaction`, `retention`, and `orphan_file_deletion`.
  late final Output<String> type;

  CatalogTableOptimizer(
    String name, {
    CatalogTableOptimizerArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:glue/catalogTableOptimizer:CatalogTableOptimizer',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.catalogId = registerOutput<String>('catalogId');
    this.configuration =
        registerOutput<CatalogTableOptimizerConfiguration>('configuration');
    this.databaseName = registerOutput<String>('databaseName');
    this.region = registerOutput<String>('region');
    this.tableName = registerOutput<String>('tableName');
    this.type = registerOutput<String>('type');
  }
}
