// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_workload_identity_pool_inline_trust_config_additional_trust_bundle/get_workload_identity_pool_inline_trust_config_additional_trust_bundle.dart';

class GetWorkloadIdentityPoolInlineTrustConfig {
  /// Maps specific trust domains (e.g., "example.com") to their corresponding 'TrustStore'
  /// objects, which contain the trusted root certificates for that domain. There can be a
  /// maximum of '10' trust domain entries in this map.
  ///
  /// Note that a trust domain automatically trusts itself and don't need to be specified here.
  /// If however, this 'WorkloadIdentityPool''s trust domain contains any trust anchors in the
  /// 'additional_trust_bundles' map, those trust anchors will be *appended to* the Trust Bundle
  /// automatically derived from your 'InlineCertificateIssuanceConfig''s 'ca_pools'.
  final List<GetWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundle>
      additionalTrustBundles;

  GetWorkloadIdentityPoolInlineTrustConfig({
    required this.additionalTrustBundles,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['additionalTrustBundles'] = Input.encodeList<
        GetWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundle,
        Map<String, dynamic>>(additionalTrustBundles, (value) => value.toMap());
    return map;
  }

  factory GetWorkloadIdentityPoolInlineTrustConfig.fromMap(
      Map<String, dynamic> map) {
    return GetWorkloadIdentityPoolInlineTrustConfig(
      additionalTrustBundles: Input.decodeList<
              GetWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundle>(
          map['additionalTrustBundles'],
          (value) =>
              GetWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundle
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
