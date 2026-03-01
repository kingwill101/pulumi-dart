// ignore_for_file: unused_element, unnecessary_cast


class GetDatabaseUserSettingOpensearchAcl {
  final String index;
  final String permission;

  /// Creates a new [GetDatabaseUserSettingOpensearchAcl].
  /// [index] Required.
  /// [permission] Required.
  GetDatabaseUserSettingOpensearchAcl({
    required this.index,
    required this.permission,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'index': index,
      'permission': permission,
    };
  }

  factory GetDatabaseUserSettingOpensearchAcl.fromMap(Map<String, dynamic> map) {
    return GetDatabaseUserSettingOpensearchAcl(
      index: map['index'] as String,
      permission: map['permission'] as String,
    );
  }
}

