// ignore_for_file: unused_element, unnecessary_cast


class WorkspaceDatasetLabel {
  /// The key of the tag. The length is limited to 128 bytes. "=" and "," are not supported.
  final String? key;
  /// The value of the tag. The length is limited to 128 bytes. "=" and "," are not supported.
  final String? value;

  /// Creates a new [WorkspaceDatasetLabel].
  /// [key] The key of the tag. The length is limited to 128 bytes. "=" and "," are not supported.
  /// [value] The value of the tag. The length is limited to 128 bytes. "=" and "," are not supported.
  WorkspaceDatasetLabel({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory WorkspaceDatasetLabel.fromMap(Map<String, dynamic> map) {
    return WorkspaceDatasetLabel(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

