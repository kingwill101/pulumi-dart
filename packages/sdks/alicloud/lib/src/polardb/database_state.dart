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
    this.accountName,
    this.characterSetName,
    this.collate,
    this.ctype,
    this.dbClusterId,
    this.dbDescription,
    this.dbName,
    this.status,
  });

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
      accountName: map['accountName'] == null ? null : (map['accountName'] as String).input(),
      characterSetName: map['characterSetName'] == null ? null : (map['characterSetName'] as String).input(),
      collate: map['collate'] == null ? null : (map['collate'] as String).input(),
      ctype: map['ctype'] == null ? null : (map['ctype'] as String).input(),
      dbClusterId: map['dbClusterId'] == null ? null : (map['dbClusterId'] as String).input(),
      dbDescription: map['dbDescription'] == null ? null : (map['dbDescription'] as String).input(),
      dbName: map['dbName'] == null ? null : (map['dbName'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

