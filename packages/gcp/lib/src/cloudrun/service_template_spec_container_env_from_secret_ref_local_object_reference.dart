// ignore_for_file: unused_element, unnecessary_cast

class ServiceTemplateSpecContainerEnvFromSecretRefLocalObjectReference {
  /// Name of the referent.
  final String name;

  /// Creates a new [ServiceTemplateSpecContainerEnvFromSecretRefLocalObjectReference].
  /// [name] Name of the referent.
  ServiceTemplateSpecContainerEnvFromSecretRefLocalObjectReference({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory ServiceTemplateSpecContainerEnvFromSecretRefLocalObjectReference.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServiceTemplateSpecContainerEnvFromSecretRefLocalObjectReference(
      name: map['name'] as String,
    );
  }
}
