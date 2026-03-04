// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OssExportConfigColumn {
  /// The name of the key.
  final pulumi.Input<String> name;

  /// Type of configuration name.
  final pulumi.Input<String> type;

  /// Creates a new [OssExportConfigColumn].
  /// [name] The name of the key.
  /// [type] Type of configuration name.
  OssExportConfigColumn({required this.name, required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'type': type};
  }

  factory OssExportConfigColumn.fromMap(Map<String, dynamic> map) {
    return OssExportConfigColumn(
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
