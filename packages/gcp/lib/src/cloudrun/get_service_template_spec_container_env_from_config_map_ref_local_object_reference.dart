// ignore_for_file: unused_element, unnecessary_cast

class GetServiceTemplateSpecContainerEnvFromConfigMapRefLocalObjectReference {
  /// The name of the Cloud Run Service.
  final String name;

  /// Creates a new [GetServiceTemplateSpecContainerEnvFromConfigMapRefLocalObjectReference].
  /// [name] The name of the Cloud Run Service.
  GetServiceTemplateSpecContainerEnvFromConfigMapRefLocalObjectReference({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory GetServiceTemplateSpecContainerEnvFromConfigMapRefLocalObjectReference.fromMap(
      Map<String, dynamic> map) {
    return GetServiceTemplateSpecContainerEnvFromConfigMapRefLocalObjectReference(
      name: map['name'] as String,
    );
  }
}
