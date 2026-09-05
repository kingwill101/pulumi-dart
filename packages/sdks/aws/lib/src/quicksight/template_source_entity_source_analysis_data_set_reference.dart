// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TemplateSourceEntitySourceAnalysisDataSetReference {
  /// Dataset ARN.
  final pulumi.Input<String> dataSetArn;
  /// Dataset placeholder.
  final pulumi.Input<String> dataSetPlaceholder;

  /// Creates a new [TemplateSourceEntitySourceAnalysisDataSetReference].
  /// [dataSetArn] Dataset ARN.
  /// [dataSetPlaceholder] Dataset placeholder.
  const TemplateSourceEntitySourceAnalysisDataSetReference({
    required this.dataSetArn,
    required this.dataSetPlaceholder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSetArn': dataSetArn,
      'dataSetPlaceholder': dataSetPlaceholder,
    };
  }

  factory TemplateSourceEntitySourceAnalysisDataSetReference.fromMap(Map<String, dynamic> map) {
    return TemplateSourceEntitySourceAnalysisDataSetReference(
      dataSetArn: pulumi.Input.fromValue(map['dataSetArn'] as String),
      dataSetPlaceholder: pulumi.Input.fromValue(map['dataSetPlaceholder'] as String),
    );
  }
}
