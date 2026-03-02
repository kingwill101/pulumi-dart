// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DedicatedHostAccount resources.
class DedicatedHostAccountState {
  /// The name of the Dedicated host account. The account name must be 2 to 16 characters in length, contain lower case letters, digits, and underscore(_). At the same time, the name must start with a letter and end with a letter or number.
  final pulumi.Input<String>? accountName;
  /// The password of the Dedicated host account. The account password must be 6 to 32 characters in length, and can contain letters, digits, and special characters `!@#$%^&*()_+-=`.
  final pulumi.Input<String>? accountPassword;
  /// The type of the Dedicated host account. Valid values: `Admin`, `Normal`.
  final pulumi.Input<String>? accountType;
  /// The ID of Dedicated the host.
  final pulumi.Input<String>? dedicatedHostId;

  /// Creates a new [DedicatedHostAccountState].
  /// [accountName] The name of the Dedicated host account. The account name must be 2 to 16 characters in length, contain lower case letters, digits, and underscore(_). At the same time, the name must start with a letter and end with a letter or number.
  /// [accountPassword] The password of the Dedicated host account. The account password must be 6 to 32 characters in length, and can contain letters, digits, and special characters `!@#$%^&*()_+-=`.
  /// [accountType] The type of the Dedicated host account. Valid values: `Admin`, `Normal`.
  /// [dedicatedHostId] The ID of Dedicated the host.
  DedicatedHostAccountState({
    this.accountName,
    this.accountPassword,
    this.accountType,
    this.dedicatedHostId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'accountPassword': ?accountPassword,
      'accountType': ?accountType,
      'dedicatedHostId': ?dedicatedHostId,
    };
  }

  factory DedicatedHostAccountState.fromMap(Map<String, dynamic> map) {
    return DedicatedHostAccountState(
      accountName: map['accountName'] == null ? null : (map['accountName'] as String).input(),
      accountPassword: map['accountPassword'] == null ? null : (map['accountPassword'] as String).input(),
      accountType: map['accountType'] == null ? null : (map['accountType'] as String).input(),
      dedicatedHostId: map['dedicatedHostId'] == null ? null : (map['dedicatedHostId'] as String).input(),
    );
  }
}

