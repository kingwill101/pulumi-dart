// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Keys for endpoint authentication.
class EndpointAuthKeys {
  /// The primary key.
  final pulumi.Input<String?>? primaryKey;
  /// The secondary key.
  final pulumi.Input<String?>? secondaryKey;

  /// Creates a new [EndpointAuthKeys].
  /// [primaryKey] The primary key.
  /// [secondaryKey] The secondary key.
  const EndpointAuthKeys({
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
      primaryKey: (() { final guardedValue = map['primaryKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryKey: (() { final guardedValue = map['secondaryKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
