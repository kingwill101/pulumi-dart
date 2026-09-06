// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Ipv4PrefixSpecification
class Ipv4PrefixSpecification {
  /// Property ipv4Prefix
  final pulumi.Input<String?>? ipv4Prefix;

  /// Creates a new [Ipv4PrefixSpecification].
  /// [ipv4Prefix] Property ipv4Prefix
  const Ipv4PrefixSpecification({
    this.ipv4Prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4Prefix': ?ipv4Prefix,
    };
  }

  factory Ipv4PrefixSpecification.fromMap(Map<String, dynamic> map) {
    return Ipv4PrefixSpecification(
      ipv4Prefix: (() { final guardedValue = map['ipv4Prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
