// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The KPI extract.
class KpiExtract {
  /// The expression.
  final pulumi.Input<String> expression;

  /// KPI extract name.
  final pulumi.Input<String> extractName;

  /// Creates a new [KpiExtract].
  /// [expression] The expression.
  /// [extractName] KPI extract name.
  KpiExtract({required this.expression, required this.extractName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expression': expression,
      'extractName': extractName,
    };
  }

  factory KpiExtract.fromMap(Map<String, dynamic> map) {
    return KpiExtract(
      expression: pulumi.Input.fromValue(map['expression'] as String),
      extractName: pulumi.Input.fromValue(map['extractName'] as String),
    );
  }
}
