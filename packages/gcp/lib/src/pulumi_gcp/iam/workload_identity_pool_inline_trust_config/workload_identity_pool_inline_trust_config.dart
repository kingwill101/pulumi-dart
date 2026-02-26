// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../workload_identity_pool_inline_trust_config_additional_trust_bundle/workload_identity_pool_inline_trust_config_additional_trust_bundle.dart';

class WorkloadIdentityPoolInlineTrustConfig {
  /// Maps specific trust domains (e.g., "example.com") to their corresponding `TrustStore`
  /// objects, which contain the trusted root certificates for that domain. There can be a
  /// maximum of <span pulumi-lang-nodejs="`10`" pulumi-lang-dotnet="`10`" pulumi-lang-go="`10`" pulumi-lang-python="`10`" pulumi-lang-yaml="`10`" pulumi-lang-java="`10`">`10`</span> trust domain entries in this map.
  /// Note that a trust domain automatically trusts itself and don't need to be specified here.
  /// If however, this `WorkloadIdentityPool`'s trust domain contains any trust anchors in the
  /// <span pulumi-lang-nodejs="`additionalTrustBundles`" pulumi-lang-dotnet="`AdditionalTrustBundles`" pulumi-lang-go="`additionalTrustBundles`" pulumi-lang-python="`additional_trust_bundles`" pulumi-lang-yaml="`additionalTrustBundles`" pulumi-lang-java="`additionalTrustBundles`">`additional_trust_bundles`</span> map, those trust anchors will be *appended to* the Trust Bundle
  /// automatically derived from your `InlineCertificateIssuanceConfig`'s <span pulumi-lang-nodejs="`caPools`" pulumi-lang-dotnet="`CaPools`" pulumi-lang-go="`caPools`" pulumi-lang-python="`ca_pools`" pulumi-lang-yaml="`caPools`" pulumi-lang-java="`caPools`">`ca_pools`</span>.
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
