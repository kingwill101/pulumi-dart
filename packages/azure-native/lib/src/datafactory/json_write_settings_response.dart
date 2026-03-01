// ignore_for_file: unused_element, unnecessary_cast


/// Json write settings.
class JsonWriteSettingsResponse {
  /// File pattern of JSON. This setting controls the way a collection of JSON objects will be treated. The default value is 'setOfObjects'. It is case-sensitive.
  final dynamic filePattern;
  /// The write setting type.
  /// Expected value is 'JsonWriteSettings'.
  final String type;

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
      filePattern: map['filePattern'] == null ? null : map['filePattern'],
      type: map['type'] as String,
    );
  }
}

