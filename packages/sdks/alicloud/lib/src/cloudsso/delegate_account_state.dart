// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DelegateAccount resources.
class DelegateAccountState {
  /// Delegate administrator account Id
  final pulumi.Input<String>? accountId;

  /// Creates a new [DelegateAccountState].
  /// [accountId] Delegate administrator account Id
  DelegateAccountState({
    this.accountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
    };
  }

  factory DelegateAccountState.fromMap(Map<String, dynamic> map) {
    return DelegateAccountState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

