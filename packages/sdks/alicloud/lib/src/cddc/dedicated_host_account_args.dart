// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cddc_dedicated_host_account_dedicated_host_account_args_doc}
/// The set of arguments for DedicatedHostAccount.
/// {@endtemplate}
/// {@macro pulumi_cddc_dedicated_host_account_dedicated_host_account_args_doc}
class DedicatedHostAccountArgs {
  /// The name of the Dedicated host account. The account name must be 2 to 16 characters in length, contain lower case letters, digits, and underscore(_). At the same time, the name must start with a letter and end with a letter or number.
  final pulumi.Input<String> accountName;
  /// The password of the Dedicated host account. The account password must be 6 to 32 characters in length, and can contain letters, digits, and special characters `!@#$%^&*()_+-=`.
  final pulumi.Input<String> accountPassword;
  /// The type of the Dedicated host account. Valid values: `Admin`, `Normal`.
  final pulumi.Input<String>? accountType;
  /// The ID of Dedicated the host.
  final pulumi.Input<String> dedicatedHostId;

  /// Creates a new [DedicatedHostAccountArgs].
  /// [accountName] The name of the Dedicated host account. The account name must be 2 to 16 characters in length, contain lower case letters, digits, and underscore(_). At the same time, the name must start with a letter and end with a letter or number.
  /// [accountPassword] The password of the Dedicated host account. The account password must be 6 to 32 characters in length, and can contain letters, digits, and special characters `!@#$%^&*()_+-=`.
  /// [accountType] The type of the Dedicated host account. Valid values: `Admin`, `Normal`.
  /// [dedicatedHostId] The ID of Dedicated the host.
  DedicatedHostAccountArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> accountPassword,
    pulumi.Output<String>? accountType,
    required pulumi.Output<String> dedicatedHostId,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      accountPassword = pulumi.Input.asInput<String>(accountPassword),
      accountType = pulumi.Input.asOptionalInput<String>(accountType),
      dedicatedHostId = pulumi.Input.asInput<String>(dedicatedHostId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'accountPassword': accountPassword,
      'accountType': ?accountType,
      'dedicatedHostId': dedicatedHostId,
    };
  }

  factory DedicatedHostAccountArgs.fromMap(Map<String, dynamic> map) {
    return DedicatedHostAccountArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      accountPassword: pulumi.Output.create<String>(map['accountPassword'] as String),
      accountType: map['accountType'] == null ? null : pulumi.Output.create<String>(map['accountType'] as String),
      dedicatedHostId: pulumi.Output.create<String>(map['dedicatedHostId'] as String),
    );
  }
}

