// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AnalysisSourceEntitySourceTemplateDataSetReference {
  /// Dataset Amazon Resource Name (ARN).
  final pulumi.Input<String> dataSetArn;
  /// Dataset placeholder.
  final pulumi.Input<String> dataSetPlaceholder;

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
      dataSetArn: pulumi.Input.fromValue(map['dataSetArn'] as String),
      dataSetPlaceholder: pulumi.Input.fromValue(map['dataSetPlaceholder'] as String),
    );
  }
}

