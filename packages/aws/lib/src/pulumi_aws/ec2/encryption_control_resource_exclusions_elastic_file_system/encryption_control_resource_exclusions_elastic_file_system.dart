// ignore_for_file: unused_element, unnecessary_cast

class EncryptionControlResourceExclusionsElasticFileSystem {
  /// The current state of the VPC Encryption Control.
  final String state;

  /// A message providing additional information about the state of the VPC Encryption Control.
  final String stateMessage;

  EncryptionControlResourceExclusionsElasticFileSystem({
    required this.state,
    required this.stateMessage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['state'] = state;
    map['stateMessage'] = stateMessage;
    return map;
  }

  factory EncryptionControlResourceExclusionsElasticFileSystem.fromMap(
      Map<String, dynamic> map) {
    return EncryptionControlResourceExclusionsElasticFileSystem(
      state: map['state'] as String,
      stateMessage: map['stateMessage'] as String,
    );
  }
}
