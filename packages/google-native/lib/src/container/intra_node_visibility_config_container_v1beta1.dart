// ignore_for_file: unused_element, unnecessary_cast

/// IntraNodeVisibilityConfig contains the desired config of the intra-node visibility on this cluster.
class IntraNodeVisibilityConfigContainerV1beta1 {
  /// Enables intra node visibility for this cluster.
  final bool? enabled;

  /// Creates a new [IntraNodeVisibilityConfigContainerV1beta1].
  /// [enabled] Enables intra node visibility for this cluster.
  IntraNodeVisibilityConfigContainerV1beta1({
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

  factory IntraNodeVisibilityConfigContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return IntraNodeVisibilityConfigContainerV1beta1(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
