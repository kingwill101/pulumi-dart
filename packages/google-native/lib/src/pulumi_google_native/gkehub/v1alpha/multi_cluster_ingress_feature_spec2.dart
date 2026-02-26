// ignore_for_file: unused_element, unnecessary_cast

import 'multi_cluster_ingress_feature_spec_billing.dart';

/// **Multi-cluster Ingress**: The configuration for the MultiClusterIngress feature.
class MultiClusterIngressFeatureSpec2 {
  /// Deprecated: This field will be ignored and should not be set. Customer's billing structure.
  final MultiClusterIngressFeatureSpecBilling? billing;

  /// Fully-qualified Membership name which hosts the MultiClusterIngress CRD. Example: `projects/foo-proj/locations/global/memberships/bar`
  final String? configMembership;

  MultiClusterIngressFeatureSpec2({
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

  factory MultiClusterIngressFeatureSpec2.fromMap(Map<String, dynamic> map) {
    return MultiClusterIngressFeatureSpec2(
      billing: map['billing'] == null
          ? null
          : MultiClusterIngressFeatureSpecBilling.fromValue(
              map['billing'] as String),
      configMembership: map['configMembership'] == null
          ? null
          : map['configMembership'] as String,
    );
  }
}
