// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExportExportDataQuery {
  /// Query statement. The SQL table name for CUR 2.0 is `COST_AND_USAGE_REPORT`. See the [AWS documentation](https://docs.aws.amazon.com/cur/latest/userguide/table-dictionary-cur2.html) for a list of available columns.
  final pulumi.Input<String> queryStatement;

  /// Table configuration. See the [AWS documentation](https://docs.aws.amazon.com/cur/latest/userguide/table-dictionary-cur2.html#cur2-table-configurations) for the available configurations. In addition to those listed in the documentation, `BILLING_VIEW_ARN` must also be included, as shown in the example above.
  final pulumi.Input<Map<String, Map<String, String>>>? tableConfigurations;

  /// Creates a new [ExportExportDataQuery].
  /// [queryStatement] Query statement. The SQL table name for CUR 2.0 is `COST_AND_USAGE_REPORT`. See the [AWS documentation](https://docs.aws.amazon.com/cur/latest/userguide/table-dictionary-cur2.html) for a list of available columns.
  /// [tableConfigurations] Table configuration. See the [AWS documentation](https://docs.aws.amazon.com/cur/latest/userguide/table-dictionary-cur2.html#cur2-table-configurations) for the available configurations. In addition to those listed in the documentation, `BILLING_VIEW_ARN` must also be included, as shown in the example above.
  ExportExportDataQuery({
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
      tableConfigurations: (() {
        final guardedValue = map['tableConfigurations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, Map<String, String>>(),
        );
      })(),
    );
  }
}
