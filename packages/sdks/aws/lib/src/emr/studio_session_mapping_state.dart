// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering StudioSessionMapping resources.
class StudioSessionMappingState {
  /// The globally unique identifier (GUID) of the user or group from the Amazon Web Services SSO Identity Store.
  final pulumi.Input<String>? identityId;
  /// The name of the user or group from the Amazon Web Services SSO Identity Store.
  final pulumi.Input<String>? identityName;
  /// Specifies whether the identity to map to the Amazon EMR Studio is a `USER` or a `GROUP`.
  final pulumi.Input<String>? identityType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Amazon Resource Name (ARN) for the session policy that will be applied to the user or group. You should specify the ARN for the session policy that you want to apply, not the ARN of your user role.
  final pulumi.Input<String>? sessionPolicyArn;
  /// The ID of the Amazon EMR Studio to which the user or group will be mapped.
  final pulumi.Input<String>? studioId;

  /// Creates a new [StudioSessionMappingState].
  /// [identityId] The globally unique identifier (GUID) of the user or group from the Amazon Web Services SSO Identity Store.
  /// [identityName] The name of the user or group from the Amazon Web Services SSO Identity Store.
  /// [identityType] Specifies whether the identity to map to the Amazon EMR Studio is a `USER` or a `GROUP`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sessionPolicyArn] The Amazon Resource Name (ARN) for the session policy that will be applied to the user or group. You should specify the ARN for the session policy that you want to apply, not the ARN of your user role.
  /// [studioId] The ID of the Amazon EMR Studio to which the user or group will be mapped.
  StudioSessionMappingState({
    pulumi.Output<String>? identityId,
    pulumi.Output<String>? identityName,
    pulumi.Output<String>? identityType,
    pulumi.Output<String>? region,
    pulumi.Output<String>? sessionPolicyArn,
    pulumi.Output<String>? studioId,
  }) :
      identityId = pulumi.Input.asOptionalInput<String>(identityId),
      identityName = pulumi.Input.asOptionalInput<String>(identityName),
      identityType = pulumi.Input.asOptionalInput<String>(identityType),
      region = pulumi.Input.asOptionalInput<String>(region),
      sessionPolicyArn = pulumi.Input.asOptionalInput<String>(sessionPolicyArn),
      studioId = pulumi.Input.asOptionalInput<String>(studioId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityId': ?identityId,
      'identityName': ?identityName,
      'identityType': ?identityType,
      'region': ?region,
      'sessionPolicyArn': ?sessionPolicyArn,
      'studioId': ?studioId,
    };
  }

  factory StudioSessionMappingState.fromMap(Map<String, dynamic> map) {
    return StudioSessionMappingState(
      identityId: map['identityId'] == null ? null : pulumi.Output.create<String>(map['identityId'] as String),
      identityName: map['identityName'] == null ? null : pulumi.Output.create<String>(map['identityName'] as String),
      identityType: map['identityType'] == null ? null : pulumi.Output.create<String>(map['identityType'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      sessionPolicyArn: map['sessionPolicyArn'] == null ? null : pulumi.Output.create<String>(map['sessionPolicyArn'] as String),
      studioId: map['studioId'] == null ? null : pulumi.Output.create<String>(map['studioId'] as String),
    );
  }
}

