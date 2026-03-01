// ignore_for_file: unused_element, unnecessary_cast


class GetVpcEndpointServiceUsersUser {
  /// The ID of the Vpc Endpoint Service User.
  final String id;
  /// The Id of Ram User.
  final String userId;

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
      id: map['id'] as String,
      userId: map['userId'] as String,
    );
  }
}

