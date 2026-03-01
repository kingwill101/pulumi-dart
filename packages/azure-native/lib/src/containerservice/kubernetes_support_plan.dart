/// The support plan for the Managed Cluster. If unspecified, the default is 'KubernetesOfficial'.
enum KubernetesSupportPlan {
  valueKubernetesOfficial("KubernetesOfficial"),
  valueAKSLongTermSupport("AKSLongTermSupport");

  const KubernetesSupportPlan(this.value);
  final String value;

  static KubernetesSupportPlan fromValue(String value) {
    for (final item in KubernetesSupportPlan.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KubernetesSupportPlan value: $value');
  }
}

