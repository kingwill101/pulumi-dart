// ignore_for_file: unused_element, unnecessary_cast

class ClusterTlsConfigTrustConfigCasConfig {
  /// The name of the CA pool to pull CA certificates from. The CA pool does not need to be in the same project or location as the Kafka cluster. Must be in the format `projects/PROJECT_ID/locations/LOCATION/caPools/CA_POOL_ID.
  final String caPool;

  /// Creates a new [ClusterTlsConfigTrustConfigCasConfig].
  /// [caPool] The name of the CA pool to pull CA certificates from. The CA pool does not need to be in the same project or location as the Kafka cluster. Must be in the format `projects/PROJECT_ID/locations/LOCATION/caPools/CA_POOL_ID.
  ClusterTlsConfigTrustConfigCasConfig({
    required this.caPool,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['caPool'] = caPool;
    return map;
  }

  factory ClusterTlsConfigTrustConfigCasConfig.fromMap(
      Map<String, dynamic> map) {
    return ClusterTlsConfigTrustConfigCasConfig(
      caPool: map['caPool'] as String,
    );
  }
}
