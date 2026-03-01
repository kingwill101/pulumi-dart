// ignore_for_file: unused_element, unnecessary_cast

class ClusterEncryptionInfoEncryptionInTransit {
  /// Encryption setting for data in transit between clients and brokers. Valid values: `TLS`, `TLS_PLAINTEXT`, and `PLAINTEXT`. Default value is `TLS`.
  final String? clientBroker;

  /// Whether data communication among broker nodes is encrypted. Default value: `true`.
  final bool? inCluster;

  /// Creates a new [ClusterEncryptionInfoEncryptionInTransit].
  /// [clientBroker] Encryption setting for data in transit between clients and brokers. Valid values: `TLS`, `TLS_PLAINTEXT`, and `PLAINTEXT`. Default value is `TLS`.
  /// [inCluster] Whether data communication among broker nodes is encrypted. Default value: `true`.
  ClusterEncryptionInfoEncryptionInTransit({this.clientBroker, this.inCluster});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientBroker': ?clientBroker,
      'inCluster': ?inCluster,
    };
  }

  factory ClusterEncryptionInfoEncryptionInTransit.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterEncryptionInfoEncryptionInTransit(
      clientBroker: map['clientBroker'] == null
          ? null
          : map['clientBroker'] as String,
      inCluster: map['inCluster'] == null ? null : map['inCluster'] as bool,
    );
  }
}
