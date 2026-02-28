// ignore_for_file: unused_element, unnecessary_cast

import 'workload_identity_pool_provider_x509_trust_store.dart';

class WorkloadIdentityPoolProviderX509 {
  /// A Trust store, use this trust store as a wrapper to config the trust
  /// anchor and optional intermediate cas to help build the trust chain for
  /// the incoming end entity certificate. Follow the x509 guidelines to
  /// define those PEM encoded certs. Only 1 trust store is currently
  /// supported.
  final WorkloadIdentityPoolProviderX509TrustStore trustStore;

  /// Creates a new [WorkloadIdentityPoolProviderX509].
  /// [trustStore] A Trust store, use this trust store as a wrapper to config the trust
  WorkloadIdentityPoolProviderX509({
    required this.trustStore,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['trustStore'] = trustStore.toMap();
    return map;
  }

  factory WorkloadIdentityPoolProviderX509.fromMap(Map<String, dynamic> map) {
    return WorkloadIdentityPoolProviderX509(
      trustStore: WorkloadIdentityPoolProviderX509TrustStore.fromMap(
          (map['trustStore'] as Map).cast<String, dynamic>()),
    );
  }
}
