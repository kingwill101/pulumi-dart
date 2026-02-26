// ignore_for_file: unused_element, unnecessary_cast

/// Represents the Maintenance exclusion option.
class MaintenanceExclusionOptionsResponse2 {
  /// Scope specifies the upgrade scope which upgrades are blocked by the exclusion.
  final String scope;

  MaintenanceExclusionOptionsResponse2({
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['scope'] = scope;
    return map;
  }

  factory MaintenanceExclusionOptionsResponse2.fromMap(
      Map<String, dynamic> map) {
    return MaintenanceExclusionOptionsResponse2(
      scope: map['scope'] as String,
    );
  }
}
