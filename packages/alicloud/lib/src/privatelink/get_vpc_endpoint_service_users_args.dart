// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privatelink_get_vpc_endpoint_service_users_get_vpc_endpoint_service_users_args_doc}
/// Arguments for getVpcEndpointServiceUsers.
/// {@endtemplate}
/// {@macro pulumi_privatelink_get_vpc_endpoint_service_users_get_vpc_endpoint_service_users_args_doc}
class GetVpcEndpointServiceUsersArgs {
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The Id of Vpc Endpoint Service.
  final pulumi.Input<String> serviceId;
  /// The Id of Ram User.
  final pulumi.Input<String>? userId;

  /// Creates a new [GetVpcEndpointServiceUsersArgs].
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [serviceId] The Id of Vpc Endpoint Service.
  /// [userId] The Id of Ram User.
  GetVpcEndpointServiceUsersArgs({
    String? outputFile,
    required String serviceId,
    String? userId,
  }) :
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      serviceId = pulumi.Input.asInput<String>(serviceId),
      userId = pulumi.Input.asOptionalInput<String>(userId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outputFile': ?outputFile,
      'serviceId': serviceId,
      'userId': ?userId,
    };
  }

  factory GetVpcEndpointServiceUsersArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcEndpointServiceUsersArgs(
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      serviceId: map['serviceId'] as String,
      userId: map['userId'] == null ? null : map['userId'] as String,
    );
  }
}

