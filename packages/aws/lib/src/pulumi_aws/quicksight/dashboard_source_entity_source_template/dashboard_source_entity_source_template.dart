// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../dashboard_source_entity_source_template_data_set_reference/dashboard_source_entity_source_template_data_set_reference.dart';

class DashboardSourceEntitySourceTemplate {
  /// The Amazon Resource Name (ARN) of the resource.
  final String arn;

  /// List of dataset references. See data_set_references.
  final List<DashboardSourceEntitySourceTemplateDataSetReference>
      dataSetReferences;

  DashboardSourceEntitySourceTemplate({
    required this.arn,
    required this.dataSetReferences,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['dataSetReferences'] = pulumi.Input.encodeList<
        DashboardSourceEntitySourceTemplateDataSetReference,
        Map<String, dynamic>>(dataSetReferences, (value) => value.toMap());
    return map;
  }

  factory DashboardSourceEntitySourceTemplate.fromMap(
      Map<String, dynamic> map) {
    return DashboardSourceEntitySourceTemplate(
      arn: map['arn'] as String,
      dataSetReferences: pulumi.Input.decodeList<
              DashboardSourceEntitySourceTemplateDataSetReference>(
          map['dataSetReferences'],
          (value) =>
              DashboardSourceEntitySourceTemplateDataSetReference.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
