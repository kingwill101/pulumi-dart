// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRemoteWritesRemoteWrite {
  /// The ID of the Prometheus instance.
  final pulumi.Input<String> clusterId;
  /// The ID of the Remote Write. It formats as `<cluster_id>:<remote_write_name>`.
  final pulumi.Input<String> id;
  /// The name of the Remote Write configuration item.
  final pulumi.Input<String> remoteWriteName;
  /// The details of the Remote Write configuration item. The value is in the YAML format.
  final pulumi.Input<String> remoteWriteYaml;

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
      clusterId: (map['clusterId'] as String).input(),
      id: (map['id'] as String).input(),
      remoteWriteName: (map['remoteWriteName'] as String).input(),
      remoteWriteYaml: (map['remoteWriteYaml'] as String).input(),
    );
  }
}

