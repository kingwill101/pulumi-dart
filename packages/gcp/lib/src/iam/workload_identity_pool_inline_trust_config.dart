// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_identity_pool_inline_trust_config_additional_trust_bundle.dart';

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

  /// Creates a new [WorkloadIdentityPoolInlineTrustConfig].
  /// [additionalTrustBundles] Maps specific trust domains (e.g., "example.com") to their corresponding `TrustStore`
  WorkloadIdentityPoolInlineTrustConfig({this.additionalTrustBundles});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalTrustBundles': ?additionalTrustBundles == null
          ? null
          : pulumi.Input.encodeList<
              WorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundle,
              Map<String, dynamic>
            >(additionalTrustBundles!, (value) => value.toMap()),
    };
  }

  factory WorkloadIdentityPoolInlineTrustConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return WorkloadIdentityPoolInlineTrustConfig(
      additionalTrustBundles: map['additionalTrustBundles'] == null
          ? null
          : pulumi.Input.decodeList<
              WorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundle
            >(
              map['additionalTrustBundles'],
              (value) =>
                  WorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundle.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
