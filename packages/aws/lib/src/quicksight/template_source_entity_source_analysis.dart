// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'template_source_entity_source_analysis_data_set_reference.dart';

class TemplateSourceEntitySourceAnalysis {
  /// The Amazon Resource Name (ARN) of the resource.
  final String arn;

  /// A list of dataset references used as placeholders in the template. See data_set_references.
  final List<TemplateSourceEntitySourceAnalysisDataSetReference>
      dataSetReferences;

  /// Creates a new [TemplateSourceEntitySourceAnalysis].
  /// [arn] The Amazon Resource Name (ARN) of the resource.
  /// [dataSetReferences] A list of dataset references used as placeholders in the template. See data_set_references.
  TemplateSourceEntitySourceAnalysis({
    required this.arn,
    required this.dataSetReferences,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['dataSetReferences'] = pulumi.Input.encodeList<
        TemplateSourceEntitySourceAnalysisDataSetReference,
        Map<String, dynamic>>(dataSetReferences, (value) => value.toMap());
    return map;
  }

  factory TemplateSourceEntitySourceAnalysis.fromMap(Map<String, dynamic> map) {
    return TemplateSourceEntitySourceAnalysis(
      arn: map['arn'] as String,
      dataSetReferences: pulumi.Input.decodeList<
              TemplateSourceEntitySourceAnalysisDataSetReference>(
          map['dataSetReferences'],
          (value) => TemplateSourceEntitySourceAnalysisDataSetReference.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
