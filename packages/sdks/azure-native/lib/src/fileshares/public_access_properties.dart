// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of properties for control public access.
class PublicAccessProperties {
  /// The allowed set of subnets when access is restricted.
  final pulumi.Input<List<String>>? allowedSubnets;

  /// Creates a new [PublicAccessProperties].
  /// [allowedSubnets] The allowed set of subnets when access is restricted.
  const PublicAccessProperties({
    this.allowedSubnets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedSubnets': ?allowedSubnets,
    };
  }

  factory PublicAccessProperties.fromMap(Map<String, dynamic> map) {
    return PublicAccessProperties(
      allowedSubnets: (() { final guardedValue = map['allowedSubnets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
