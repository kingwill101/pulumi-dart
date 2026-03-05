/// Ingress type for the default NginxIngressController custom resource
enum NginxIngressControllerType {
  valueAnnotationControlled("AnnotationControlled"),
  valueExternal("External"),
  valueInternal("Internal"),
  valueNone("None");

  const NginxIngressControllerType(this.wireValue);
  final String wireValue;

  static NginxIngressControllerType fromValue(String value) {
    for (final item in NginxIngressControllerType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NginxIngressControllerType value: $value');
  }
}

