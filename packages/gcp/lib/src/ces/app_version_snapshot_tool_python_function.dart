// ignore_for_file: unused_element, unnecessary_cast

class AppVersionSnapshotToolPythonFunction {
  /// The description of the app version.
  final String? description;

  /// (Output)
  /// Identifier. The unique identifier of the toolset.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}`
  final String? name;

  /// (Output)
  /// The Python code to execute for the tool.
  final String? pythonCode;

  /// Creates a new [AppVersionSnapshotToolPythonFunction].
  /// [description] The description of the app version.
  /// [name] (Output)
  /// [pythonCode] (Output)
  AppVersionSnapshotToolPythonFunction({
    this.description,
    this.name,
    this.pythonCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'pythonCode': ?pythonCode,
    };
  }

  factory AppVersionSnapshotToolPythonFunction.fromMap(
    Map<String, dynamic> map,
  ) {
    return AppVersionSnapshotToolPythonFunction(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      pythonCode: map['pythonCode'] == null
          ? null
          : map['pythonCode'] as String,
    );
  }
}
