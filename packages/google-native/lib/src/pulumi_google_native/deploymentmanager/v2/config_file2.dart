// ignore_for_file: unused_element, unnecessary_cast

class ConfigFile2 {
  /// The contents of the file.
  final String? content;

  ConfigFile2({
    this.content,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final contentValue = content;
    if (contentValue != null) {
      map['content'] = contentValue;
    }
    return map;
  }

  factory ConfigFile2.fromMap(Map<String, dynamic> map) {
    return ConfigFile2(
      content: map['content'] == null ? null : map['content'] as String,
    );
  }
}
