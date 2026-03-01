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
    pulumi.Output<String>? alias,
    pulumi.Output<List<String>>? databaseIds,
    pulumi.Output<String>? dbType,
    pulumi.Output<String>? envType,
    pulumi.Output<bool>? logic,
    pulumi.Output<String>? logicDatabaseId,
    pulumi.Output<List<String>>? ownerIdLists,
    pulumi.Output<List<String>>? ownerNameLists,
    pulumi.Output<String>? schemaName,
    pulumi.Output<String>? searchName,
  }) :
      alias = pulumi.Input.asOptionalInput<String>(alias),
      databaseIds = pulumi.Input.asOptionalInput<List<String>>(databaseIds),
      dbType = pulumi.Input.asOptionalInput<String>(dbType),
      envType = pulumi.Input.asOptionalInput<String>(envType),
      logic = pulumi.Input.asOptionalInput<bool>(logic),
      logicDatabaseId = pulumi.Input.asOptionalInput<String>(logicDatabaseId),
      ownerIdLists = pulumi.Input.asOptionalInput<List<String>>(ownerIdLists),
      ownerNameLists = pulumi.Input.asOptionalInput<List<String>>(ownerNameLists),
      schemaName = pulumi.Input.asOptionalInput<String>(schemaName),
      searchName = pulumi.Input.asOptionalInput<String>(searchName);

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
      alias: map['alias'] == null ? null : pulumi.Output.create<String>(map['alias'] as String),
      databaseIds: map['databaseIds'] == null ? null : pulumi.Output.create<List<String>>((map['databaseIds'] as List).cast<String>()),
      dbType: map['dbType'] == null ? null : pulumi.Output.create<String>(map['dbType'] as String),
      envType: map['envType'] == null ? null : pulumi.Output.create<String>(map['envType'] as String),
      logic: map['logic'] == null ? null : pulumi.Output.create<bool>(map['logic'] as bool),
      logicDatabaseId: map['logicDatabaseId'] == null ? null : pulumi.Output.create<String>(map['logicDatabaseId'] as String),
      ownerIdLists: map['ownerIdLists'] == null ? null : pulumi.Output.create<List<String>>((map['ownerIdLists'] as List).cast<String>()),
      ownerNameLists: map['ownerNameLists'] == null ? null : pulumi.Output.create<List<String>>((map['ownerNameLists'] as List).cast<String>()),
      schemaName: map['schemaName'] == null ? null : pulumi.Output.create<String>(map['schemaName'] as String),
      searchName: map['searchName'] == null ? null : pulumi.Output.create<String>(map['searchName'] as String),
    );
  }
}

