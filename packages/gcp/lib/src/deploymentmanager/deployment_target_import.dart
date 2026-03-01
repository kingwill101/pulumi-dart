// ignore_for_file: unused_element, unnecessary_cast

class DeploymentTargetImport {
  /// The full contents of the template that you want to import.
  final String? content;

  /// The name of the template to import, as declared in the YAML
  /// configuration.
  final String? name;

  /// Creates a new [DeploymentTargetImport].
  /// [content] The full contents of the template that you want to import.
  /// [name] The name of the template to import, as declared in the YAML
  DeploymentTargetImport({this.content, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'content': ?content, 'name': ?name};
  }

  factory DeploymentTargetImport.fromMap(Map<String, dynamic> map) {
    return DeploymentTargetImport(
      content: map['content'] == null ? null : map['content'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
