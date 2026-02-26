// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for RoleCustomPermission.
class RoleCustomPermissionArgs {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final Input<String>? awsAccountId;

  /// Custom permissions profile name.
  final Input<String> customPermissionsName;

  /// Namespace containing the role. Defaults to <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span>.
  final Input<String>? namespace;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Role. Valid values are `ADMIN`, `AUTHOR`, `READER`, `ADMIN_PRO`, `AUTHOR_PRO`, and `READER_PRO`.
  ///
  /// The following arguments are optional:
  final Input<String> role;

  RoleCustomPermissionArgs({
    this.awsAccountId,
    required this.customPermissionsName,
    this.namespace,
    this.region,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final awsAccountIdValue = awsAccountId;
    if (awsAccountIdValue != null) {
      map['awsAccountId'] = awsAccountIdValue;
    }
    map['customPermissionsName'] = customPermissionsName;
    final namespaceValue = namespace;
    if (namespaceValue != null) {
      map['namespace'] = namespaceValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['role'] = role;
    return map;
  }

  factory RoleCustomPermissionArgs.fromMap(Map<String, dynamic> map) {
    return RoleCustomPermissionArgs(
      awsAccountId: Input.asOptionalInput<String>(map['awsAccountId']),
      customPermissionsName:
          Input.asInput<String>(map['customPermissionsName']),
      namespace: Input.asOptionalInput<String>(map['namespace']),
      region: Input.asOptionalInput<String>(map['region']),
      role: Input.asInput<String>(map['role']),
    );
  }
}
