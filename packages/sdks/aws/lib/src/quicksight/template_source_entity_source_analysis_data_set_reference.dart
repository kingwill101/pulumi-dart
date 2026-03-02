// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TemplateSourceEntitySourceAnalysisDataSetReference {
  /// Dataset Amazon Resource Name (ARN).
  final pulumi.Input<String> dataSetArn;
  /// Dataset placeholder.
  final pulumi.Input<String> dataSetPlaceholder;

  /// Creates a new [TemplateSourceEntitySourceAnalysisDataSetReference].
  /// [dataSetArn] Dataset Amazon Resource Name (ARN).
  /// [dataSetPlaceholder] Dataset placeholder.
  TemplateSourceEntitySourceAnalysisDataSetReference({
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
      dataSetArn: (map['dataSetArn'] as String).input(),
      dataSetPlaceholder: (map['dataSetPlaceholder'] as String).input(),
    );
  }
}

