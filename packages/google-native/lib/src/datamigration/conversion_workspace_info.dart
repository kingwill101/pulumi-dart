// ignore_for_file: unused_element, unnecessary_cast

/// A conversion workspace's version.
class ConversionWorkspaceInfo {
  /// The commit ID of the conversion workspace.
  final String? commitId;

  /// The resource name (URI) of the conversion workspace.
  final String? name;

  /// Creates a new [ConversionWorkspaceInfo].
  /// [commitId] The commit ID of the conversion workspace.
  /// [name] The resource name (URI) of the conversion workspace.
  ConversionWorkspaceInfo({this.commitId, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'commitId': ?commitId, 'name': ?name};
  }

  factory ConversionWorkspaceInfo.fromMap(Map<String, dynamic> map) {
    return ConversionWorkspaceInfo(
      commitId: map['commitId'] == null ? null : map['commitId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
