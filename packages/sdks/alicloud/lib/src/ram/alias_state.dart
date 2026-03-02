// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Alias resources.
class AliasState {
  final pulumi.Input<String>? accountAlias;

  /// Creates a new [AliasState].
  /// [accountAlias] Optional.
  AliasState({
    this.accountAlias,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountAlias': ?accountAlias,
    };
  }

  factory AliasState.fromMap(Map<String, dynamic> map) {
    return AliasState(
      accountAlias: map['accountAlias'] == null ? null : (map['accountAlias'] as String).input(),
    );
  }
}

