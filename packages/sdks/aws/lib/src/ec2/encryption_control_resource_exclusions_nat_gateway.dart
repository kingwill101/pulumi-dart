// ignore_for_file: unused_element, unnecessary_cast


class EncryptionControlResourceExclusionsNatGateway {
  /// The current state of the VPC Encryption Control.
  final String state;
  /// A message providing additional information about the state of the VPC Encryption Control.
  final String stateMessage;

  /// Creates a new [EncryptionControlResourceExclusionsNatGateway].
  /// [state] The current state of the VPC Encryption Control.
  /// [stateMessage] A message providing additional information about the state of the VPC Encryption Control.
  EncryptionControlResourceExclusionsNatGateway({
    required this.state,
    required this.stateMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
      'stateMessage': stateMessage,
    };
  }

  factory EncryptionControlResourceExclusionsNatGateway.fromMap(Map<String, dynamic> map) {
    return EncryptionControlResourceExclusionsNatGateway(
      state: map['state'] as String,
      stateMessage: map['stateMessage'] as String,
    );
  }
}

