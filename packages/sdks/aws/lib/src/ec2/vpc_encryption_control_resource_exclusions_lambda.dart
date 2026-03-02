// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VpcEncryptionControlResourceExclusionsLambda {
  /// The current state of the VPC Encryption Control.
  final pulumi.Input<String> state;
  /// A message providing additional information about the state of the VPC Encryption Control.
  final pulumi.Input<String> stateMessage;

  /// Creates a new [VpcEncryptionControlResourceExclusionsLambda].
  /// [state] The current state of the VPC Encryption Control.
  /// [stateMessage] A message providing additional information about the state of the VPC Encryption Control.
  VpcEncryptionControlResourceExclusionsLambda({
    required this.state,
    required this.stateMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
      'stateMessage': stateMessage,
    };
  }

  factory VpcEncryptionControlResourceExclusionsLambda.fromMap(Map<String, dynamic> map) {
    return VpcEncryptionControlResourceExclusionsLambda(
      state: (map['state'] as String).input(),
      stateMessage: (map['stateMessage'] as String).input(),
    );
  }
}

