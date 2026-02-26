// ignore_for_file: unused_element, unnecessary_cast

class AnalysisSourceEntitySourceTemplateDataSetReference {
  /// Dataset Amazon Resource Name (ARN).
  final String dataSetArn;

  /// Dataset placeholder.
  final String dataSetPlaceholder;

  AnalysisSourceEntitySourceTemplateDataSetReference({
    required this.dataSetArn,
    required this.dataSetPlaceholder,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataSetArn'] = dataSetArn;
    map['dataSetPlaceholder'] = dataSetPlaceholder;
    return map;
  }

  factory AnalysisSourceEntitySourceTemplateDataSetReference.fromMap(
      Map<String, dynamic> map) {
    return AnalysisSourceEntitySourceTemplateDataSetReference(
      dataSetArn: map['dataSetArn'] as String,
      dataSetPlaceholder: map['dataSetPlaceholder'] as String,
    );
  }
}
