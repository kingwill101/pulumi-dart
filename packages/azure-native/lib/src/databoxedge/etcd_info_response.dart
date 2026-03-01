// ignore_for_file: unused_element, unnecessary_cast


/// Etcd configuration
class EtcdInfoResponse {
  /// Etcd type
  final String type;
  /// Etcd version
  final String version;

  /// Creates a new [EtcdInfoResponse].
  /// [type] Etcd type
  /// [version] Etcd version
  EtcdInfoResponse({
    required this.type,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'version': version,
    };
  }

  factory EtcdInfoResponse.fromMap(Map<String, dynamic> map) {
    return EtcdInfoResponse(
      type: map['type'] as String,
      version: map['version'] as String,
    );
  }
}

