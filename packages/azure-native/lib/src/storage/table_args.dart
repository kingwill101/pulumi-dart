// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_signed_identifier.dart';

/// {@template pulumi_storage_table_args_doc}
/// The set of arguments for Table.
/// {@endtemplate}
/// {@macro pulumi_storage_table_args_doc}
class TableArgs {
  /// The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  final pulumi.Input<String> accountName;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// List of stored access policies specified on the table.
  final pulumi.Input<List<TableSignedIdentifier>>? signedIdentifiers;
  /// A table name must be unique within a storage account and must be between 3 and 63 characters.The name must comprise of only alphanumeric characters and it cannot begin with a numeric character.
  final pulumi.Input<String>? tableName;

  /// Creates a new [TableArgs].
  /// [accountName] The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  /// [signedIdentifiers] List of stored access policies specified on the table.
  /// [tableName] A table name must be unique within a storage account and must be between 3 and 63 characters.The name must comprise of only alphanumeric characters and it cannot begin with a numeric character.
  TableArgs({
    required String accountName,
    required String resourceGroupName,
    List<TableSignedIdentifier>? signedIdentifiers,
    String? tableName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      signedIdentifiers = pulumi.Input.asOptionalInput<List<TableSignedIdentifier>>(signedIdentifiers),
      tableName = pulumi.Input.asOptionalInput<String>(tableName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'resourceGroupName': resourceGroupName,
      'signedIdentifiers': ?pulumi.Input.mapOptionalInputValue<List<TableSignedIdentifier>, List<Map<String, dynamic>>>(signedIdentifiers, (value) => pulumi.Input.encodeList<TableSignedIdentifier, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tableName': ?tableName,
    };
  }

  factory TableArgs.fromMap(Map<String, dynamic> map) {
    return TableArgs(
      accountName: map['accountName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      signedIdentifiers: map['signedIdentifiers'] == null ? null : pulumi.Input.decodeList<TableSignedIdentifier>(map['signedIdentifiers'], (value) => TableSignedIdentifier.fromMap((value as Map).cast<String, dynamic>())),
      tableName: map['tableName'] == null ? null : map['tableName'] as String,
    );
  }
}

