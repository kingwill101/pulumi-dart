// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Sku.
class Sku {
  /// The display name of the sku.
  final pulumi.Input<String?>? displayName;
  /// The sku family.
  final pulumi.Input<String?>? family;
  /// The sku name.
  final pulumi.Input<dynamic> name;

  /// Creates a new [Sku].
  /// [displayName] The display name of the sku.
  /// [family] The sku family.
  /// [name] The sku name.
  const Sku({
    this.displayName,
    this.family,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'family': ?family,
      'name': name,
    };
  }

  factory Sku.fromMap(Map<String, dynamic> map) {
    return Sku(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      family: (() { final guardedValue = map['family']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name']),
    );
  }
}
