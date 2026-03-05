// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Etcd configuration
class EtcdInfoResponse {
  /// Etcd type
  final pulumi.Input<String> type;
  /// Etcd version
  final pulumi.Input<String> version;

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
      type: pulumi.Input.fromValue(map['type'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

