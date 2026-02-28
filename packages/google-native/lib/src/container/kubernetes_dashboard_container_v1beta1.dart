// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the Kubernetes Dashboard.
class KubernetesDashboardContainerV1beta1 {
  /// Whether the Kubernetes Dashboard is enabled for this cluster.
  final bool? disabled;

  /// Creates a new [KubernetesDashboardContainerV1beta1].
  /// [disabled] Whether the Kubernetes Dashboard is enabled for this cluster.
  KubernetesDashboardContainerV1beta1({
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

  factory KubernetesDashboardContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return KubernetesDashboardContainerV1beta1(
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
    );
  }
}
