// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VpcEncryptionControlResourceExclusionsEgressOnlyInternetGateway {
  /// The current state of the VPC Encryption Control.
  final pulumi.Input<String> state;

  /// A message providing additional information about the state of the VPC Encryption Control.
  final pulumi.Input<String> stateMessage;

  /// Creates a new [VpcEncryptionControlResourceExclusionsEgressOnlyInternetGateway].
  /// [state] The current state of the VPC Encryption Control.
  /// [stateMessage] A message providing additional information about the state of the VPC Encryption Control.
  VpcEncryptionControlResourceExclusionsEgressOnlyInternetGateway({
    required this.state,
    required this.stateMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'state': state, 'stateMessage': stateMessage};
  }

  factory VpcEncryptionControlResourceExclusionsEgressOnlyInternetGateway.fromMap(
    Map<String, dynamic> map,
  ) {
    return VpcEncryptionControlResourceExclusionsEgressOnlyInternetGateway(
      state: pulumi.Input.fromValue(map['state'] as String),
      stateMessage: pulumi.Input.fromValue(map['stateMessage'] as String),
    );
  }
}
