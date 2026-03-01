// ignore_for_file: unused_element, unnecessary_cast


class DashboardSourceEntitySourceTemplateDataSetReference {
  /// Dataset Amazon Resource Name (ARN).
  final String dataSetArn;
  /// Dataset placeholder.
  final String dataSetPlaceholder;

  /// Creates a new [DashboardSourceEntitySourceTemplateDataSetReference].
  /// [dataSetArn] Dataset Amazon Resource Name (ARN).
  /// [dataSetPlaceholder] Dataset placeholder.
  DashboardSourceEntitySourceTemplateDataSetReference({
    required this.dataSetArn,
    required this.dataSetPlaceholder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSetArn': dataSetArn,
      'dataSetPlaceholder': dataSetPlaceholder,
    };
  }

  factory DashboardSourceEntitySourceTemplateDataSetReference.fromMap(Map<String, dynamic> map) {
    return DashboardSourceEntitySourceTemplateDataSetReference(
      dataSetArn: map['dataSetArn'] as String,
      dataSetPlaceholder: map['dataSetPlaceholder'] as String,
    );
  }
}

