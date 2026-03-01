// ignore_for_file: unused_element, unnecessary_cast

class AppVersionSnapshotToolSystemTool {
  /// The description of the app version.
  final String? description;

  /// (Output)
  /// Identifier. The unique identifier of the toolset.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}`
  final String? name;

  /// Creates a new [AppVersionSnapshotToolSystemTool].
  /// [description] The description of the app version.
  /// [name] (Output)
  AppVersionSnapshotToolSystemTool({this.description, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'description': ?description, 'name': ?name};
  }

  factory AppVersionSnapshotToolSystemTool.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotToolSystemTool(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
