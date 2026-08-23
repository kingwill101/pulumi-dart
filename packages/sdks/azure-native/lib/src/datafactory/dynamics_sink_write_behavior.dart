/// The write behavior for the operation.
enum DynamicsSinkWriteBehavior {
  upsert("Upsert");

  const DynamicsSinkWriteBehavior(this.wireValue);
  final String wireValue;

  static DynamicsSinkWriteBehavior fromValue(String value) {
    for (final item in DynamicsSinkWriteBehavior.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DynamicsSinkWriteBehavior value: $value');
  }
}
