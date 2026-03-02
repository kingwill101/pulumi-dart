// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Keys for endpoint authentication.
class EndpointAuthKeys {
  /// The primary key.
  final pulumi.Input<String>? primaryKey;
  /// The secondary key.
  final pulumi.Input<String>? secondaryKey;

  /// Creates a new [EndpointAuthKeys].
  /// [primaryKey] The primary key.
  /// [secondaryKey] The secondary key.
  EndpointAuthKeys({
    this.primaryKey,
    this.secondaryKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryKey': ?primaryKey,
      'secondaryKey': ?secondaryKey,
    };
  }

  factory EndpointAuthKeys.fromMap(Map<String, dynamic> map) {
    return EndpointAuthKeys(
      primaryKey: map['primaryKey'] == null ? null : (map['primaryKey']! as String).input(),
      secondaryKey: map['secondaryKey'] == null ? null : (map['secondaryKey']! as String).input(),
    );
  }
}

