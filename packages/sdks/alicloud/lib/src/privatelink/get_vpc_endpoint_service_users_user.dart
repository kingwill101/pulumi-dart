// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVpcEndpointServiceUsersUser {
  /// The ID of the Vpc Endpoint Service User.
  final pulumi.Input<String> id;
  /// The Id of Ram User.
  final pulumi.Input<String> userId;

  /// Creates a new [GetVpcEndpointServiceUsersUser].
  /// [id] The ID of the Vpc Endpoint Service User.
  /// [userId] The Id of Ram User.
  GetVpcEndpointServiceUsersUser({
    required this.id,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'userId': userId,
    };
  }

  factory GetVpcEndpointServiceUsersUser.fromMap(Map<String, dynamic> map) {
    return GetVpcEndpointServiceUsersUser(
      id: (map['id'] as String).input(),
      userId: (map['userId'] as String).input(),
    );
  }
}

