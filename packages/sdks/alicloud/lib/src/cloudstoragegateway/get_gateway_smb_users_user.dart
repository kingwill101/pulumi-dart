// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGatewaySmbUsersUser {
  /// The Gateway ID.
  final pulumi.Input<String> gatewayId;
  /// The ID of the Gateway SMB User.
  final pulumi.Input<String> id;
  /// The username of the Gateway SMB User.
  final pulumi.Input<String> username;

  /// Creates a new [GetGatewaySmbUsersUser].
  /// [gatewayId] The Gateway ID.
  /// [id] The ID of the Gateway SMB User.
  /// [username] The username of the Gateway SMB User.
  GetGatewaySmbUsersUser({
    required this.gatewayId,
    required this.id,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayId': gatewayId,
      'id': id,
      'username': username,
    };
  }

  factory GetGatewaySmbUsersUser.fromMap(Map<String, dynamic> map) {
    return GetGatewaySmbUsersUser(
      gatewayId: (map['gatewayId'] as String).input(),
      id: (map['id'] as String).input(),
      username: (map['username'] as String).input(),
    );
  }
}

