// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEnterpriseLogicDatabasesDatabase {
  /// Logical Library alias.
  final pulumi.Input<String> alias;
  /// Sub-Database ID.
  final pulumi.Input<List<String>> databaseIds;
  /// Database type.
  final pulumi.Input<String> dbType;
  /// Environment type, return value is as follows:-product: production environment-dev: development environment-pre: Advance Environment-test: test environment-sit:SIT environment-uat:UAT environment-pet: Pressure measurement environment-stag:STAG environment
  final pulumi.Input<String> envType;
  /// Logic Database ID.
  final pulumi.Input<String> id;
  /// Whether it is a logical Library, the return value is true.
  final pulumi.Input<bool> logic;
  /// The ID of the logical Library.
  final pulumi.Input<String> logicDatabaseId;
  /// The user ID list of the logical library Owner.
  final pulumi.Input<List<String>> ownerIdLists;
  /// The nickname list of the logical library Owner.
  final pulumi.Input<List<String>> ownerNameLists;
  /// Logical Library name.
  final pulumi.Input<String> schemaName;
  /// Logical library search name.
  final pulumi.Input<String> searchName;

  /// Creates a new [GetEnterpriseLogicDatabasesDatabase].
  /// [alias] Logical Library alias.
  /// [databaseIds] Sub-Database ID.
  /// [dbType] Database type.
  /// [envType] Environment type, return value is as follows:-product: production environment-dev: development environment-pre: Advance Environment-test: test environment-sit:SIT environment-uat:UAT environment-pet: Pressure measurement environment-stag:STAG environment
  /// [id] Logic Database ID.
  /// [logic] Whether it is a logical Library, the return value is true.
  /// [logicDatabaseId] The ID of the logical Library.
  /// [ownerIdLists] The user ID list of the logical library Owner.
  /// [ownerNameLists] The nickname list of the logical library Owner.
  /// [schemaName] Logical Library name.
  /// [searchName] Logical library search name.
  GetEnterpriseLogicDatabasesDatabase({
    required this.alias,
    required this.databaseIds,
    required this.dbType,
    required this.envType,
    required this.id,
    required this.logic,
    required this.logicDatabaseId,
    required this.ownerIdLists,
    required this.ownerNameLists,
    required this.schemaName,
    required this.searchName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': alias,
      'databaseIds': databaseIds,
      'dbType': dbType,
      'envType': envType,
      'id': id,
      'logic': logic,
      'logicDatabaseId': logicDatabaseId,
      'ownerIdLists': ownerIdLists,
      'ownerNameLists': ownerNameLists,
      'schemaName': schemaName,
      'searchName': searchName,
    };
  }

  factory GetEnterpriseLogicDatabasesDatabase.fromMap(Map<String, dynamic> map) {
    return GetEnterpriseLogicDatabasesDatabase(
      alias: pulumi.Input.fromValue(map['alias'] as String),
      databaseIds: pulumi.Input.fromValue((map['databaseIds'] as List).cast<String>()),
      dbType: pulumi.Input.fromValue(map['dbType'] as String),
      envType: pulumi.Input.fromValue(map['envType'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      logic: pulumi.Input.fromValue(map['logic'] as bool),
      logicDatabaseId: pulumi.Input.fromValue(map['logicDatabaseId'] as String),
      ownerIdLists: pulumi.Input.fromValue((map['ownerIdLists'] as List).cast<String>()),
      ownerNameLists: pulumi.Input.fromValue((map['ownerNameLists'] as List).cast<String>()),
      schemaName: pulumi.Input.fromValue(map['schemaName'] as String),
      searchName: pulumi.Input.fromValue(map['searchName'] as String),
    );
  }
}

