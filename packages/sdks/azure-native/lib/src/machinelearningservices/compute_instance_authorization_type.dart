/// The Compute Instance Authorization type. Available values are personal (default).
enum ComputeInstanceAuthorizationType {
  valuePersonal("personal");

  const ComputeInstanceAuthorizationType(this.value);
  final String value;

  static ComputeInstanceAuthorizationType fromValue(String value) {
    for (final item in ComputeInstanceAuthorizationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ComputeInstanceAuthorizationType value: $value');
  }
}

