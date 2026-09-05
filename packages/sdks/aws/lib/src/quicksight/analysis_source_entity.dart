// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analysis_source_entity_source_template.dart';

class AnalysisSourceEntity {
  /// The source template. See source_template.
  final pulumi.Input<AnalysisSourceEntitySourceTemplate?>? sourceTemplate;

  /// Creates a new [AnalysisSourceEntity].
  /// [sourceTemplate] The source template. See source_template.
  const AnalysisSourceEntity({
    this.sourceTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceTemplate': ?pulumi.Input.mapOptionalInputValue<AnalysisSourceEntitySourceTemplate, Map<String, dynamic>>(sourceTemplate, (value) => value.toMap()),
    };
  }

  factory AnalysisSourceEntity.fromMap(Map<String, dynamic> map) {
    return AnalysisSourceEntity(
      sourceTemplate: (() { final guardedValue = map['sourceTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnalysisSourceEntitySourceTemplate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
