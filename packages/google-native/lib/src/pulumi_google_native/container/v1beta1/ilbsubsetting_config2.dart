// ignore_for_file: unused_element, unnecessary_cast

/// ILBSubsettingConfig contains the desired config of L4 Internal LoadBalancer subsetting on this cluster.
class ILBSubsettingConfig2 {
  /// Enables l4 ILB subsetting for this cluster
  final bool? enabled;

  ILBSubsettingConfig2({
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

  factory ILBSubsettingConfig2.fromMap(Map<String, dynamic> map) {
    return ILBSubsettingConfig2(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
