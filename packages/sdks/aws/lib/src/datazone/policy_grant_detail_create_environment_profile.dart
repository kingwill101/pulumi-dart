// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyGrantDetailCreateEnvironmentProfile {
  /// Identifier of the domain unit.
  final pulumi.Input<String?>? domainUnitId;

  /// Creates a new [PolicyGrantDetailCreateEnvironmentProfile].
  /// [domainUnitId] Identifier of the domain unit.
  const PolicyGrantDetailCreateEnvironmentProfile({
    this.domainUnitId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainUnitId': ?domainUnitId,
    };
  }

  factory PolicyGrantDetailCreateEnvironmentProfile.fromMap(Map<String, dynamic> map) {
    return PolicyGrantDetailCreateEnvironmentProfile(
      domainUnitId: (() { final guardedValue = map['domainUnitId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
