// ignore_for_file: unused_element, unnecessary_cast


class WorkspaceModelLabel {
  /// label key
  final String? key;
  /// label value
  final String? value;

  /// Creates a new [WorkspaceModelLabel].
  /// [key] label key
  /// [value] label value
  WorkspaceModelLabel({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory WorkspaceModelLabel.fromMap(Map<String, dynamic> map) {
    return WorkspaceModelLabel(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

