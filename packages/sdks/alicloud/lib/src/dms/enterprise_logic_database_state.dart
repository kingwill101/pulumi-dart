// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EnterpriseLogicDatabase resources.
class EnterpriseLogicDatabaseState {
  /// Logical Library alias.
  final pulumi.Input<String>? alias;
  /// Sub-Database ID
  final pulumi.Input<List<String>>? databaseIds;
  /// Database type.
  final pulumi.Input<String>? dbType;
  /// Environment type, return value is as follows:-product: production environment-dev: development environment-pre: Advance Environment-test: test environment-sit:SIT environment-uat:UAT environment-pet: Pressure measurement environment-stag:STAG environment
  final pulumi.Input<String>? envType;
  /// Whether it is a logical Library, the return value is true.
  final pulumi.Input<bool>? logic;
  /// The ID of the logical Library.
  final pulumi.Input<String>? logicDatabaseId;
  /// The user ID list of the logical library Owner.
  final pulumi.Input<List<String>>? ownerIdLists;
  /// The nickname list of the logical library Owner.
  final pulumi.Input<List<String>>? ownerNameLists;
  /// Logical Library name.
  final pulumi.Input<String>? schemaName;
  /// Logical library search name.
  final pulumi.Input<String>? searchName;

  /// Creates a new [EnterpriseLogicDatabaseState].
  /// [alias] Logical Library alias.
  /// [databaseIds] Sub-Database ID
  /// [dbType] Database type.
  /// [envType] Environment type, return value is as follows:-product: production environment-dev: development environment-pre: Advance Environment-test: test environment-sit:SIT environment-uat:UAT environment-pet: Pressure measurement environment-stag:STAG environment
  /// [logic] Whether it is a logical Library, the return value is true.
  /// [logicDatabaseId] The ID of the logical Library.
  /// [ownerIdLists] The user ID list of the logical library Owner.
  /// [ownerNameLists] The nickname list of the logical library Owner.
  /// [schemaName] Logical Library name.
  /// [searchName] Logical library search name.
  EnterpriseLogicDatabaseState({
    this.alias,
    this.databaseIds,
    this.dbType,
    this.envType,
    this.logic,
    this.logicDatabaseId,
    this.ownerIdLists,
    this.ownerNameLists,
    this.schemaName,
    this.searchName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': ?alias,
      'databaseIds': ?databaseIds,
      'dbType': ?dbType,
      'envType': ?envType,
      'logic': ?logic,
      'logicDatabaseId': ?logicDatabaseId,
      'ownerIdLists': ?ownerIdLists,
      'ownerNameLists': ?ownerNameLists,
      'schemaName': ?schemaName,
      'searchName': ?searchName,
    };
  }

  factory EnterpriseLogicDatabaseState.fromMap(Map<String, dynamic> map) {
    return EnterpriseLogicDatabaseState(
      alias: map['alias'] == null ? null : (map['alias'] as String).input(),
      databaseIds: map['databaseIds'] == null ? null : ((map['databaseIds'] as List).cast<String>()).input(),
      dbType: map['dbType'] == null ? null : (map['dbType'] as String).input(),
      envType: map['envType'] == null ? null : (map['envType'] as String).input(),
      logic: map['logic'] == null ? null : (map['logic'] as bool).input(),
      logicDatabaseId: map['logicDatabaseId'] == null ? null : (map['logicDatabaseId'] as String).input(),
      ownerIdLists: map['ownerIdLists'] == null ? null : ((map['ownerIdLists'] as List).cast<String>()).input(),
      ownerNameLists: map['ownerNameLists'] == null ? null : ((map['ownerNameLists'] as List).cast<String>()).input(),
      schemaName: map['schemaName'] == null ? null : (map['schemaName'] as String).input(),
      searchName: map['searchName'] == null ? null : (map['searchName'] as String).input(),
    );
  }
}

