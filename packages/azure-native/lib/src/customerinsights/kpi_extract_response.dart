// ignore_for_file: unused_element, unnecessary_cast


/// The KPI extract.
class KpiExtractResponse {
  /// The expression.
  final String expression;
  /// KPI extract name.
  final String extractName;

  /// Creates a new [KpiExtractResponse].
  /// [expression] The expression.
  /// [extractName] KPI extract name.
  KpiExtractResponse({
    required this.expression,
    required this.extractName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expression': expression,
      'extractName': extractName,
    };
  }

  factory KpiExtractResponse.fromMap(Map<String, dynamic> map) {
    return KpiExtractResponse(
      expression: map['expression'] as String,
      extractName: map['extractName'] as String,
    );
  }
}

