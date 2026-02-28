// ignore_for_file: unused_element, unnecessary_cast

/// IntraNodeVisibilityConfig contains the desired config of the intra-node visibility on this cluster.
class IntraNodeVisibilityConfig {
  /// Enables intra node visibility for this cluster.
  final bool? enabled;

  /// Creates a new [IntraNodeVisibilityConfig].
  /// [enabled] Enables intra node visibility for this cluster.
  IntraNodeVisibilityConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    return map;
  }

  factory IntraNodeVisibilityConfig.fromMap(Map<String, dynamic> map) {
    return IntraNodeVisibilityConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
