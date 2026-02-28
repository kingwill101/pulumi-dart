// ignore_for_file: unused_element, unnecessary_cast

class ServiceTemplateSpecContainerEnvFromConfigMapRefLocalObjectReference {
  /// Name of the referent.
  final String name;

  /// Creates a new [ServiceTemplateSpecContainerEnvFromConfigMapRefLocalObjectReference].
  /// [name] Name of the referent.
  ServiceTemplateSpecContainerEnvFromConfigMapRefLocalObjectReference({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory ServiceTemplateSpecContainerEnvFromConfigMapRefLocalObjectReference.fromMap(
      Map<String, dynamic> map) {
    return ServiceTemplateSpecContainerEnvFromConfigMapRefLocalObjectReference(
      name: map['name'] as String,
    );
  }
}
