// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A map to describe the settings of an action.
class KeyValuePair {
  /// The name of the setting for the action.
  final pulumi.Input<String> key;
  /// The value of the setting for the action.
  final pulumi.Input<String> value;

  /// Creates a new [KeyValuePair].
  /// [key] The name of the setting for the action.
  /// [value] The value of the setting for the action.
  KeyValuePair({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory KeyValuePair.fromMap(Map<String, dynamic> map) {
    return KeyValuePair(
      key: (map['key'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

