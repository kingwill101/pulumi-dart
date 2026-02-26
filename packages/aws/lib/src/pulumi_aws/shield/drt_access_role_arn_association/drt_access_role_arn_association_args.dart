// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../drt_access_role_arn_association_timeouts/drt_access_role_arn_association_timeouts.dart';

/// The set of arguments for DrtAccessRoleArnAssociation.
class DrtAccessRoleArnAssociationArgs {
  /// The Amazon Resource Name (ARN) of the role the SRT will use to access your AWS account. Prior to making the AssociateDRTRole request, you must attach the `AWSShieldDRTAccessPolicy` managed policy to this role.
  final Input<String> roleArn;
  final Input<DrtAccessRoleArnAssociationTimeouts>? timeouts;

  DrtAccessRoleArnAssociationArgs({
    required this.roleArn,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['roleArn'] = roleArn;
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<
          DrtAccessRoleArnAssociationTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory DrtAccessRoleArnAssociationArgs.fromMap(Map<String, dynamic> map) {
    return DrtAccessRoleArnAssociationArgs(
      roleArn: Input.asInput<String>(map['roleArn']),
      timeouts: Input.asOptionalInput<DrtAccessRoleArnAssociationTimeouts>(
          map['timeouts']),
    );
  }
}
