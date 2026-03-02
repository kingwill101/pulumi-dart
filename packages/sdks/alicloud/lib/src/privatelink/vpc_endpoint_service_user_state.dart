// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpcEndpointServiceUser resources.
class VpcEndpointServiceUserState {
  /// Specifies whether to perform only a dry run, without performing the actual request. Valid values:
  final pulumi.Input<bool>? dryRun;
  /// The endpoint service ID.
  final pulumi.Input<String>? serviceId;
  /// The whitelist in the format of ARN.
  final pulumi.Input<String>? userArn;
  /// The ID of the Alibaba Cloud account in the whitelist of the endpoint service.
  final pulumi.Input<String>? userId;

  /// Creates a new [VpcEndpointServiceUserState].
  /// [dryRun] Specifies whether to perform only a dry run, without performing the actual request. Valid values:
  /// [serviceId] The endpoint service ID.
  /// [userArn] The whitelist in the format of ARN.
  /// [userId] The ID of the Alibaba Cloud account in the whitelist of the endpoint service.
  VpcEndpointServiceUserState({
    this.dryRun,
    this.serviceId,
    this.userArn,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dryRun': ?dryRun,
      'serviceId': ?serviceId,
      'userArn': ?userArn,
      'userId': ?userId,
    };
  }

  factory VpcEndpointServiceUserState.fromMap(Map<String, dynamic> map) {
    return VpcEndpointServiceUserState(
      dryRun: map['dryRun'] == null ? null : (map['dryRun']! as bool).input(),
      serviceId: map['serviceId'] == null ? null : (map['serviceId']! as String).input(),
      userArn: map['userArn'] == null ? null : (map['userArn']! as String).input(),
      userId: map['userId'] == null ? null : (map['userId']! as String).input(),
    );
  }
}

