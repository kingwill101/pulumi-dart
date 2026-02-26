// ignore_for_file: unused_element, unnecessary_cast

import 'multi_cluster_ingress_feature_spec_billing2.dart';

/// **Multi-cluster Ingress**: The configuration for the MultiClusterIngress feature.
class MultiClusterIngressFeatureSpec3 {
  /// Deprecated: This field will be ignored and should not be set. Customer's billing structure.
  final MultiClusterIngressFeatureSpecBilling2? billing;

  /// Fully-qualified Membership name which hosts the MultiClusterIngress CRD. Example: `projects/foo-proj/locations/global/memberships/bar`
  final String? configMembership;

  MultiClusterIngressFeatureSpec3({
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

  factory MultiClusterIngressFeatureSpec3.fromMap(Map<String, dynamic> map) {
    return MultiClusterIngressFeatureSpec3(
      billing: map['billing'] == null
          ? null
          : MultiClusterIngressFeatureSpecBilling2.fromValue(
              map['billing'] as String),
      configMembership: map['configMembership'] == null
          ? null
          : map['configMembership'] as String,
    );
  }
}
