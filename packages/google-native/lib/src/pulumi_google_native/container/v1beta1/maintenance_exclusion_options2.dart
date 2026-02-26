// ignore_for_file: unused_element, unnecessary_cast

import 'maintenance_exclusion_options_scope2.dart';

/// Represents the Maintenance exclusion option.
class MaintenanceExclusionOptions2 {
  /// Scope specifies the upgrade scope which upgrades are blocked by the exclusion.
  final MaintenanceExclusionOptionsScope2? scope;

  MaintenanceExclusionOptions2({
    this.scope,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final scopeValue = scope;
    if (scopeValue != null) {
      map['scope'] = scopeValue.value;
    }
    return map;
  }

  factory MaintenanceExclusionOptions2.fromMap(Map<String, dynamic> map) {
    return MaintenanceExclusionOptions2(
      scope: map['scope'] == null
          ? null
          : MaintenanceExclusionOptionsScope2.fromValue(map['scope'] as String),
    );
  }
}
