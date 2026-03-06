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
  const AiInstanceStorageConfigList({
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
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

