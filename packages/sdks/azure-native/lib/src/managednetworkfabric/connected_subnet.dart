// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Connected Subnet properties.
class ConnectedSubnet {
  /// Switch configuration description.
  final pulumi.Input<String>? annotation;
  /// Prefix of the Connected Subnet.
  final pulumi.Input<String> prefix;

  /// Creates a new [ConnectedSubnet].
  /// [annotation] Switch configuration description.
  /// [prefix] Prefix of the Connected Subnet.
  const ConnectedSubnet({
    this.annotation,
    required this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotation': ?annotation,
      'prefix': prefix,
    };
  }

  factory ConnectedSubnet.fromMap(Map<String, dynamic> map) {
    return ConnectedSubnet(
      annotation: (() { final guardedValue = map['annotation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefix: pulumi.Input.fromValue(map['prefix'] as String),
    );
  }
}
