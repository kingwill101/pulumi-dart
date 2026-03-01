// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DelegateAccount resources.
class DelegateAccountState {
  /// Delegate administrator account Id
  final pulumi.Input<String>? accountId;

  /// Creates a new [DelegateAccountState].
  /// [accountId] Delegate administrator account Id
  DelegateAccountState({
    pulumi.Output<String>? accountId,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
    };
  }

  factory DelegateAccountState.fromMap(Map<String, dynamic> map) {
    return DelegateAccountState(
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
    );
  }
}

