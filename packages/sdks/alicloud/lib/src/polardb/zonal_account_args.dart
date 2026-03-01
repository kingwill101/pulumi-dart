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
    pulumi.Output<String>? accountDescription,
    required pulumi.Output<String> accountName,
    pulumi.Output<String>? accountPassword,
    pulumi.Output<String>? accountType,
    required pulumi.Output<String> dbClusterId,
  }) :
      accountDescription = pulumi.Input.asOptionalInput<String>(accountDescription),
      accountName = pulumi.Input.asInput<String>(accountName),
      accountPassword = pulumi.Input.asOptionalInput<String>(accountPassword),
      accountType = pulumi.Input.asOptionalInput<String>(accountType),
      dbClusterId = pulumi.Input.asInput<String>(dbClusterId);

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
      accountDescription: map['accountDescription'] == null ? null : pulumi.Output.create<String>(map['accountDescription'] as String),
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      accountPassword: map['accountPassword'] == null ? null : pulumi.Output.create<String>(map['accountPassword'] as String),
      accountType: map['accountType'] == null ? null : pulumi.Output.create<String>(map['accountType'] as String),
      dbClusterId: pulumi.Output.create<String>(map['dbClusterId'] as String),
    );
  }
}

