// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_source_entity_source_template_data_set_reference.dart';

class DashboardSourceEntitySourceTemplate {
  /// The Amazon Resource Name (ARN) of the resource.
  final pulumi.Input<String> arn;
  /// List of dataset references. See data_set_references.
  final pulumi.Input<List<DashboardSourceEntitySourceTemplateDataSetReference>> dataSetReferences;

  /// Creates a new [DashboardSourceEntitySourceTemplate].
  /// [arn] The Amazon Resource Name (ARN) of the resource.
  /// [dataSetReferences] List of dataset references. See data_set_references.
  DashboardSourceEntitySourceTemplate({
    required this.arn,
    required this.dataSetReferences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'dataSetReferences': pulumi.Input.mapInputValue<List<DashboardSourceEntitySourceTemplateDataSetReference>, List<Map<String, dynamic>>>(dataSetReferences, (value) => pulumi.Input.encodeList<DashboardSourceEntitySourceTemplateDataSetReference, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DashboardSourceEntitySourceTemplate.fromMap(Map<String, dynamic> map) {
    return DashboardSourceEntitySourceTemplate(
      arn: (map['arn'] as String).input(),
      dataSetReferences: (pulumi.Input.decodeList<DashboardSourceEntitySourceTemplateDataSetReference>(map['dataSetReferences']!, (value) => DashboardSourceEntitySourceTemplateDataSetReference.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

