// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of the delegation.
class DelegationProperties {
  /// The service name to which the NVA is delegated.
  final pulumi.Input<String?>? serviceName;

  /// Creates a new [DelegationProperties].
  /// [serviceName] The service name to which the NVA is delegated.
  const DelegationProperties({
    this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceName': ?serviceName,
    };
  }

  factory DelegationProperties.fromMap(Map<String, dynamic> map) {
    return DelegationProperties(
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
