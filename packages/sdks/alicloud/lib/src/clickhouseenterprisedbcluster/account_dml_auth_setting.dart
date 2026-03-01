// ignore_for_file: unused_element, unnecessary_cast


class AccountDmlAuthSetting {
  /// The list of databases that require authorization. If there are more than one, separate them with commas (,).
  final List<String>? allowDatabases;
  /// List of dictionaries that require authorization. If there are more than one, separate them with commas (,).
  final List<String>? allowDictionaries;
  /// Whether to grant the DDL permission to the database account. Value description:
  final bool ddlAuthority;
  /// Whether to grant the DML permission to the database account. The values are as follows:
  final int dmlAuthority;

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
      allowDatabases: map['allowDatabases'] == null ? null : (map['allowDatabases'] as List).cast<String>(),
      allowDictionaries: map['allowDictionaries'] == null ? null : (map['allowDictionaries'] as List).cast<String>(),
      ddlAuthority: map['ddlAuthority'] as bool,
      dmlAuthority: map['dmlAuthority'] as int,
    );
  }
}

