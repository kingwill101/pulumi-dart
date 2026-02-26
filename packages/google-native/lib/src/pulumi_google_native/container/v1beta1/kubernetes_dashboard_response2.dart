// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the Kubernetes Dashboard.
class KubernetesDashboardResponse2 {
  /// Whether the Kubernetes Dashboard is enabled for this cluster.
  final bool disabled;

  KubernetesDashboardResponse2({
    required this.disabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disabled'] = disabled;
    return map;
  }

  factory KubernetesDashboardResponse2.fromMap(Map<String, dynamic> map) {
    return KubernetesDashboardResponse2(
      disabled: map['disabled'] as bool,
    );
  }
}
