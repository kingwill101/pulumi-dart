// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../catalog_table_optimizer_configuration/catalog_table_optimizer_configuration.dart';

/// The set of arguments for CatalogTableOptimizer.
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

  CatalogTableOptimizerArgs({
    required this.catalogId,
    required this.configuration,
    required this.databaseName,
    this.region,
    required this.tableName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['catalogId'] = catalogId;
    map['configuration'] = pulumi.Input.mapInputValue<
        CatalogTableOptimizerConfiguration,
        Map<String, dynamic>>(configuration, (value) => value.toMap());
    map['databaseName'] = databaseName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['tableName'] = tableName;
    map['type'] = type;
    return map;
  }

  factory CatalogTableOptimizerArgs.fromMap(Map<String, dynamic> map) {
    return CatalogTableOptimizerArgs(
      catalogId: pulumi.Input.asInput<String>(map['catalogId']),
      configuration: pulumi.Input.asInput<CatalogTableOptimizerConfiguration>(
          map['configuration']),
      databaseName: pulumi.Input.asInput<String>(map['databaseName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tableName: pulumi.Input.asInput<String>(map['tableName']),
      type: pulumi.Input.asInput<String>(map['type']),
    );
  }
}
