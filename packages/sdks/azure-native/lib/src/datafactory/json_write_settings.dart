// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Json write settings.
class JsonWriteSettings {
  /// File pattern of JSON. This setting controls the way a collection of JSON objects will be treated. The default value is 'setOfObjects'. It is case-sensitive.
  final pulumi.Input<dynamic>? filePattern;
  /// The write setting type.
  /// Expected value is 'JsonWriteSettings'.
  final pulumi.Input<String> type;

  /// Creates a new [JsonWriteSettings].
  /// [filePattern] File pattern of JSON. This setting controls the way a collection of JSON objects will be treated. The default value is 'setOfObjects'. It is case-sensitive.
  /// [type] The write setting type.
  const JsonWriteSettings({
    this.filePattern,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filePattern': ?filePattern,
      'type': type,
    };
  }

  factory JsonWriteSettings.fromMap(Map<String, dynamic> map) {
    return JsonWriteSettings(
      filePattern: (() { final guardedValue = map['filePattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
