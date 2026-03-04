// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Ipv6PrefixSpecification
class Ipv6PrefixSpecificationResponse {
  /// Property ipv6Prefix
  final pulumi.Input<String>? ipv6Prefix;

  /// Creates a new [Ipv6PrefixSpecificationResponse].
  /// [ipv6Prefix] Property ipv6Prefix
  Ipv6PrefixSpecificationResponse({this.ipv6Prefix});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ipv6Prefix': ?ipv6Prefix};
  }

  factory Ipv6PrefixSpecificationResponse.fromMap(Map<String, dynamic> map) {
    return Ipv6PrefixSpecificationResponse(
      ipv6Prefix: (() {
        final guardedValue = map['ipv6Prefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
