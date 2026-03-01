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
    pulumi.Output<String>? catalogId,
    required pulumi.Output<String> databaseName,
    required pulumi.Output<String> name,
    pulumi.Output<String>? queryAsOfTime,
    pulumi.Output<String>? region,
    pulumi.Output<int>? transactionId,
  }) :
      catalogId = pulumi.Input.asOptionalInput<String>(catalogId),
      databaseName = pulumi.Input.asInput<String>(databaseName),
      name = pulumi.Input.asInput<String>(name),
      queryAsOfTime = pulumi.Input.asOptionalInput<String>(queryAsOfTime),
      region = pulumi.Input.asOptionalInput<String>(region),
      transactionId = pulumi.Input.asOptionalInput<int>(transactionId);

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
      catalogId: map['catalogId'] == null ? null : pulumi.Output.create<String>(map['catalogId'] as String),
      databaseName: pulumi.Output.create<String>(map['databaseName'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      queryAsOfTime: map['queryAsOfTime'] == null ? null : pulumi.Output.create<String>(map['queryAsOfTime'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      transactionId: map['transactionId'] == null ? null : pulumi.Output.create<int>(map['transactionId'] as int),
    );
  }
}

