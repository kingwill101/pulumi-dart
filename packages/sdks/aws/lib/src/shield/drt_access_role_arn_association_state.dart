// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'drt_access_role_arn_association_timeouts.dart';

/// Input properties used for looking up and filtering DrtAccessRoleArnAssociation resources.
class DrtAccessRoleArnAssociationState {
  /// The Amazon Resource Name (ARN) of the role the SRT will use to access your AWS account. Prior to making the AssociateDRTRole request, you must attach the `AWSShieldDRTAccessPolicy` managed policy to this role.
  final pulumi.Input<String>? roleArn;
  final pulumi.Input<DrtAccessRoleArnAssociationTimeouts>? timeouts;

  /// Creates a new [DrtAccessRoleArnAssociationState].
  /// [roleArn] The Amazon Resource Name (ARN) of the role the SRT will use to access your AWS account. Prior to making the AssociateDRTRole request, you must attach the `AWSShieldDRTAccessPolicy` managed policy to this role.
  /// [timeouts] Optional.
  DrtAccessRoleArnAssociationState({this.roleArn, this.timeouts});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'roleArn': ?roleArn,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            DrtAccessRoleArnAssociationTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
    };
  }

  factory DrtAccessRoleArnAssociationState.fromMap(Map<String, dynamic> map) {
    return DrtAccessRoleArnAssociationState(
      roleArn: (() {
        final guardedValue = map['roleArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timeouts: (() {
        final guardedValue = map['timeouts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DrtAccessRoleArnAssociationTimeouts.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
