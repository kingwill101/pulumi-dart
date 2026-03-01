/// Action if Kubernetes namespace with same name already exists.
enum AdoptionPolicy {
  valueNever("Never"),
  valueIfIdentical("IfIdentical"),
  valueAlways("Always");

  const AdoptionPolicy(this.value);
  final String value;

  static AdoptionPolicy fromValue(String value) {
    for (final item in AdoptionPolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AdoptionPolicy value: $value');
  }
}

