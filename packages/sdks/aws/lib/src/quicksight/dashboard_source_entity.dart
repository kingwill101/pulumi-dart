// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_source_entity_source_template.dart';

class DashboardSourceEntity {
  /// The source template. See source_template.
  final pulumi.Input<DashboardSourceEntitySourceTemplate>? sourceTemplate;

  /// Creates a new [DashboardSourceEntity].
  /// [sourceTemplate] The source template. See source_template.
  DashboardSourceEntity({
    this.sourceTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceTemplate': ?pulumi.Input.mapOptionalInputValue<DashboardSourceEntitySourceTemplate, Map<String, dynamic>>(sourceTemplate, (value) => value.toMap()),
    };
  }

  factory DashboardSourceEntity.fromMap(Map<String, dynamic> map) {
    return DashboardSourceEntity(
      sourceTemplate: (() { final guardedValue = map['sourceTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardSourceEntitySourceTemplate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

