// ignore_for_file: unused_element, unnecessary_cast

import 'dashboard_source_entity_source_template.dart';

class DashboardSourceEntity {
  /// The source template. See source_template.
  final DashboardSourceEntitySourceTemplate? sourceTemplate;

  /// Creates a new [DashboardSourceEntity].
  /// [sourceTemplate] The source template. See source_template.
  DashboardSourceEntity({this.sourceTemplate});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceTemplate': ?sourceTemplate == null
          ? null
          : sourceTemplate!.toMap(),
    };
  }

  factory DashboardSourceEntity.fromMap(Map<String, dynamic> map) {
    return DashboardSourceEntity(
      sourceTemplate: map['sourceTemplate'] == null
          ? null
          : DashboardSourceEntitySourceTemplate.fromMap(
              (map['sourceTemplate'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
