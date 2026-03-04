// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dms_enterprise_logic_database_enterprise_logic_database_args_doc}
/// The set of arguments for EnterpriseLogicDatabase.
/// {@endtemplate}
/// {@macro pulumi_dms_enterprise_logic_database_enterprise_logic_database_args_doc}
class EnterpriseLogicDatabaseArgs {
  /// Logical Library alias.
  final pulumi.Input<String> alias;

  /// Sub-Database ID
  final pulumi.Input<List<String>> databaseIds;

  /// The ID of the logical Library.
  final pulumi.Input<String>? logicDatabaseId;

  /// Creates a new [EnterpriseLogicDatabaseArgs].
  /// [alias] Logical Library alias.
  /// [databaseIds] Sub-Database ID
  /// [logicDatabaseId] The ID of the logical Library.
  EnterpriseLogicDatabaseArgs({
    required this.alias,
    required this.databaseIds,
    this.logicDatabaseId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': alias,
      'databaseIds': databaseIds,
      'logicDatabaseId': ?logicDatabaseId,
    };
  }

  factory EnterpriseLogicDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return EnterpriseLogicDatabaseArgs(
      alias: pulumi.Input.fromValue(map['alias'] as String),
      databaseIds: pulumi.Input.fromValue(
        (map['databaseIds'] as List).cast<String>(),
      ),
      logicDatabaseId: (() {
        final guardedValue = map['logicDatabaseId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
