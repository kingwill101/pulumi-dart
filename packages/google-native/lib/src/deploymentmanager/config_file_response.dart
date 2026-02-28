// ignore_for_file: unused_element, unnecessary_cast

class ConfigFileResponse {
  /// The contents of the file.
  final String content;

  /// Creates a new [ConfigFileResponse].
  /// [content] The contents of the file.
  ConfigFileResponse({
    required this.content,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['content'] = content;
    return map;
  }

  factory ConfigFileResponse.fromMap(Map<String, dynamic> map) {
    return ConfigFileResponse(
      content: map['content'] as String,
    );
  }
}
