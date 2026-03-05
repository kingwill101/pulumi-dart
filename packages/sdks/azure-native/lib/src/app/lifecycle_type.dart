/// The lifecycle type of the session pool.
enum LifecycleType {
  valueTimed("Timed"),
  valueOnContainerExit("OnContainerExit");

  const LifecycleType(this.wireValue);
  final String wireValue;

  static LifecycleType fromValue(String value) {
    for (final item in LifecycleType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LifecycleType value: $value');
  }
}

