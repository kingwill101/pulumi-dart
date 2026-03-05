// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SeedNodeResponse {
  /// IP address of this seed node.
  final pulumi.Input<String>? ipAddress;

  /// Creates a new [SeedNodeResponse].
  /// [ipAddress] IP address of this seed node.
  SeedNodeResponse({
    this.ipAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ?ipAddress,
    };
  }

  factory SeedNodeResponse.fromMap(Map<String, dynamic> map) {
    return SeedNodeResponse(
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

