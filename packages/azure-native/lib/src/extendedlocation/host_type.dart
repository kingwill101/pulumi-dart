/// Type of host the Custom Locations is referencing (Kubernetes, etc...).
enum HostType {
  valueKubernetes("Kubernetes");

  const HostType(this.value);
  final String value;

  static HostType fromValue(String value) {
    for (final item in HostType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HostType value: $value');
  }
}

