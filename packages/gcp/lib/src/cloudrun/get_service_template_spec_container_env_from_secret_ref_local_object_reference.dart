// ignore_for_file: unused_element, unnecessary_cast

class GetServiceTemplateSpecContainerEnvFromSecretRefLocalObjectReference {
  /// The name of the Cloud Run Service.
  final String name;

  /// Creates a new [GetServiceTemplateSpecContainerEnvFromSecretRefLocalObjectReference].
  /// [name] The name of the Cloud Run Service.
  GetServiceTemplateSpecContainerEnvFromSecretRefLocalObjectReference({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory GetServiceTemplateSpecContainerEnvFromSecretRefLocalObjectReference.fromMap(
      Map<String, dynamic> map) {
    return GetServiceTemplateSpecContainerEnvFromSecretRefLocalObjectReference(
      name: map['name'] as String,
    );
  }
}
