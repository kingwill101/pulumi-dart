/// Specifies how the secondary replica will be initially seeded. AUTOMATIC enables direct seeding. This method will seed the secondary replica over the network. This method does not require you to backup and restore a copy of the primary database on the replica. MANUAL specifies manual seeding (default). This method requires you to create a backup of the database on the primary replica and manually restore that backup on the secondary replica.
enum SeedingMode {
  valueAUTOMATIC("AUTOMATIC"),
  valueMANUAL("MANUAL");

  const SeedingMode(this.wireValue);
  final String wireValue;

  static SeedingMode fromValue(String value) {
    for (final item in SeedingMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SeedingMode value: $value');
  }
}
