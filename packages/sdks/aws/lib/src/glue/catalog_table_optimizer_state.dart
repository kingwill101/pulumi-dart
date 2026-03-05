// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'catalog_table_optimizer_configuration.dart';

/// Input properties used for looking up and filtering CatalogTableOptimizer resources.
class CatalogTableOptimizerState {
  /// The Catalog ID of the table.
  final pulumi.Input<String>? catalogId;
  /// A configuration block that defines the table optimizer settings. See Configuration for additional details.
  final pulumi.Input<CatalogTableOptimizerConfiguration>? configuration;
  /// The name of the database in the catalog in which the table resides.
  final pulumi.Input<String>? databaseName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The name of the table.
  final pulumi.Input<String>? tableName;
  /// The type of table optimizer. Valid values are `compaction`, `retention`, and `orphan_file_deletion`.
  final pulumi.Input<String>? type;

  /// Creates a new [CatalogTableOptimizerState].
  /// [catalogId] The Catalog ID of the table.
  /// [configuration] A configuration block that defines the table optimizer settings. See Configuration for additional details.
  /// [databaseName] The name of the database in the catalog in which the table resides.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tableName] The name of the table.
  /// [type] The type of table optimizer. Valid values are `compaction`, `retention`, and `orphan_file_deletion`.
  CatalogTableOptimizerState({
    this.catalogId,
    this.configuration,
    this.databaseName,
    this.region,
    this.tableName,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'configuration': ?pulumi.Input.mapOptionalInputValue<CatalogTableOptimizerConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'databaseName': ?databaseName,
      'region': ?region,
      'tableName': ?tableName,
      'type': ?type,
    };
  }

  factory CatalogTableOptimizerState.fromMap(Map<String, dynamic> map) {
    return CatalogTableOptimizerState(
      catalogId: (() { final guardedValue = map['catalogId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CatalogTableOptimizerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tableName: (() { final guardedValue = map['tableName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

