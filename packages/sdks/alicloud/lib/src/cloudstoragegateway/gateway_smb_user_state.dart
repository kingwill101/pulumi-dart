// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GatewaySmbUser resources.
class GatewaySmbUserState {
  /// The Gateway ID of the Gateway SMB User.
  final pulumi.Input<String>? gatewayId;
  /// The password of the Gateway SMB User.
  final pulumi.Input<String>? password;
  /// The username of the Gateway SMB User.
  final pulumi.Input<String>? username;

  /// Creates a new [GatewaySmbUserState].
  /// [gatewayId] The Gateway ID of the Gateway SMB User.
  /// [password] The password of the Gateway SMB User.
  /// [username] The username of the Gateway SMB User.
  GatewaySmbUserState({
    pulumi.Output<String>? gatewayId,
    pulumi.Output<String>? password,
    pulumi.Output<String>? username,
  }) :
      gatewayId = pulumi.Input.asOptionalInput<String>(gatewayId),
      password = pulumi.Input.asOptionalInput<String>(password),
      username = pulumi.Input.asOptionalInput<String>(username);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayId': ?gatewayId,
      'password': ?password,
      'username': ?username,
    };
  }

  factory GatewaySmbUserState.fromMap(Map<String, dynamic> map) {
    return GatewaySmbUserState(
      gatewayId: map['gatewayId'] == null ? null : pulumi.Output.create<String>(map['gatewayId'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      username: map['username'] == null ? null : pulumi.Output.create<String>(map['username'] as String),
    );
  }
}

