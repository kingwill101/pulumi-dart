import 'package:pulumi/pulumi.dart' as pulumi;

/// The support plan for the Managed Cluster. If unspecified, the default is 'KubernetesOfficial'.
enum KubernetesSupportPlan implements pulumi.PulumiEnum<String> {
  valueKubernetesOfficial("KubernetesOfficial"),
  valueAKSLongTermSupport("AKSLongTermSupport");

  const KubernetesSupportPlan(this.wireValue);
  @override
  final String wireValue;

  static KubernetesSupportPlan fromValue(String value) {
    for (final item in KubernetesSupportPlan.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KubernetesSupportPlan value: $value');
  }
}
