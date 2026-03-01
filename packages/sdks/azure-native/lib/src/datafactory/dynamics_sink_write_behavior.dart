/// The write behavior for the operation.
enum DynamicsSinkWriteBehavior {
  valueUpsert("Upsert");

  const DynamicsSinkWriteBehavior(this.value);
  final String value;

  static DynamicsSinkWriteBehavior fromValue(String value) {
    for (final item in DynamicsSinkWriteBehavior.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DynamicsSinkWriteBehavior value: $value');
  }
}

