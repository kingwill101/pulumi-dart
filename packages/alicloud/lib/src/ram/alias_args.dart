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
  AliasArgs({
    required String accountAlias,
  }) :
      accountAlias = pulumi.Input.asInput<String>(accountAlias);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountAlias': accountAlias,
    };
  }

  factory AliasArgs.fromMap(Map<String, dynamic> map) {
    return AliasArgs(
      accountAlias: map['accountAlias'] as String,
    );
  }
}

