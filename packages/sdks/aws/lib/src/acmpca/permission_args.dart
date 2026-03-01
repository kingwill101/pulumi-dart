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
  final pulumi.Input<String>? region;
  /// ID of the calling account
  final pulumi.Input<String>? sourceAccount;

  /// Creates a new [PermissionArgs].
  /// [actions] Actions that the specified AWS service principal can use. These include `IssueCertificate`, `GetCertificate`, and `ListPermissions`. Note that in order for ACM to automatically rotate certificates issued by a PCA, it must be granted permission on all 3 actions, as per the example above.
  /// [certificateAuthorityArn] ARN of the CA that grants the permissions.
  /// [principal] AWS service or identity that receives the permission. At this time, the only valid principal is `acm.amazonaws.com`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourceAccount] ID of the calling account
  PermissionArgs({
    required pulumi.Output<List<String>> actions,
    required pulumi.Output<String> certificateAuthorityArn,
    required pulumi.Output<String> principal,
    pulumi.Output<String>? region,
    pulumi.Output<String>? sourceAccount,
  }) :
      actions = pulumi.Input.asInput<List<String>>(actions),
      certificateAuthorityArn = pulumi.Input.asInput<String>(certificateAuthorityArn),
      principal = pulumi.Input.asInput<String>(principal),
      region = pulumi.Input.asOptionalInput<String>(region),
      sourceAccount = pulumi.Input.asOptionalInput<String>(sourceAccount);

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
      actions: pulumi.Output.create<List<String>>((map['actions'] as List).cast<String>()),
      certificateAuthorityArn: pulumi.Output.create<String>(map['certificateAuthorityArn'] as String),
      principal: pulumi.Output.create<String>(map['principal'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      sourceAccount: map['sourceAccount'] == null ? null : pulumi.Output.create<String>(map['sourceAccount'] as String),
    );
  }
}

