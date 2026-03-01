// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Database resources.
class DatabaseState {
  /// The name of the account that is authorized to access the database. **NOTE:** From version 1.265.0, `account_name` can be modified. However, only PolarDB for PostgreSQL (Compatible with Oracle) and PolarDB for PostgreSQL cluster can be modified.
  final pulumi.Input<String>? accountName;
  /// The character set that is used by the cluster. For more information, see [Character set tables](https://www.alibabacloud.com/help/en/doc-detail/99716.html).
  final pulumi.Input<String>? characterSetName;
  /// The language that defines the collation rules in the database.
  /// > **NOTE:** The locale must be compatible with the character set set set by `character_set_name`. This parameter is required for a PolarDB for PostgreSQL (Compatible with Oracle) or PolarDB for PostgreSQL cluster. This parameter is optional for a PolarDB for MySQL cluster.
  final pulumi.Input<String>? collate;
  /// The language that indicates the character type of the database.
  /// > **NOTE:** The language must be compatible with the character set that is specified by `character_set_name`. The value that you specify must be the same as the value of `collate`. This parameter is required for PolarDB for PostgreSQL (Compatible with Oracle) clusters or PolarDB for PostgreSQL clusters. This parameter is optional for PolarDB for MySQL clusters.This parameter is required for a PolarDB for PostgreSQL (Compatible with Oracle) or PolarDB for PostgreSQL cluster. This parameter is optional for a PolarDB for MySQL cluster.
  final pulumi.Input<String>? ctype;
  /// The ID of cluster.
  final pulumi.Input<String>? dbClusterId;
  /// The description of the database. The description must meet the following requirements:
  /// - It cannot start with `http://` or `https://`.
  /// - It must be 2 to 256 characters in length.
  final pulumi.Input<String>? dbDescription;
  /// The name of the database. It may consist of lower case letters, numbers, and underlines, and must start with a letterand have no more than 64 characters.
  final pulumi.Input<String>? dbName;
  /// (Available since v1.265.0) The state of the database.
  final pulumi.Input<String>? status;

  /// Creates a new [DatabaseState].
  /// [accountName] The name of the account that is authorized to access the database. **NOTE:** From version 1.265.0, `account_name` can be modified. However, only PolarDB for PostgreSQL (Compatible with Oracle) and PolarDB for PostgreSQL cluster can be modified.
  /// [characterSetName] The character set that is used by the cluster. For more information, see [Character set tables](https://www.alibabacloud.com/help/en/doc-detail/99716.html).
  /// [collate] The language that defines the collation rules in the database.
  /// [ctype] The language that indicates the character type of the database.
  /// [dbClusterId] The ID of cluster.
  /// [dbDescription] The description of the database. The description must meet the following requirements:
  /// [dbName] The name of the database. It may consist of lower case letters, numbers, and underlines, and must start with a letterand have no more than 64 characters.
  /// [status] (Available since v1.265.0) The state of the database.
  DatabaseState({
    pulumi.Output<String>? accountName,
    pulumi.Output<String>? characterSetName,
    pulumi.Output<String>? collate,
    pulumi.Output<String>? ctype,
    pulumi.Output<String>? dbClusterId,
    pulumi.Output<String>? dbDescription,
    pulumi.Output<String>? dbName,
    pulumi.Output<String>? status,
  }) :
      accountName = pulumi.Input.asOptionalInput<String>(accountName),
      characterSetName = pulumi.Input.asOptionalInput<String>(characterSetName),
      collate = pulumi.Input.asOptionalInput<String>(collate),
      ctype = pulumi.Input.asOptionalInput<String>(ctype),
      dbClusterId = pulumi.Input.asOptionalInput<String>(dbClusterId),
      dbDescription = pulumi.Input.asOptionalInput<String>(dbDescription),
      dbName = pulumi.Input.asOptionalInput<String>(dbName),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'characterSetName': ?characterSetName,
      'collate': ?collate,
      'ctype': ?ctype,
      'dbClusterId': ?dbClusterId,
      'dbDescription': ?dbDescription,
      'dbName': ?dbName,
      'status': ?status,
    };
  }

  factory DatabaseState.fromMap(Map<String, dynamic> map) {
    return DatabaseState(
      accountName: map['accountName'] == null ? null : pulumi.Output.create<String>(map['accountName'] as String),
      characterSetName: map['characterSetName'] == null ? null : pulumi.Output.create<String>(map['characterSetName'] as String),
      collate: map['collate'] == null ? null : pulumi.Output.create<String>(map['collate'] as String),
      ctype: map['ctype'] == null ? null : pulumi.Output.create<String>(map['ctype'] as String),
      dbClusterId: map['dbClusterId'] == null ? null : pulumi.Output.create<String>(map['dbClusterId'] as String),
      dbDescription: map['dbDescription'] == null ? null : pulumi.Output.create<String>(map['dbDescription'] as String),
      dbName: map['dbName'] == null ? null : pulumi.Output.create<String>(map['dbName'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

