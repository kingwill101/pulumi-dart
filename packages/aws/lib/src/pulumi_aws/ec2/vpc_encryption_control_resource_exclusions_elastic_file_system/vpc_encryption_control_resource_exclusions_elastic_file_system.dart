// ignore_for_file: unused_element, unnecessary_cast

class VpcEncryptionControlResourceExclusionsElasticFileSystem {
  /// The current state of the VPC Encryption Control.
  final String state;

  /// A message providing additional information about the state of the VPC Encryption Control.
  final String stateMessage;

  VpcEncryptionControlResourceExclusionsElasticFileSystem({
    required this.state,
    required this.stateMessage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['state'] = state;
    map['stateMessage'] = stateMessage;
    return map;
  }

  factory VpcEncryptionControlResourceExclusionsElasticFileSystem.fromMap(
      Map<String, dynamic> map) {
    return VpcEncryptionControlResourceExclusionsElasticFileSystem(
      state: map['state'] as String,
      stateMessage: map['stateMessage'] as String,
    );
  }
}
