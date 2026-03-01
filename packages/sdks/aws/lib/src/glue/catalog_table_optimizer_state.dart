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
    pulumi.Output<String>? catalogId,
    pulumi.Output<CatalogTableOptimizerConfiguration>? configuration,
    pulumi.Output<String>? databaseName,
    pulumi.Output<String>? region,
    pulumi.Output<String>? tableName,
    pulumi.Output<String>? type,
  }) :
      catalogId = pulumi.Input.asOptionalInput<String>(catalogId),
      configuration = pulumi.Input.asOptionalInput<CatalogTableOptimizerConfiguration>(configuration),
      databaseName = pulumi.Input.asOptionalInput<String>(databaseName),
      region = pulumi.Input.asOptionalInput<String>(region),
      tableName = pulumi.Input.asOptionalInput<String>(tableName),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      catalogId: map['catalogId'] == null ? null : pulumi.Output.create<String>(map['catalogId'] as String),
      configuration: map['configuration'] == null ? null : pulumi.Output.create<CatalogTableOptimizerConfiguration>(CatalogTableOptimizerConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>())),
      databaseName: map['databaseName'] == null ? null : pulumi.Output.create<String>(map['databaseName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tableName: map['tableName'] == null ? null : pulumi.Output.create<String>(map['tableName'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

