// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SeedNode {
  /// IP address of this seed node.
  final pulumi.Input<String>? ipAddress;

  /// Creates a new [SeedNode].
  /// [ipAddress] IP address of this seed node.
  SeedNode({this.ipAddress});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ipAddress': ?ipAddress};
  }

  factory SeedNode.fromMap(Map<String, dynamic> map) {
    return SeedNode(
      ipAddress: (() {
        final guardedValue = map['ipAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
