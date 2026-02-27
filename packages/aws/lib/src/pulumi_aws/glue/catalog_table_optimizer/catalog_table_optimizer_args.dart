// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../catalog_table_optimizer_configuration/catalog_table_optimizer_configuration.dart';

/// The set of arguments for CatalogTableOptimizer.
class CatalogTableOptimizerArgs {
  /// The Catalog ID of the table.
  final Input<String> catalogId;

  /// A configuration block that defines the table optimizer settings. See Configuration for additional details.
  final Input<CatalogTableOptimizerConfiguration> configuration;

  /// The name of the database in the catalog in which the table resides.
  final Input<String> databaseName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The name of the table.
  final Input<String> tableName;

  /// The type of table optimizer. Valid values are `compaction`, `retention`, and `orphan_file_deletion`.
  final Input<String> type;

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
    map['configuration'] = Input.mapInputValue<
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
      catalogId: Input.asInput<String>(map['catalogId']),
      configuration: Input.asInput<CatalogTableOptimizerConfiguration>(
          map['configuration']),
      databaseName: Input.asInput<String>(map['databaseName']),
      region: Input.asOptionalInput<String>(map['region']),
      tableName: Input.asInput<String>(map['tableName']),
      type: Input.asInput<String>(map['type']),
    );
  }
}
