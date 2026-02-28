// ignore_for_file: unused_element, unnecessary_cast

class ExportExportDataQuery {
  /// Query statement. The SQL table name for CUR 2.0 is `COST_AND_USAGE_REPORT`. See the [AWS documentation](https://docs.aws.amazon.com/cur/latest/userguide/table-dictionary-cur2.html) for a list of available columns.
  final String queryStatement;

  /// Table configuration. See the [AWS documentation](https://docs.aws.amazon.com/cur/latest/userguide/table-dictionary-cur2.html#cur2-table-configurations) for the available configurations. In addition to those listed in the documentation, `BILLING_VIEW_ARN` must also be included, as shown in the example above.
  final Map<String, Map<String, String>>? tableConfigurations;

  /// Creates a new [ExportExportDataQuery].
  /// [queryStatement] Query statement. The SQL table name for CUR 2.0 is `COST_AND_USAGE_REPORT`. See the [AWS documentation](https://docs.aws.amazon.com/cur/latest/userguide/table-dictionary-cur2.html) for a list of available columns.
  /// [tableConfigurations] Table configuration. See the [AWS documentation](https://docs.aws.amazon.com/cur/latest/userguide/table-dictionary-cur2.html#cur2-table-configurations) for the available configurations. In addition to those listed in the documentation, `BILLING_VIEW_ARN` must also be included, as shown in the example above.
  ExportExportDataQuery({
    required this.queryStatement,
    this.tableConfigurations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['queryStatement'] = queryStatement;
    final tableConfigurationsValue = tableConfigurations;
    if (tableConfigurationsValue != null) {
      map['tableConfigurations'] = tableConfigurationsValue;
    }
    return map;
  }

  factory ExportExportDataQuery.fromMap(Map<String, dynamic> map) {
    return ExportExportDataQuery(
      queryStatement: map['queryStatement'] as String,
      tableConfigurations: map['tableConfigurations'] == null
          ? null
          : (map['tableConfigurations'] as Map)
              .cast<String, Map<String, String>>(),
    );
  }
}
