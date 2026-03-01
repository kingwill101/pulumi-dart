// ignore_for_file: unused_element, unnecessary_cast


/// Properties of the delegation.
class DelegationPropertiesResponse {
  /// The current provisioning state.
  final String provisioningState;
  /// The service name to which the NVA is delegated.
  final String? serviceName;

  /// Creates a new [DelegationPropertiesResponse].
  /// [provisioningState] The current provisioning state.
  /// [serviceName] The service name to which the NVA is delegated.
  DelegationPropertiesResponse({
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
      provisioningState: map['provisioningState'] as String,
      serviceName: map['serviceName'] == null ? null : map['serviceName'] as String,
    );
  }
}

