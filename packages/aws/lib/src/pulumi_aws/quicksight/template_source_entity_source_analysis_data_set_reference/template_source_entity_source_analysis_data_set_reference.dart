// ignore_for_file: unused_element, unnecessary_cast

class TemplateSourceEntitySourceAnalysisDataSetReference {
  /// Dataset Amazon Resource Name (ARN).
  final String dataSetArn;

  /// Dataset placeholder.
  final String dataSetPlaceholder;

  TemplateSourceEntitySourceAnalysisDataSetReference({
    required this.dataSetArn,
    required this.dataSetPlaceholder,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataSetArn'] = dataSetArn;
    map['dataSetPlaceholder'] = dataSetPlaceholder;
    return map;
  }

  factory TemplateSourceEntitySourceAnalysisDataSetReference.fromMap(
      Map<String, dynamic> map) {
    return TemplateSourceEntitySourceAnalysisDataSetReference(
      dataSetArn: map['dataSetArn'] as String,
      dataSetPlaceholder: map['dataSetPlaceholder'] as String,
    );
  }
}
