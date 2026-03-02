// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_polardb_get_databases_get_databases_args_doc}
/// Arguments for getDatabases.
/// {@endtemplate}
/// {@macro pulumi_polardb_get_databases_get_databases_args_doc}
class GetDatabasesArgs {
  /// The polarDB cluster ID.
  final pulumi.Input<String> dbClusterId;
  /// A regex string to filter results by database name.
  final pulumi.Input<String>? nameRegex;

  /// Creates a new [GetDatabasesArgs].
  /// [dbClusterId] The polarDB cluster ID.
  /// [nameRegex] A regex string to filter results by database name.
  GetDatabasesArgs({
    required this.dbClusterId,
    this.nameRegex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbClusterId': dbClusterId,
      'nameRegex': ?nameRegex,
    };
  }

  factory GetDatabasesArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabasesArgs(
      dbClusterId: (map['dbClusterId'] as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
    );
  }
}

