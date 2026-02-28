// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the Kubernetes Dashboard.
class KubernetesDashboardResponse {
  /// Whether the Kubernetes Dashboard is enabled for this cluster.
  final bool disabled;

  /// Creates a new [KubernetesDashboardResponse].
  /// [disabled] Whether the Kubernetes Dashboard is enabled for this cluster.
  KubernetesDashboardResponse({
    required this.disabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disabled'] = disabled;
    return map;
  }

  factory KubernetesDashboardResponse.fromMap(Map<String, dynamic> map) {
    return KubernetesDashboardResponse(
      disabled: map['disabled'] as bool,
    );
  }
}
