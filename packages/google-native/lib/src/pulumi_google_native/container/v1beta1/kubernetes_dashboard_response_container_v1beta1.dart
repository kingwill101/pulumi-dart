// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the Kubernetes Dashboard.
class KubernetesDashboardResponseContainerV1beta1 {
  /// Whether the Kubernetes Dashboard is enabled for this cluster.
  final bool disabled;

  KubernetesDashboardResponseContainerV1beta1({
    required this.disabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disabled'] = disabled;
    return map;
  }

  factory KubernetesDashboardResponseContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return KubernetesDashboardResponseContainerV1beta1(
      disabled: map['disabled'] as bool,
    );
  }
}
