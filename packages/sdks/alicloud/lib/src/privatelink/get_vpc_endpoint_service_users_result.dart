// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_endpoint_service_users_user.dart';

/// Result data returned by getVpcEndpointServiceUsers.
class GetVpcEndpointServiceUsersResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Vpc Endpoint Service User IDs.
  final List<String> ids;
  final String? outputFile;
  final String serviceId;
  /// The Id of Ram User.
  final String? userId;
  /// A list of Privatelink Vpc Endpoint Service Users. Each element contains the following attributes:
  final List<GetVpcEndpointServiceUsersUser> users;

  /// Creates a new [GetVpcEndpointServiceUsersResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Vpc Endpoint Service User IDs.
  /// [outputFile] Optional.
  /// [serviceId] Required.
  /// [userId] The Id of Ram User.
  /// [users] A list of Privatelink Vpc Endpoint Service Users. Each element contains the following attributes:
  GetVpcEndpointServiceUsersResult({
    required this.id,
    required this.ids,
    this.outputFile,
    required this.serviceId,
    this.userId,
    required this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'serviceId': serviceId,
      'userId': ?userId,
      'users': pulumi.Input.encodeList<GetVpcEndpointServiceUsersUser, Map<String, dynamic>>(users, (value) => value.toMap()),
    };
  }

  factory GetVpcEndpointServiceUsersResult.fromMap(Map<String, dynamic> map) {
    return GetVpcEndpointServiceUsersResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      serviceId: map['serviceId'] as String,
      userId: map['userId'] == null ? null : map['userId']! as String,
      users: pulumi.Input.decodeList<GetVpcEndpointServiceUsersUser>(map['users'], (value) => GetVpcEndpointServiceUsersUser.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

