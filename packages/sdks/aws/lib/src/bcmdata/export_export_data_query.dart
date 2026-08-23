// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExportExportDataQuery {
  /// Query statement.
  /// See the [AWS documentation](https://docs.aws.amazon.com/cur/latest/userguide/dataexports-table-dictionary.html) for a list of available tables.
  final pulumi.Input<String> queryStatement;
  /// Table configuration.
  /// See the [AWS documentation](https://docs.aws.amazon.com/cur/latest/userguide/dataexports-table-dictionary.html) for a list of available tables.
  /// If a value is set for `tableConfigurations`, all configuration values must be set.
  /// For the Cost and Usage Report, `BILLING_VIEW_ARN` must also be set, in addition to the documented settings.
  final pulumi.Input<Map<String, Map<String, String>>>? tableConfigurations;

  /// Creates a new [ExportExportDataQuery].
  /// [queryStatement] Query statement.
  /// [tableConfigurations] Table configuration.
  const ExportExportDataQuery({
    required this.queryStatement,
    this.tableConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queryStatement': queryStatement,
      'tableConfigurations': ?tableConfigurations,
    };
  }

  factory ExportExportDataQuery.fromMap(Map<String, dynamic> map) {
    return ExportExportDataQuery(
      queryStatement: pulumi.Input.fromValue(map['queryStatement'] as String),
      tableConfigurations: (() { final guardedValue = map['tableConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, Map<String, String>>()); })(),
    );
  }
}
