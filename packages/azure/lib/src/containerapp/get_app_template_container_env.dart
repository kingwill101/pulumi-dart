// ignore_for_file: unused_element, unnecessary_cast


class GetAppTemplateContainerEnv {
  /// The name of the Container App.
  final String name;
  /// The name of the secret that contains the value for this environment variable.
  final String secretName;
  /// The HTTP Header value.
  final String value;

  /// Creates a new [GetAppTemplateContainerEnv].
  /// [name] The name of the Container App.
  /// [secretName] The name of the secret that contains the value for this environment variable.
  /// [value] The HTTP Header value.
  GetAppTemplateContainerEnv({
    required this.name,
    required this.secretName,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'secretName': secretName,
      'value': value,
    };
  }

  factory GetAppTemplateContainerEnv.fromMap(Map<String, dynamic> map) {
    return GetAppTemplateContainerEnv(
      name: map['name'] as String,
      secretName: map['secretName'] as String,
      value: map['value'] as String,
    );
  }
}

