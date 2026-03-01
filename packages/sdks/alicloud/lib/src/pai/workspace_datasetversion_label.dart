// ignore_for_file: unused_element, unnecessary_cast


class WorkspaceDatasetversionLabel {
  /// The key of the tags
  final String? key;
  /// The value of the tags
  final String? value;

  /// Creates a new [WorkspaceDatasetversionLabel].
  /// [key] The key of the tags
  /// [value] The value of the tags
  WorkspaceDatasetversionLabel({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory WorkspaceDatasetversionLabel.fromMap(Map<String, dynamic> map) {
    return WorkspaceDatasetversionLabel(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

