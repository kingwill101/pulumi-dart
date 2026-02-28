// ignore_for_file: unused_element, unnecessary_cast

import 'maintenance_exclusion_options_scope.dart';

/// Represents the Maintenance exclusion option.
class MaintenanceExclusionOptions {
  /// Scope specifies the upgrade scope which upgrades are blocked by the exclusion.
  final MaintenanceExclusionOptionsScope? scope;

  /// Creates a new [MaintenanceExclusionOptions].
  /// [scope] Scope specifies the upgrade scope which upgrades are blocked by the exclusion.
  MaintenanceExclusionOptions({
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

  factory MaintenanceExclusionOptions.fromMap(Map<String, dynamic> map) {
    return MaintenanceExclusionOptions(
      scope: map['scope'] == null
          ? null
          : MaintenanceExclusionOptionsScope.fromValue(map['scope'] as String),
    );
  }
}
