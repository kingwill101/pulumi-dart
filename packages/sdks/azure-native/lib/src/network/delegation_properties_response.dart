// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of the delegation.
class DelegationPropertiesResponse {
  /// The current provisioning state.
  final pulumi.Input<String> provisioningState;
  /// The service name to which the NVA is delegated.
  final pulumi.Input<String>? serviceName;

  /// Creates a new [DelegationPropertiesResponse].
  /// [provisioningState] The current provisioning state.
  /// [serviceName] The service name to which the NVA is delegated.
  const DelegationPropertiesResponse({
    required this.provisioningState,
    this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': provisioningState,
      'serviceName': ?serviceName,
    };
  }

  factory DelegationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DelegationPropertiesResponse(
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

