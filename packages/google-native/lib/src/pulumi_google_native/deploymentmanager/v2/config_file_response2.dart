// ignore_for_file: unused_element, unnecessary_cast

class ConfigFileResponse2 {
  /// The contents of the file.
  final String content;

  ConfigFileResponse2({
    required this.content,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['content'] = content;
    return map;
  }

  factory ConfigFileResponse2.fromMap(Map<String, dynamic> map) {
    return ConfigFileResponse2(
      content: map['content'] as String,
    );
  }
}
