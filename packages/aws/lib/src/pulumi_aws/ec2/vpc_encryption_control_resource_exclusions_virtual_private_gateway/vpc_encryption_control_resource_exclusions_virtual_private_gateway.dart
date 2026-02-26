// ignore_for_file: unused_element, unnecessary_cast

class VpcEncryptionControlResourceExclusionsVirtualPrivateGateway {
  /// The current state of the VPC Encryption Control.
  final String state;

  /// A message providing additional information about the state of the VPC Encryption Control.
  final String stateMessage;

  VpcEncryptionControlResourceExclusionsVirtualPrivateGateway({
    required this.state,
    required this.stateMessage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['state'] = state;
    map['stateMessage'] = stateMessage;
    return map;
  }

  factory VpcEncryptionControlResourceExclusionsVirtualPrivateGateway.fromMap(
      Map<String, dynamic> map) {
    return VpcEncryptionControlResourceExclusionsVirtualPrivateGateway(
      state: map['state'] as String,
      stateMessage: map['stateMessage'] as String,
    );
  }
}
