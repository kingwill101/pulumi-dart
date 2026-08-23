// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2InputSourceResourceConfigurationResourceTag {
  /// Tag key.
  final pulumi.Input<String> key;
  /// List of tag values.
  final pulumi.Input<List<String>> values;

  /// Creates a new [V2InputSourceResourceConfigurationResourceTag].
  /// [key] Tag key.
  /// [values] List of tag values.
  const V2InputSourceResourceConfigurationResourceTag({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'values': values,
    };
  }

  factory V2InputSourceResourceConfigurationResourceTag.fromMap(Map<String, dynamic> map) {
    return V2InputSourceResourceConfigurationResourceTag(
      key: pulumi.Input.fromValue(map['key'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
