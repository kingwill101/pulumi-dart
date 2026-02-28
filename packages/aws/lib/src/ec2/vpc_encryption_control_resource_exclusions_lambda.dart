// ignore_for_file: unused_element, unnecessary_cast

class VpcEncryptionControlResourceExclusionsLambda {
  /// The current state of the VPC Encryption Control.
  final String state;

  /// A message providing additional information about the state of the VPC Encryption Control.
  final String stateMessage;

  /// Creates a new [VpcEncryptionControlResourceExclusionsLambda].
  /// [state] The current state of the VPC Encryption Control.
  /// [stateMessage] A message providing additional information about the state of the VPC Encryption Control.
  VpcEncryptionControlResourceExclusionsLambda({
    required this.state,
    required this.stateMessage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['state'] = state;
    map['stateMessage'] = stateMessage;
    return map;
  }

  factory VpcEncryptionControlResourceExclusionsLambda.fromMap(
      Map<String, dynamic> map) {
    return VpcEncryptionControlResourceExclusionsLambda(
      state: map['state'] as String,
      stateMessage: map['stateMessage'] as String,
    );
  }
}
