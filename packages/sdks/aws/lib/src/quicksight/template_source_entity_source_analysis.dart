// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'template_source_entity_source_analysis_data_set_reference.dart';

class TemplateSourceEntitySourceAnalysis {
  /// The Amazon Resource Name (ARN) of the resource.
  final pulumi.Input<String> arn;
  /// A list of dataset references used as placeholders in the template. See data_set_references.
  final pulumi.Input<List<TemplateSourceEntitySourceAnalysisDataSetReference>> dataSetReferences;

  /// Creates a new [TemplateSourceEntitySourceAnalysis].
  /// [arn] The Amazon Resource Name (ARN) of the resource.
  /// [dataSetReferences] A list of dataset references used as placeholders in the template. See data_set_references.
  TemplateSourceEntitySourceAnalysis({
    required this.arn,
    required this.dataSetReferences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'dataSetReferences': pulumi.Input.mapInputValue<List<TemplateSourceEntitySourceAnalysisDataSetReference>, List<Map<String, dynamic>>>(dataSetReferences, (value) => pulumi.Input.encodeList<TemplateSourceEntitySourceAnalysisDataSetReference, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TemplateSourceEntitySourceAnalysis.fromMap(Map<String, dynamic> map) {
    return TemplateSourceEntitySourceAnalysis(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      dataSetReferences: pulumi.Input.fromValue(pulumi.Input.decodeList<TemplateSourceEntitySourceAnalysisDataSetReference>(map['dataSetReferences']!, (value) => TemplateSourceEntitySourceAnalysisDataSetReference.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

