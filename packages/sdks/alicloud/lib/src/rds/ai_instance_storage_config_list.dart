// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiInstanceStorageConfigList {
  /// The configuration item name. For more information, see [How to use it](https://www.alibabacloud.com/help/en/rds/apsaradb-rds-for-postgresql/storage).
  final pulumi.Input<String>? name;
  /// The value of the configuration item.
  final pulumi.Input<String>? value;

  /// Creates a new [AiInstanceStorageConfigList].
  /// [name] The configuration item name. For more information, see [How to use it](https://www.alibabacloud.com/help/en/rds/apsaradb-rds-for-postgresql/storage).
  /// [value] The value of the configuration item.
  AiInstanceStorageConfigList({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory AiInstanceStorageConfigList.fromMap(Map<String, dynamic> map) {
    return AiInstanceStorageConfigList(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

