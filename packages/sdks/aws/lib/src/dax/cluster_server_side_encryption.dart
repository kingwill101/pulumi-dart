// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterServerSideEncryption {
  /// Whether to enable encryption at rest. Defaults to `false`.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ClusterServerSideEncryption].
  /// [enabled] Whether to enable encryption at rest. Defaults to `false`.
  const ClusterServerSideEncryption({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ClusterServerSideEncryption.fromMap(Map<String, dynamic> map) {
    return ClusterServerSideEncryption(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
