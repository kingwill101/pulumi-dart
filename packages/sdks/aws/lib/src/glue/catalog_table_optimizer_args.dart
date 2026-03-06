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
  const CatalogTableOptimizerArgs({
    required this.catalogId,
    required this.configuration,
    required this.databaseName,
    this.region,
    required this.tableName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': catalogId,
      'configuration': pulumi.Input.mapInputValue<CatalogTableOptimizerConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'databaseName': databaseName,
      'region': ?region,
      'tableName': tableName,
      'type': type,
    };
  }

  factory CatalogTableOptimizerArgs.fromMap(Map<String, dynamic> map) {
    return CatalogTableOptimizerArgs(
      catalogId: pulumi.Input.fromValue(map['catalogId'] as String),
      configuration: pulumi.Input.fromValue(CatalogTableOptimizerConfiguration.fromMap((map['configuration']! as Map).cast<String, dynamic>())),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tableName: pulumi.Input.fromValue(map['tableName'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

