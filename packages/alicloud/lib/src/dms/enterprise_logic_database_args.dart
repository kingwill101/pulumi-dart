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
    required String alias,
    required List<String> databaseIds,
    String? logicDatabaseId,
  }) :
      alias = pulumi.Input.asInput<String>(alias),
      databaseIds = pulumi.Input.asInput<List<String>>(databaseIds),
      logicDatabaseId = pulumi.Input.asOptionalInput<String>(logicDatabaseId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': alias,
      'databaseIds': databaseIds,
      'logicDatabaseId': ?logicDatabaseId,
    };
  }

  factory EnterpriseLogicDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return EnterpriseLogicDatabaseArgs(
      alias: map['alias'] as String,
      databaseIds: (map['databaseIds'] as List).cast<String>(),
      logicDatabaseId: map['logicDatabaseId'] == null ? null : map['logicDatabaseId'] as String,
    );
  }
}

