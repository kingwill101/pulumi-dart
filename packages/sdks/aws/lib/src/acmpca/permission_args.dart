// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_acmpca_permission_permission_args_doc}
/// The set of arguments for Permission.
/// {@endtemplate}
/// {@macro pulumi_acmpca_permission_permission_args_doc}
class PermissionArgs {
  /// Actions that the specified AWS service principal can use. These include `IssueCertificate`, `GetCertificate`, and `ListPermissions`. Note that in order for ACM to automatically rotate certificates issued by a PCA, it must be granted permission on all 3 actions, as per the example above.
  final pulumi.Input<List<String>> actions;
  /// ARN of the CA that grants the permissions.
  final pulumi.Input<String> certificateAuthorityArn;
  /// AWS service or identity that receives the permission. At this time, the only valid principal is `acm.amazonaws.com`.
  final pulumi.Input<String> principal;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ID of the calling account
  final pulumi.Input<String?>? sourceAccount;

  /// Creates a new [PermissionArgs].
  /// [actions] Actions that the specified AWS service principal can use. These include `IssueCertificate`, `GetCertificate`, and `ListPermissions`. Note that in order for ACM to automatically rotate certificates issued by a PCA, it must be granted permission on all 3 actions, as per the example above.
  /// [certificateAuthorityArn] ARN of the CA that grants the permissions.
  /// [principal] AWS service or identity that receives the permission. At this time, the only valid principal is `acm.amazonaws.com`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourceAccount] ID of the calling account
  const PermissionArgs({
    required this.actions,
    required this.certificateAuthorityArn,
    required this.principal,
    this.region,
    this.sourceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': actions,
      'certificateAuthorityArn': certificateAuthorityArn,
      'principal': principal,
      'region': ?region,
      'sourceAccount': ?sourceAccount,
    };
  }

  factory PermissionArgs.fromMap(Map<String, dynamic> map) {
    return PermissionArgs(
      actions: pulumi.Input.fromValue((map['actions'] as List).cast<String>()),
      certificateAuthorityArn: pulumi.Input.fromValue(map['certificateAuthorityArn'] as String),
      principal: pulumi.Input.fromValue(map['principal'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceAccount: (() { final guardedValue = map['sourceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
