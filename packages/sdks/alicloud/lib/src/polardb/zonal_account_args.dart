// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_polardb_zonal_account_zonal_account_args_doc}
/// The set of arguments for ZonalAccount.
/// {@endtemplate}
/// {@macro pulumi_polardb_zonal_account_zonal_account_args_doc}
class ZonalAccountArgs {
  /// Account description. It cannot begin with https://. It must start with a Chinese character or English letter. It can include Chinese and English characters, underlines (_), hyphens (-), and numbers. The length may be 2-256 characters.
  final pulumi.Input<String>? accountDescription;
  /// Operation account requiring a uniqueness check. It may consist of lower case letters, numbers, and underlines, and must start with a letter and have no more than 16 characters.
  final pulumi.Input<String> accountName;
  /// Operation password. It may consist of letters, digits, or underlines, with a length of 6 to 32 characters.
  final pulumi.Input<String>? accountPassword;
  /// Account type, Valid values are `Normal`, `Super`, Default to `Normal`.
  final pulumi.Input<String>? accountType;
  /// The Id of cluster in which account belongs.
  final pulumi.Input<String> dbClusterId;

  /// Creates a new [ZonalAccountArgs].
  /// [accountDescription] Account description. It cannot begin with https://. It must start with a Chinese character or English letter. It can include Chinese and English characters, underlines (_), hyphens (-), and numbers. The length may be 2-256 characters.
  /// [accountName] Operation account requiring a uniqueness check. It may consist of lower case letters, numbers, and underlines, and must start with a letter and have no more than 16 characters.
  /// [accountPassword] Operation password. It may consist of letters, digits, or underlines, with a length of 6 to 32 characters.
  /// [accountType] Account type, Valid values are `Normal`, `Super`, Default to `Normal`.
  /// [dbClusterId] The Id of cluster in which account belongs.
  ZonalAccountArgs({
    this.accountDescription,
    required this.accountName,
    this.accountPassword,
    this.accountType,
    required this.dbClusterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountDescription': ?accountDescription,
      'accountName': accountName,
      'accountPassword': ?accountPassword,
      'accountType': ?accountType,
      'dbClusterId': dbClusterId,
    };
  }

  factory ZonalAccountArgs.fromMap(Map<String, dynamic> map) {
    return ZonalAccountArgs(
      accountDescription: map['accountDescription'] == null ? null : (map['accountDescription'] as String).input(),
      accountName: (map['accountName'] as String).input(),
      accountPassword: map['accountPassword'] == null ? null : (map['accountPassword'] as String).input(),
      accountType: map['accountType'] == null ? null : (map['accountType'] as String).input(),
      dbClusterId: (map['dbClusterId'] as String).input(),
    );
  }
}

