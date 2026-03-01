// ignore_for_file: unused_element, unnecessary_cast


/// The security domain properties of the managed hsm.
class ManagedHSMSecurityDomainPropertiesResponse {
  /// Activation Status
  final String activationStatus;
  /// Activation Status Message.
  final String activationStatusMessage;

  /// Creates a new [ManagedHSMSecurityDomainPropertiesResponse].
  /// [activationStatus] Activation Status
  /// [activationStatusMessage] Activation Status Message.
  ManagedHSMSecurityDomainPropertiesResponse({
    required this.activationStatus,
    required this.activationStatusMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationStatus': activationStatus,
      'activationStatusMessage': activationStatusMessage,
    };
  }

  factory ManagedHSMSecurityDomainPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ManagedHSMSecurityDomainPropertiesResponse(
      activationStatus: map['activationStatus'] as String,
      activationStatusMessage: map['activationStatusMessage'] as String,
    );
  }
}

