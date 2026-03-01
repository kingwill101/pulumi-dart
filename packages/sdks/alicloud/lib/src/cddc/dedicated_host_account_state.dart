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
    pulumi.Output<String>? accountName,
    pulumi.Output<String>? accountPassword,
    pulumi.Output<String>? accountType,
    pulumi.Output<String>? dedicatedHostId,
  }) :
      accountName = pulumi.Input.asOptionalInput<String>(accountName),
      accountPassword = pulumi.Input.asOptionalInput<String>(accountPassword),
      accountType = pulumi.Input.asOptionalInput<String>(accountType),
      dedicatedHostId = pulumi.Input.asOptionalInput<String>(dedicatedHostId);

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
      accountName: map['accountName'] == null ? null : pulumi.Output.create<String>(map['accountName'] as String),
      accountPassword: map['accountPassword'] == null ? null : pulumi.Output.create<String>(map['accountPassword'] as String),
      accountType: map['accountType'] == null ? null : pulumi.Output.create<String>(map['accountType'] as String),
      dedicatedHostId: map['dedicatedHostId'] == null ? null : pulumi.Output.create<String>(map['dedicatedHostId'] as String),
    );
  }
}

