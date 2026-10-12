// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VpcEncryptionControlResourceExclusionsElasticFileSystem {
  /// Encryption enforcement state for peered VPCs.
  final pulumi.Input<String> state;
  /// Message providing additional information about the encryption enforcement state.
  final pulumi.Input<String> stateMessage;

  /// Creates a new [VpcEncryptionControlResourceExclusionsElasticFileSystem].
  /// [state] Encryption enforcement state for peered VPCs.
  /// [stateMessage] Message providing additional information about the encryption enforcement state.
  const VpcEncryptionControlResourceExclusionsElasticFileSystem({
    required this.state,
    required this.stateMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
      'stateMessage': stateMessage,
    };
  }

  factory VpcEncryptionControlResourceExclusionsElasticFileSystem.fromMap(Map<String, dynamic> map) {
    return VpcEncryptionControlResourceExclusionsElasticFileSystem(
      state: pulumi.Input.fromValue(map['state'] as String),
      stateMessage: pulumi.Input.fromValue(map['stateMessage'] as String),
    );
  }
}
