// ignore_for_file: unused_element, unnecessary_cast

/// Represents the Maintenance exclusion option.
class MaintenanceExclusionOptionsResponseContainerV1beta1 {
  /// Scope specifies the upgrade scope which upgrades are blocked by the exclusion.
  final String scope;

  MaintenanceExclusionOptionsResponseContainerV1beta1({
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['scope'] = scope;
    return map;
  }

  factory MaintenanceExclusionOptionsResponseContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return MaintenanceExclusionOptionsResponseContainerV1beta1(
      scope: map['scope'] as String,
    );
  }
}
