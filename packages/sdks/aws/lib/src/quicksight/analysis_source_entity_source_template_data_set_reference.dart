// ignore_for_file: unused_element, unnecessary_cast


class AnalysisSourceEntitySourceTemplateDataSetReference {
  /// Dataset Amazon Resource Name (ARN).
  final String dataSetArn;
  /// Dataset placeholder.
  final String dataSetPlaceholder;

  /// Creates a new [AnalysisSourceEntitySourceTemplateDataSetReference].
  /// [dataSetArn] Dataset Amazon Resource Name (ARN).
  /// [dataSetPlaceholder] Dataset placeholder.
  AnalysisSourceEntitySourceTemplateDataSetReference({
    required this.dataSetArn,
    required this.dataSetPlaceholder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSetArn': dataSetArn,
      'dataSetPlaceholder': dataSetPlaceholder,
    };
  }

  factory AnalysisSourceEntitySourceTemplateDataSetReference.fromMap(Map<String, dynamic> map) {
    return AnalysisSourceEntitySourceTemplateDataSetReference(
      dataSetArn: map['dataSetArn'] as String,
      dataSetPlaceholder: map['dataSetPlaceholder'] as String,
    );
  }
}

