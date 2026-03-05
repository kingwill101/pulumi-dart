// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountDmlAuthSetting {
  /// The list of databases that require authorization. If there are more than one, separate them with commas (,).
  final pulumi.Input<List<String>>? allowDatabases;
  /// List of dictionaries that require authorization. If there are more than one, separate them with commas (,).
  final pulumi.Input<List<String>>? allowDictionaries;
  /// Whether to grant the DDL permission to the database account. Value description:
  final pulumi.Input<bool> ddlAuthority;
  /// Whether to grant the DML permission to the database account. The values are as follows:
  final pulumi.Input<int> dmlAuthority;

  /// Creates a new [AccountDmlAuthSetting].
  /// [allowDatabases] The list of databases that require authorization. If there are more than one, separate them with commas (,).
  /// [allowDictionaries] List of dictionaries that require authorization. If there are more than one, separate them with commas (,).
  /// [ddlAuthority] Whether to grant the DDL permission to the database account. Value description:
  /// [dmlAuthority] Whether to grant the DML permission to the database account. The values are as follows:
  AccountDmlAuthSetting({
    this.allowDatabases,
    this.allowDictionaries,
    required this.ddlAuthority,
    required this.dmlAuthority,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowDatabases': ?allowDatabases,
      'allowDictionaries': ?allowDictionaries,
      'ddlAuthority': ddlAuthority,
      'dmlAuthority': dmlAuthority,
    };
  }

  factory AccountDmlAuthSetting.fromMap(Map<String, dynamic> map) {
    return AccountDmlAuthSetting(
      allowDatabases: (() { final guardedValue = map['allowDatabases']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowDictionaries: (() { final guardedValue = map['allowDictionaries']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ddlAuthority: pulumi.Input.fromValue(map['ddlAuthority'] as bool),
      dmlAuthority: pulumi.Input.fromValue(map['dmlAuthority'] as int),
    );
  }
}

