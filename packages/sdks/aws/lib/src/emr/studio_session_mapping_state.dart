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
    this.identityId,
    this.identityName,
    this.identityType,
    this.region,
    this.sessionPolicyArn,
    this.studioId,
  });

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
      identityId: map['identityId'] == null ? null : (map['identityId'] as String).input(),
      identityName: map['identityName'] == null ? null : (map['identityName'] as String).input(),
      identityType: map['identityType'] == null ? null : (map['identityType'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      sessionPolicyArn: map['sessionPolicyArn'] == null ? null : (map['sessionPolicyArn'] as String).input(),
      studioId: map['studioId'] == null ? null : (map['studioId'] as String).input(),
    );
  }
}

