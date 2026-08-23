// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Ipv4PrefixSpecification
class Ipv4PrefixSpecificationResponse {
  /// Property ipv4Prefix
  final pulumi.Input<String>? ipv4Prefix;

  /// Creates a new [Ipv4PrefixSpecificationResponse].
  /// [ipv4Prefix] Property ipv4Prefix
  const Ipv4PrefixSpecificationResponse({
    this.ipv4Prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4Prefix': ?ipv4Prefix,
    };
  }

  factory Ipv4PrefixSpecificationResponse.fromMap(Map<String, dynamic> map) {
    return Ipv4PrefixSpecificationResponse(
      ipv4Prefix: (() { final guardedValue = map['ipv4Prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
