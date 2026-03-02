// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Json write settings.
class JsonWriteSettingsResponse {
  /// File pattern of JSON. This setting controls the way a collection of JSON objects will be treated. The default value is 'setOfObjects'. It is case-sensitive.
  final pulumi.Input<dynamic>? filePattern;
  /// The write setting type.
  /// Expected value is 'JsonWriteSettings'.
  final pulumi.Input<String> type;

  /// Creates a new [JsonWriteSettingsResponse].
  /// [filePattern] File pattern of JSON. This setting controls the way a collection of JSON objects will be treated. The default value is 'setOfObjects'. It is case-sensitive.
  /// [type] The write setting type.
  JsonWriteSettingsResponse({
    this.filePattern,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filePattern': ?filePattern,
      'type': type,
    };
  }

  factory JsonWriteSettingsResponse.fromMap(Map<String, dynamic> map) {
    return JsonWriteSettingsResponse(
      filePattern: map['filePattern'] == null ? null : (map['filePattern']).input(),
      type: (map['type'] as String).input(),
    );
  }
}

