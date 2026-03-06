// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analysis_source_entity_source_template_data_set_reference.dart';

class AnalysisSourceEntitySourceTemplate {
  /// The Amazon Resource Name (ARN) of the resource.
  final pulumi.Input<String> arn;
  /// List of dataset references. See data_set_references.
  final pulumi.Input<List<AnalysisSourceEntitySourceTemplateDataSetReference>> dataSetReferences;

  /// Creates a new [AnalysisSourceEntitySourceTemplate].
  /// [arn] The Amazon Resource Name (ARN) of the resource.
  /// [dataSetReferences] List of dataset references. See data_set_references.
  const AnalysisSourceEntitySourceTemplate({
    required this.arn,
    required this.dataSetReferences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'dataSetReferences': pulumi.Input.mapInputValue<List<AnalysisSourceEntitySourceTemplateDataSetReference>, List<Map<String, dynamic>>>(dataSetReferences, (value) => pulumi.Input.encodeList<AnalysisSourceEntitySourceTemplateDataSetReference, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AnalysisSourceEntitySourceTemplate.fromMap(Map<String, dynamic> map) {
    return AnalysisSourceEntitySourceTemplate(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      dataSetReferences: pulumi.Input.fromValue(pulumi.Input.decodeList<AnalysisSourceEntitySourceTemplateDataSetReference>(map['dataSetReferences']!, (value) => AnalysisSourceEntitySourceTemplateDataSetReference.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

