// ignore_for_file: unused_element, unnecessary_cast

/// A conversion workspace's version.
class ConversionWorkspaceInfo {
  /// The commit ID of the conversion workspace.
  final String? commitId;

  /// The resource name (URI) of the conversion workspace.
  final String? name;

  ConversionWorkspaceInfo({
    this.commitId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final commitIdValue = commitId;
    if (commitIdValue != null) {
      map['commitId'] = commitIdValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory ConversionWorkspaceInfo.fromMap(Map<String, dynamic> map) {
    return ConversionWorkspaceInfo(
      commitId: map['commitId'] == null ? null : map['commitId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
