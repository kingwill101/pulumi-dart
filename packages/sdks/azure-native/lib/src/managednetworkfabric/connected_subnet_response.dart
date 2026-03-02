// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Connected Subnet properties.
class ConnectedSubnetResponse {
  /// Switch configuration description.
  final pulumi.Input<String>? annotation;
  /// Prefix of the Connected Subnet.
  final pulumi.Input<String> prefix;

  /// Creates a new [ConnectedSubnetResponse].
  /// [annotation] Switch configuration description.
  /// [prefix] Prefix of the Connected Subnet.
  ConnectedSubnetResponse({
    this.annotation,
    required this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotation': ?annotation,
      'prefix': prefix,
    };
  }

  factory ConnectedSubnetResponse.fromMap(Map<String, dynamic> map) {
    return ConnectedSubnetResponse(
      annotation: map['annotation'] == null ? null : (map['annotation']! as String).input(),
      prefix: (map['prefix'] as String).input(),
    );
  }
}

