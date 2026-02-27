// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../workload_identity_pool_inline_trust_config_additional_trust_bundle/workload_identity_pool_inline_trust_config_additional_trust_bundle.dart';

class WorkloadIdentityPoolInlineTrustConfig {
  /// Maps specific trust domains (e.g., "example.com") to their corresponding `TrustStore`
  /// objects, which contain the trusted root certificates for that domain. There can be a
  /// maximum of `10` trust domain entries in this map.
  /// Note that a trust domain automatically trusts itself and don't need to be specified here.
  /// If however, this `WorkloadIdentityPool`'s trust domain contains any trust anchors in the
  /// `additional_trust_bundles` map, those trust anchors will be *appended to* the Trust Bundle
  /// automatically derived from your `InlineCertificateIssuanceConfig`'s `ca_pools`.
  /// Structure is documented below.
  final List<WorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundle>?
      additionalTrustBundles;

  WorkloadIdentityPoolInlineTrustConfig({
    this.additionalTrustBundles,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalTrustBundlesValue = additionalTrustBundles;
    if (additionalTrustBundlesValue != null) {
      map['additionalTrustBundles'] = Input.encodeList<
              WorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundle,
              Map<String, dynamic>>(
          additionalTrustBundlesValue, (value) => value.toMap());
    }
    return map;
  }

  factory WorkloadIdentityPoolInlineTrustConfig.fromMap(
      Map<String, dynamic> map) {
    return WorkloadIdentityPoolInlineTrustConfig(
      additionalTrustBundles: map['additionalTrustBundles'] == null
          ? null
          : Input.decodeList<
                  WorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundle>(
              map['additionalTrustBundles'],
              (value) =>
                  WorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundle
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
