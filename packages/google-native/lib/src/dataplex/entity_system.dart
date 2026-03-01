/// Required. Immutable. Identifies the storage system of the entity data.
enum EntitySystem {
  storageSystemUnspecified("STORAGE_SYSTEM_UNSPECIFIED"),
  cloudStorage("CLOUD_STORAGE"),
  bigquery("BIGQUERY");

  const EntitySystem(this.value);
  final String value;

  static EntitySystem fromValue(String value) {
    for (final item in EntitySystem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EntitySystem value: $value');
  }
}
