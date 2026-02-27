// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Permission.
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

  PermissionArgs({
    required this.actions,
    required this.certificateAuthorityArn,
    required this.principal,
    this.region,
    this.sourceAccount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actions'] = actions;
    map['certificateAuthorityArn'] = certificateAuthorityArn;
    map['principal'] = principal;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final sourceAccountValue = sourceAccount;
    if (sourceAccountValue != null) {
      map['sourceAccount'] = sourceAccountValue;
    }
    return map;
  }

  factory PermissionArgs.fromMap(Map<String, dynamic> map) {
    return PermissionArgs(
      actions: pulumi.Input.asInput<List<String>>(map['actions']),
      certificateAuthorityArn:
          pulumi.Input.asInput<String>(map['certificateAuthorityArn']),
      principal: pulumi.Input.asInput<String>(map['principal']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      sourceAccount: pulumi.Input.asOptionalInput<String>(map['sourceAccount']),
    );
  }
}
