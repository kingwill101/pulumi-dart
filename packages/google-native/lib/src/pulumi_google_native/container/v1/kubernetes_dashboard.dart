// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the Kubernetes Dashboard.
class KubernetesDashboard {
  /// Whether the Kubernetes Dashboard is enabled for this cluster.
  final bool? disabled;

  KubernetesDashboard({
    this.disabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    return map;
  }

  factory KubernetesDashboard.fromMap(Map<String, dynamic> map) {
    return KubernetesDashboard(
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
    );
  }
}
