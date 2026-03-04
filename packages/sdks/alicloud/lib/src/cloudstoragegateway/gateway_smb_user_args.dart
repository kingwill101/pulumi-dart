// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudstoragegateway_gateway_smb_user_gateway_smb_user_args_doc}
/// The set of arguments for GatewaySmbUser.
/// {@endtemplate}
/// {@macro pulumi_cloudstoragegateway_gateway_smb_user_gateway_smb_user_args_doc}
class GatewaySmbUserArgs {
  /// The Gateway ID of the Gateway SMB User.
  final pulumi.Input<String> gatewayId;

  /// The password of the Gateway SMB User.
  final pulumi.Input<String> password;

  /// The username of the Gateway SMB User.
  final pulumi.Input<String> username;

  /// Creates a new [GatewaySmbUserArgs].
  /// [gatewayId] The Gateway ID of the Gateway SMB User.
  /// [password] The password of the Gateway SMB User.
  /// [username] The username of the Gateway SMB User.
  GatewaySmbUserArgs({
    required this.gatewayId,
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayId': gatewayId,
      'password': password,
      'username': username,
    };
  }

  factory GatewaySmbUserArgs.fromMap(Map<String, dynamic> map) {
    return GatewaySmbUserArgs(
      gatewayId: pulumi.Input.fromValue(map['gatewayId'] as String),
      password: pulumi.Input.fromValue(map['password'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
