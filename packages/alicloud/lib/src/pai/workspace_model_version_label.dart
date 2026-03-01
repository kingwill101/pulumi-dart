// ignore_for_file: unused_element, unnecessary_cast


class WorkspaceModelVersionLabel {
  /// label key.
  final String? key;
  /// label value.
  final String? value;

  /// Creates a new [WorkspaceModelVersionLabel].
  /// [key] label key.
  /// [value] label value.
  WorkspaceModelVersionLabel({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory WorkspaceModelVersionLabel.fromMap(Map<String, dynamic> map) {
    return WorkspaceModelVersionLabel(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

