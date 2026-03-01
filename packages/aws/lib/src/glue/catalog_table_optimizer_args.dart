// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'catalog_table_optimizer_configuration.dart';

/// {@template pulumi_glue_catalog_table_optimizer_catalog_table_optimizer_args_doc}
/// The set of arguments for CatalogTableOptimizer.
/// {@endtemplate}
/// {@macro pulumi_glue_catalog_table_optimizer_catalog_table_optimizer_args_doc}
class CatalogTableOptimizerArgs {
  /// The Catalog ID of the table.
  final pulumi.Input<String> catalogId;

  /// A configuration block that defines the table optimizer settings. See Configuration for additional details.
  final pulumi.Input<CatalogTableOptimizerConfiguration> configuration;

  /// The name of the database in the catalog in which the table resides.
  final pulumi.Input<String> databaseName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The name of the table.
  final pulumi.Input<String> tableName;

  /// The type of table optimizer. Valid values are `compaction`, `retention`, and `orphan_file_deletion`.
  final pulumi.Input<String> type;

  /// Creates a new [CatalogTableOptimizerArgs].
  /// [catalogId] The Catalog ID of the table.
  /// [configuration] A configuration block that defines the table optimizer settings. See Configuration for additional details.
  /// [databaseName] The name of the database in the catalog in which the table resides.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tableName] The name of the table.
  /// [type] The type of table optimizer. Valid values are `compaction`, `retention`, and `orphan_file_deletion`.
  CatalogTableOptimizerArgs({
    required String catalogId,
    required CatalogTableOptimizerConfiguration configuration,
    required String databaseName,
    String? region,
    required String tableName,
    required String type,
  }) : catalogId = pulumi.Input.asInput<String>(catalogId),
       configuration = pulumi.Input.asInput<CatalogTableOptimizerConfiguration>(
         configuration,
       ),
       databaseName = pulumi.Input.asInput<String>(databaseName),
       region = pulumi.Input.asOptionalInput<String>(region),
       tableName = pulumi.Input.asInput<String>(tableName),
       type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': catalogId,
      'configuration':
          pulumi.Input.mapInputValue<
            CatalogTableOptimizerConfiguration,
            Map<String, dynamic>
          >(configuration, (value) => value.toMap()),
      'databaseName': databaseName,
      'region': ?region,
      'tableName': tableName,
      'type': type,
    };
  }

  factory CatalogTableOptimizerArgs.fromMap(Map<String, dynamic> map) {
    return CatalogTableOptimizerArgs(
      catalogId: map['catalogId'] as String,
      configuration: CatalogTableOptimizerConfiguration.fromMap(
        (map['configuration'] as Map).cast<String, dynamic>(),
      ),
      databaseName: map['databaseName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tableName: map['tableName'] as String,
      type: map['type'] as String,
    );
  }
}
