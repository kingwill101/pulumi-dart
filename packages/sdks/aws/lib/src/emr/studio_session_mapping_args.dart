// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_emr_studio_session_mapping_studio_session_mapping_args_doc}
/// The set of arguments for StudioSessionMapping.
/// {@endtemplate}
/// {@macro pulumi_emr_studio_session_mapping_studio_session_mapping_args_doc}
class StudioSessionMappingArgs {
  /// The globally unique identifier (GUID) of the user or group from the Amazon Web Services SSO Identity Store.
  final pulumi.Input<String>? identityId;

  /// The name of the user or group from the Amazon Web Services SSO Identity Store.
  final pulumi.Input<String>? identityName;

  /// Specifies whether the identity to map to the Amazon EMR Studio is a `USER` or a `GROUP`.
  final pulumi.Input<String> identityType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The Amazon Resource Name (ARN) for the session policy that will be applied to the user or group. You should specify the ARN for the session policy that you want to apply, not the ARN of your user role.
  final pulumi.Input<String> sessionPolicyArn;

  /// The ID of the Amazon EMR Studio to which the user or group will be mapped.
  final pulumi.Input<String> studioId;

  /// Creates a new [StudioSessionMappingArgs].
  /// [identityId] The globally unique identifier (GUID) of the user or group from the Amazon Web Services SSO Identity Store.
  /// [identityName] The name of the user or group from the Amazon Web Services SSO Identity Store.
  /// [identityType] Specifies whether the identity to map to the Amazon EMR Studio is a `USER` or a `GROUP`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sessionPolicyArn] The Amazon Resource Name (ARN) for the session policy that will be applied to the user or group. You should specify the ARN for the session policy that you want to apply, not the ARN of your user role.
  /// [studioId] The ID of the Amazon EMR Studio to which the user or group will be mapped.
  StudioSessionMappingArgs({
    this.identityId,
    this.identityName,
    required this.identityType,
    this.region,
    required this.sessionPolicyArn,
    required this.studioId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityId': ?identityId,
      'identityName': ?identityName,
      'identityType': identityType,
      'region': ?region,
      'sessionPolicyArn': sessionPolicyArn,
      'studioId': studioId,
    };
  }

  factory StudioSessionMappingArgs.fromMap(Map<String, dynamic> map) {
    return StudioSessionMappingArgs(
      identityId: (() {
        final guardedValue = map['identityId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      identityName: (() {
        final guardedValue = map['identityName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      identityType: pulumi.Input.fromValue(map['identityType'] as String),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sessionPolicyArn: pulumi.Input.fromValue(
        map['sessionPolicyArn'] as String,
      ),
      studioId: pulumi.Input.fromValue(map['studioId'] as String),
    );
  }
}
