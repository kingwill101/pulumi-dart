// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for StudioSessionMapping.
class StudioSessionMappingArgs {
  /// The globally unique identifier (GUID) of the user or group from the Amazon Web Services SSO Identity Store.
  final Input<String>? identityId;

  /// The name of the user or group from the Amazon Web Services SSO Identity Store.
  final Input<String>? identityName;

  /// Specifies whether the identity to map to the Amazon EMR Studio is a `USER` or a `GROUP`.
  final Input<String> identityType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The Amazon Resource Name (ARN) for the session policy that will be applied to the user or group. You should specify the ARN for the session policy that you want to apply, not the ARN of your user role.
  final Input<String> sessionPolicyArn;

  /// The ID of the Amazon EMR Studio to which the user or group will be mapped.
  final Input<String> studioId;

  StudioSessionMappingArgs({
    this.identityId,
    this.identityName,
    required this.identityType,
    this.region,
    required this.sessionPolicyArn,
    required this.studioId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final identityIdValue = identityId;
    if (identityIdValue != null) {
      map['identityId'] = identityIdValue;
    }
    final identityNameValue = identityName;
    if (identityNameValue != null) {
      map['identityName'] = identityNameValue;
    }
    map['identityType'] = identityType;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['sessionPolicyArn'] = sessionPolicyArn;
    map['studioId'] = studioId;
    return map;
  }

  factory StudioSessionMappingArgs.fromMap(Map<String, dynamic> map) {
    return StudioSessionMappingArgs(
      identityId: Input.asOptionalInput<String>(map['identityId']),
      identityName: Input.asOptionalInput<String>(map['identityName']),
      identityType: Input.asInput<String>(map['identityType']),
      region: Input.asOptionalInput<String>(map['region']),
      sessionPolicyArn: Input.asInput<String>(map['sessionPolicyArn']),
      studioId: Input.asInput<String>(map['studioId']),
    );
  }
}
