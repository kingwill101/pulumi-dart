// ignore_for_file: unused_element, unnecessary_cast


/// The KPI extract.
class KpiExtract {
  /// The expression.
  final String expression;
  /// KPI extract name.
  final String extractName;

  /// Creates a new [KpiExtract].
  /// [expression] The expression.
  /// [extractName] KPI extract name.
  KpiExtract({
    required this.expression,
    required this.extractName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expression': expression,
      'extractName': extractName,
    };
  }

  factory KpiExtract.fromMap(Map<String, dynamic> map) {
    return KpiExtract(
      expression: map['expression'] as String,
      extractName: map['extractName'] as String,
    );
  }
}

