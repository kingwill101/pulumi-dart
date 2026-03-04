// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ram_alias_alias_args_doc}
/// The set of arguments for Alias.
/// {@endtemplate}
/// {@macro pulumi_ram_alias_alias_args_doc}
class AliasArgs {
  final pulumi.Input<String> accountAlias;

  /// Creates a new [AliasArgs].
  /// [accountAlias] Required.
  AliasArgs({required this.accountAlias});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'accountAlias': accountAlias};
  }

  factory AliasArgs.fromMap(Map<String, dynamic> map) {
    return AliasArgs(
      accountAlias: pulumi.Input.fromValue(map['accountAlias'] as String),
    );
  }
}
