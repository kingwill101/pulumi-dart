// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccountAlias resources.
class AccountAliasState {
  /// The alias of the account.
  /// It can be 3 to 32 characters in length and can contain lowercase letters, digits, and dashes (-).
  final pulumi.Input<String>? accountAlias;

  /// Creates a new [AccountAliasState].
  /// [accountAlias] The alias of the account.
  AccountAliasState({
    pulumi.Output<String>? accountAlias,
  }) :
      accountAlias = pulumi.Input.asOptionalInput<String>(accountAlias);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountAlias': ?accountAlias,
    };
  }

  factory AccountAliasState.fromMap(Map<String, dynamic> map) {
    return AccountAliasState(
      accountAlias: map['accountAlias'] == null ? null : pulumi.Output.create<String>(map['accountAlias'] as String),
    );
  }
}

