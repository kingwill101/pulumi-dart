// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Permission resources.
class PermissionState {
  /// Actions that the specified AWS service principal can use. These include `IssueCertificate`, `GetCertificate`, and `ListPermissions`. Note that in order for ACM to automatically rotate certificates issued by a PCA, it must be granted permission on all 3 actions, as per the example above.
  final pulumi.Input<List<String>>? actions;
  /// ARN of the CA that grants the permissions.
  final pulumi.Input<String>? certificateAuthorityArn;
  /// IAM policy that is associated with the permission.
  final pulumi.Input<String>? policy;
  /// AWS service or identity that receives the permission. At this time, the only valid principal is `acm.amazonaws.com`.
  final pulumi.Input<String>? principal;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ID of the calling account
  final pulumi.Input<String>? sourceAccount;

  /// Creates a new [PermissionState].
  /// [actions] Actions that the specified AWS service principal can use. These include `IssueCertificate`, `GetCertificate`, and `ListPermissions`. Note that in order for ACM to automatically rotate certificates issued by a PCA, it must be granted permission on all 3 actions, as per the example above.
  /// [certificateAuthorityArn] ARN of the CA that grants the permissions.
  /// [policy] IAM policy that is associated with the permission.
  /// [principal] AWS service or identity that receives the permission. At this time, the only valid principal is `acm.amazonaws.com`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourceAccount] ID of the calling account
  PermissionState({
    this.actions,
    this.certificateAuthorityArn,
    this.policy,
    this.principal,
    this.region,
    this.sourceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?actions,
      'certificateAuthorityArn': ?certificateAuthorityArn,
      'policy': ?policy,
      'principal': ?principal,
      'region': ?region,
      'sourceAccount': ?sourceAccount,
    };
  }

  factory PermissionState.fromMap(Map<String, dynamic> map) {
    return PermissionState(
      actions: map['actions'] == null ? null : (((map['actions'] as List).cast<String>()).input()).input(),
      certificateAuthorityArn: map['certificateAuthorityArn'] == null ? null : ((map['certificateAuthorityArn'] as String).input()).input(),
      policy: map['policy'] == null ? null : ((map['policy'] as String).input()).input(),
      principal: map['principal'] == null ? null : ((map['principal'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      sourceAccount: map['sourceAccount'] == null ? null : ((map['sourceAccount'] as String).input()).input(),
    );
  }
}

