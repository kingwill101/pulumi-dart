// ignore_for_file: unused_element, unnecessary_cast


class AiInstanceAuthConfigList {
  /// The configuration item name. For more information, see [How to use it](https://www.alibabacloud.com/help/en/rds/apsaradb-rds-for-postgresql/authentication).
  final String? name;
  /// The value of the configuration item.
  final String? value;

  /// Creates a new [AiInstanceAuthConfigList].
  /// [name] The configuration item name. For more information, see [How to use it](https://www.alibabacloud.com/help/en/rds/apsaradb-rds-for-postgresql/authentication).
  /// [value] The value of the configuration item.
  AiInstanceAuthConfigList({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory AiInstanceAuthConfigList.fromMap(Map<String, dynamic> map) {
    return AiInstanceAuthConfigList(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

