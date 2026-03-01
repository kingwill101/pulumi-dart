// ignore_for_file: unused_element, unnecessary_cast


class GetRemoteWritesRemoteWrite {
  /// The ID of the Prometheus instance.
  final String clusterId;
  /// The ID of the Remote Write. It formats as `<cluster_id>:<remote_write_name>`.
  final String id;
  /// The name of the Remote Write configuration item.
  final String remoteWriteName;
  /// The details of the Remote Write configuration item. The value is in the YAML format.
  final String remoteWriteYaml;

  /// Creates a new [GetRemoteWritesRemoteWrite].
  /// [clusterId] The ID of the Prometheus instance.
  /// [id] The ID of the Remote Write. It formats as `<cluster_id>:<remote_write_name>`.
  /// [remoteWriteName] The name of the Remote Write configuration item.
  /// [remoteWriteYaml] The details of the Remote Write configuration item. The value is in the YAML format.
  GetRemoteWritesRemoteWrite({
    required this.clusterId,
    required this.id,
    required this.remoteWriteName,
    required this.remoteWriteYaml,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'id': id,
      'remoteWriteName': remoteWriteName,
      'remoteWriteYaml': remoteWriteYaml,
    };
  }

  factory GetRemoteWritesRemoteWrite.fromMap(Map<String, dynamic> map) {
    return GetRemoteWritesRemoteWrite(
      clusterId: map['clusterId'] as String,
      id: map['id'] as String,
      remoteWriteName: map['remoteWriteName'] as String,
      remoteWriteYaml: map['remoteWriteYaml'] as String,
    );
  }
}

