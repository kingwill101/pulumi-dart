/// Ingress type for the default NginxIngressController custom resource
enum NginxIngressControllerType {
  valueAnnotationControlled("AnnotationControlled"),
  valueExternal("External"),
  valueInternal("Internal"),
  valueNone("None");

  const NginxIngressControllerType(this.value);
  final String value;

  static NginxIngressControllerType fromValue(String value) {
    for (final item in NginxIngressControllerType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NginxIngressControllerType value: $value');
  }
}

