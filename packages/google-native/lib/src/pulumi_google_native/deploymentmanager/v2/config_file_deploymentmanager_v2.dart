// ignore_for_file: unused_element, unnecessary_cast

class ConfigFileDeploymentmanagerV2 {
  /// The contents of the file.
  final String? content;

  ConfigFileDeploymentmanagerV2({
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

  factory ConfigFileDeploymentmanagerV2.fromMap(Map<String, dynamic> map) {
    return ConfigFileDeploymentmanagerV2(
      content: map['content'] == null ? null : map['content'] as String,
    );
  }
}
