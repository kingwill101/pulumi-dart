// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../analysis_source_entity_source_template_data_set_reference/analysis_source_entity_source_template_data_set_reference.dart';

class AnalysisSourceEntitySourceTemplate {
  /// The Amazon Resource Name (ARN) of the resource.
  final String arn;

  /// List of dataset references. See data_set_references.
  final List<AnalysisSourceEntitySourceTemplateDataSetReference>
      dataSetReferences;

  AnalysisSourceEntitySourceTemplate({
    required this.arn,
    required this.dataSetReferences,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['dataSetReferences'] = pulumi.Input.encodeList<
        AnalysisSourceEntitySourceTemplateDataSetReference,
        Map<String, dynamic>>(dataSetReferences, (value) => value.toMap());
    return map;
  }

  factory AnalysisSourceEntitySourceTemplate.fromMap(Map<String, dynamic> map) {
    return AnalysisSourceEntitySourceTemplate(
      arn: map['arn'] as String,
      dataSetReferences: pulumi.Input.decodeList<
              AnalysisSourceEntitySourceTemplateDataSetReference>(
          map['dataSetReferences'],
          (value) => AnalysisSourceEntitySourceTemplateDataSetReference.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
