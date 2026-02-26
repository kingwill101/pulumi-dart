// ignore_for_file: unused_element, unnecessary_cast

class ServiceTemplateSpecContainerEnvValueFromSecretKeyRef {
  /// A Cloud Secret Manager secret version. Must be 'latest' for the latest
  /// version or an integer for a specific version.
  final String key;

  /// The name of the secret in Cloud Secret Manager. By default, the secret is assumed to be in the same project.
  /// If the secret is in another project, you must define an alias.
  /// An alias definition has the form:
  /// {alias}:projects/{project-id|project-number}/secrets/{secret-name}.
  /// If multiple alias definitions are needed, they must be separated by commas.
  /// The alias definitions must be set on the run.googleapis.com/secrets annotation.
  final String name;

  ServiceTemplateSpecContainerEnvValueFromSecretKeyRef({
    required this.key,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['name'] = name;
    return map;
  }

  factory ServiceTemplateSpecContainerEnvValueFromSecretKeyRef.fromMap(
      Map<String, dynamic> map) {
    return ServiceTemplateSpecContainerEnvValueFromSecretKeyRef(
      key: map['key'] as String,
      name: map['name'] as String,
    );
  }
}
