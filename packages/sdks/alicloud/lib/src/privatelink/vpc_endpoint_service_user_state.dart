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
    pulumi.Output<bool>? dryRun,
    pulumi.Output<String>? serviceId,
    pulumi.Output<String>? userArn,
    pulumi.Output<String>? userId,
  }) :
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      serviceId = pulumi.Input.asOptionalInput<String>(serviceId),
      userArn = pulumi.Input.asOptionalInput<String>(userArn),
      userId = pulumi.Input.asOptionalInput<String>(userId);

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
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      serviceId: map['serviceId'] == null ? null : pulumi.Output.create<String>(map['serviceId'] as String),
      userArn: map['userArn'] == null ? null : pulumi.Output.create<String>(map['userArn'] as String),
      userId: map['userId'] == null ? null : pulumi.Output.create<String>(map['userId'] as String),
    );
  }
}

