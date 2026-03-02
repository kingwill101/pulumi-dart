// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_glue_get_catalog_table_get_catalog_table_args_doc}
/// Arguments for getCatalogTable.
/// {@endtemplate}
/// {@macro pulumi_glue_get_catalog_table_get_catalog_table_args_doc}
class GetCatalogTableArgs {
  /// ID of the Glue Catalog and database where the table metadata resides. If omitted, this defaults to the current AWS Account ID.
  final pulumi.Input<String>? catalogId;
  /// Name of the metadata database where the table metadata resides.
  final pulumi.Input<String> databaseName;
  /// Name of the table.
  final pulumi.Input<String> name;
  /// The time as of when to read the table contents. If not set, the most recent transaction commit time will be used. Cannot be specified along with `transaction_id`. Specified in RFC 3339 format, e.g. `2006-01-02T15:04:05Z07:00`.
  final pulumi.Input<String>? queryAsOfTime;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The transaction ID at which to read the table contents.
  final pulumi.Input<int>? transactionId;

  /// Creates a new [GetCatalogTableArgs].
  /// [catalogId] ID of the Glue Catalog and database where the table metadata resides. If omitted, this defaults to the current AWS Account ID.
  /// [databaseName] Name of the metadata database where the table metadata resides.
  /// [name] Name of the table.
  /// [queryAsOfTime] The time as of when to read the table contents. If not set, the most recent transaction commit time will be used. Cannot be specified along with `transaction_id`. Specified in RFC 3339 format, e.g. `2006-01-02T15:04:05Z07:00`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [transactionId] The transaction ID at which to read the table contents.
  GetCatalogTableArgs({
    this.catalogId,
    required this.databaseName,
    required this.name,
    this.queryAsOfTime,
    this.region,
    this.transactionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'databaseName': databaseName,
      'name': name,
      'queryAsOfTime': ?queryAsOfTime,
      'region': ?region,
      'transactionId': ?transactionId,
    };
  }

  factory GetCatalogTableArgs.fromMap(Map<String, dynamic> map) {
    return GetCatalogTableArgs(
      catalogId: map['catalogId'] == null ? null : (map['catalogId'] as String).input(),
      databaseName: (map['databaseName'] as String).input(),
      name: (map['name'] as String).input(),
      queryAsOfTime: map['queryAsOfTime'] == null ? null : (map['queryAsOfTime'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      transactionId: map['transactionId'] == null ? null : (map['transactionId'] as int).input(),
    );
  }
}

