// ignore_for_file: unused_element, unnecessary_cast

class ConfigFileResponse3 {
  /// The contents of the file.
  final String content;

  ConfigFileResponse3({
    required this.content,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['content'] = content;
    return map;
  }

  factory ConfigFileResponse3.fromMap(Map<String, dynamic> map) {
    return ConfigFileResponse3(
      content: map['content'] as String,
    );
  }
}
