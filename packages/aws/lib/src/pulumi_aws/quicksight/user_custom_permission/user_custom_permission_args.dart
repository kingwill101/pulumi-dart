// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for UserCustomPermission.
class UserCustomPermissionArgs {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final Input<String>? awsAccountId;

  /// Custom permissions profile name.
  final Input<String> customPermissionsName;

  /// Namespace that the user belongs to. Defaults to `default`.
  final Input<String>? namespace;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Username of the user.
  ///
  /// The following arguments are optional:
  final Input<String> userName;

  UserCustomPermissionArgs({
    this.awsAccountId,
    required this.customPermissionsName,
    this.namespace,
    this.region,
    required this.userName,
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
    map['userName'] = userName;
    return map;
  }

  factory UserCustomPermissionArgs.fromMap(Map<String, dynamic> map) {
    return UserCustomPermissionArgs(
      awsAccountId: Input.asOptionalInput<String>(map['awsAccountId']),
      customPermissionsName:
          Input.asInput<String>(map['customPermissionsName']),
      namespace: Input.asOptionalInput<String>(map['namespace']),
      region: Input.asOptionalInput<String>(map['region']),
      userName: Input.asInput<String>(map['userName']),
    );
  }
}
