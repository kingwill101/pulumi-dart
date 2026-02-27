// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getCatalogTable.
class GetCatalogTableArgs {
  /// ID of the Glue Catalog and database where the table metadata resides. If omitted, this defaults to the current AWS Account ID.
  final Input<String>? catalogId;

  /// Name of the metadata database where the table metadata resides.
  final Input<String> databaseName;

  /// Name of the table.
  final Input<String> name;

  /// The time as of when to read the table contents. If not set, the most recent transaction commit time will be used. Cannot be specified along with `transaction_id`. Specified in RFC 3339 format, e.g. `2006-01-02T15:04:05Z07:00`.
  final Input<String>? queryAsOfTime;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The transaction ID at which to read the table contents.
  final Input<int>? transactionId;

  GetCatalogTableArgs({
    this.catalogId,
    required this.databaseName,
    required this.name,
    this.queryAsOfTime,
    this.region,
    this.transactionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final catalogIdValue = catalogId;
    if (catalogIdValue != null) {
      map['catalogId'] = catalogIdValue;
    }
    map['databaseName'] = databaseName;
    map['name'] = name;
    final queryAsOfTimeValue = queryAsOfTime;
    if (queryAsOfTimeValue != null) {
      map['queryAsOfTime'] = queryAsOfTimeValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final transactionIdValue = transactionId;
    if (transactionIdValue != null) {
      map['transactionId'] = transactionIdValue;
    }
    return map;
  }

  factory GetCatalogTableArgs.fromMap(Map<String, dynamic> map) {
    return GetCatalogTableArgs(
      catalogId: Input.asOptionalInput<String>(map['catalogId']),
      databaseName: Input.asInput<String>(map['databaseName']),
      name: Input.asInput<String>(map['name']),
      queryAsOfTime: Input.asOptionalInput<String>(map['queryAsOfTime']),
      region: Input.asOptionalInput<String>(map['region']),
      transactionId: Input.asOptionalInput<int>(map['transactionId']),
    );
  }
}
