// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppTemplatesTemplateConfigList {
  /// Config key.
  final pulumi.Input<String> key;
  /// Config Value.
  final pulumi.Input<String> value;

  /// Creates a new [GetAppTemplatesTemplateConfigList].
  /// [key] Config key.
  /// [value] Config Value.
  GetAppTemplatesTemplateConfigList({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory GetAppTemplatesTemplateConfigList.fromMap(Map<String, dynamic> map) {
    return GetAppTemplatesTemplateConfigList(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

