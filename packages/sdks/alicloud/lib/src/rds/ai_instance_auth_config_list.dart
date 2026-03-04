// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiInstanceAuthConfigList {
  /// The configuration item name. For more information, see [How to use it](https://www.alibabacloud.com/help/en/rds/apsaradb-rds-for-postgresql/authentication).
  final pulumi.Input<String>? name;

  /// The value of the configuration item.
  final pulumi.Input<String>? value;

  /// Creates a new [AiInstanceAuthConfigList].
  /// [name] The configuration item name. For more information, see [How to use it](https://www.alibabacloud.com/help/en/rds/apsaradb-rds-for-postgresql/authentication).
  /// [value] The value of the configuration item.
  AiInstanceAuthConfigList({this.name, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'value': ?value};
  }

  factory AiInstanceAuthConfigList.fromMap(Map<String, dynamic> map) {
    return AiInstanceAuthConfigList(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
