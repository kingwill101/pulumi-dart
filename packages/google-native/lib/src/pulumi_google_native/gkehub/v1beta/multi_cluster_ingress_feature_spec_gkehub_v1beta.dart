// ignore_for_file: unused_element, unnecessary_cast

import 'multi_cluster_ingress_feature_spec_billing_gkehub_v1beta.dart';

/// **Multi-cluster Ingress**: The configuration for the MultiClusterIngress feature.
class MultiClusterIngressFeatureSpecGkehubV1beta {
  /// Deprecated: This field will be ignored and should not be set. Customer's billing structure.
  final MultiClusterIngressFeatureSpecBillingGkehubV1beta? billing;

  /// Fully-qualified Membership name which hosts the MultiClusterIngress CRD. Example: `projects/foo-proj/locations/global/memberships/bar`
  final String? configMembership;

  MultiClusterIngressFeatureSpecGkehubV1beta({
    this.billing,
    this.configMembership,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final billingValue = billing;
    if (billingValue != null) {
      map['billing'] = billingValue.value;
    }
    final configMembershipValue = configMembership;
    if (configMembershipValue != null) {
      map['configMembership'] = configMembershipValue;
    }
    return map;
  }

  factory MultiClusterIngressFeatureSpecGkehubV1beta.fromMap(
      Map<String, dynamic> map) {
    return MultiClusterIngressFeatureSpecGkehubV1beta(
      billing: map['billing'] == null
          ? null
          : MultiClusterIngressFeatureSpecBillingGkehubV1beta.fromValue(
              map['billing'] as String),
      configMembership: map['configMembership'] == null
          ? null
          : map['configMembership'] as String,
    );
  }
}
