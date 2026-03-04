// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privatelink_vpc_endpoint_service_user_vpc_endpoint_service_user_args_doc}
/// The set of arguments for VpcEndpointServiceUser.
/// {@endtemplate}
/// {@macro pulumi_privatelink_vpc_endpoint_service_user_vpc_endpoint_service_user_args_doc}
class VpcEndpointServiceUserArgs {
  /// Specifies whether to perform only a dry run, without performing the actual request. Valid values:
  final pulumi.Input<bool>? dryRun;

  /// The endpoint service ID.
  final pulumi.Input<String> serviceId;

  /// The whitelist in the format of ARN.
  final pulumi.Input<String>? userArn;

  /// The ID of the Alibaba Cloud account in the whitelist of the endpoint service.
  final pulumi.Input<String> userId;

  /// Creates a new [VpcEndpointServiceUserArgs].
  /// [dryRun] Specifies whether to perform only a dry run, without performing the actual request. Valid values:
  /// [serviceId] The endpoint service ID.
  /// [userArn] The whitelist in the format of ARN.
  /// [userId] The ID of the Alibaba Cloud account in the whitelist of the endpoint service.
  VpcEndpointServiceUserArgs({
    this.dryRun,
    required this.serviceId,
    this.userArn,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dryRun': ?dryRun,
      'serviceId': serviceId,
      'userArn': ?userArn,
      'userId': userId,
    };
  }

  factory VpcEndpointServiceUserArgs.fromMap(Map<String, dynamic> map) {
    return VpcEndpointServiceUserArgs(
      dryRun: (() {
        final guardedValue = map['dryRun'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      serviceId: pulumi.Input.fromValue(map['serviceId'] as String),
      userArn: (() {
        final guardedValue = map['userArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userId: pulumi.Input.fromValue(map['userId'] as String),
    );
  }
}
