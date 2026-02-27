// ignore_for_file: unused_element, unnecessary_cast

class ClusterEncryptionInfoEncryptionInTransit {
  /// Encryption setting for data in transit between clients and brokers. Valid values: `TLS`, `TLS_PLAINTEXT`, and `PLAINTEXT`. Default value is `TLS`.
  final String? clientBroker;

  /// Whether data communication among broker nodes is encrypted. Default value: `true`.
  final bool? inCluster;

  ClusterEncryptionInfoEncryptionInTransit({
    this.clientBroker,
    this.inCluster,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clientBrokerValue = clientBroker;
    if (clientBrokerValue != null) {
      map['clientBroker'] = clientBrokerValue;
    }
    final inClusterValue = inCluster;
    if (inClusterValue != null) {
      map['inCluster'] = inClusterValue;
    }
    return map;
  }

  factory ClusterEncryptionInfoEncryptionInTransit.fromMap(
      Map<String, dynamic> map) {
    return ClusterEncryptionInfoEncryptionInTransit(
      clientBroker:
          map['clientBroker'] == null ? null : map['clientBroker'] as String,
      inCluster: map['inCluster'] == null ? null : map['inCluster'] as bool,
    );
  }
}
