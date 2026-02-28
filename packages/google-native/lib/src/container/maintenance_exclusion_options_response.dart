// ignore_for_file: unused_element, unnecessary_cast

/// Represents the Maintenance exclusion option.
class MaintenanceExclusionOptionsResponse {
  /// Scope specifies the upgrade scope which upgrades are blocked by the exclusion.
  final String scope;

  /// Creates a new [MaintenanceExclusionOptionsResponse].
  /// [scope] Scope specifies the upgrade scope which upgrades are blocked by the exclusion.
  MaintenanceExclusionOptionsResponse({
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['scope'] = scope;
    return map;
  }

  factory MaintenanceExclusionOptionsResponse.fromMap(
      Map<String, dynamic> map) {
    return MaintenanceExclusionOptionsResponse(
      scope: map['scope'] as String,
    );
  }
}
