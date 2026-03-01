// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'drt_access_role_arn_association_timeouts.dart';

/// {@template pulumi_shield_drt_access_role_arn_association_drt_access_role_arn_association_args_doc}
/// The set of arguments for DrtAccessRoleArnAssociation.
/// {@endtemplate}
/// {@macro pulumi_shield_drt_access_role_arn_association_drt_access_role_arn_association_args_doc}
class DrtAccessRoleArnAssociationArgs {
  /// The Amazon Resource Name (ARN) of the role the SRT will use to access your AWS account. Prior to making the AssociateDRTRole request, you must attach the `AWSShieldDRTAccessPolicy` managed policy to this role.
  final pulumi.Input<String> roleArn;
  final pulumi.Input<DrtAccessRoleArnAssociationTimeouts>? timeouts;

  /// Creates a new [DrtAccessRoleArnAssociationArgs].
  /// [roleArn] The Amazon Resource Name (ARN) of the role the SRT will use to access your AWS account. Prior to making the AssociateDRTRole request, you must attach the `AWSShieldDRTAccessPolicy` managed policy to this role.
  /// [timeouts] Optional.
  DrtAccessRoleArnAssociationArgs({
    required String roleArn,
    DrtAccessRoleArnAssociationTimeouts? timeouts,
  }) : roleArn = pulumi.Input.asInput<String>(roleArn),
       timeouts =
           pulumi.Input.asOptionalInput<DrtAccessRoleArnAssociationTimeouts>(
             timeouts,
           );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'roleArn': roleArn,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            DrtAccessRoleArnAssociationTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
    };
  }

  factory DrtAccessRoleArnAssociationArgs.fromMap(Map<String, dynamic> map) {
    return DrtAccessRoleArnAssociationArgs(
      roleArn: map['roleArn'] as String,
      timeouts: map['timeouts'] == null
          ? null
          : DrtAccessRoleArnAssociationTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
