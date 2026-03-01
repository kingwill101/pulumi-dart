/// The lifecycle type of the session pool.
enum LifecycleType {
  valueTimed("Timed"),
  valueOnContainerExit("OnContainerExit");

  const LifecycleType(this.value);
  final String value;

  static LifecycleType fromValue(String value) {
    for (final item in LifecycleType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LifecycleType value: $value');
  }
}

