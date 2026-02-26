/// Required. The migration job type.
enum MigrationJobType2 {
  typeUnspecified("TYPE_UNSPECIFIED"),
  oneTime("ONE_TIME"),
  continuous("CONTINUOUS");

  const MigrationJobType2(this.value);
  final String value;

  static MigrationJobType2 fromValue(String value) {
    for (final item in MigrationJobType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MigrationJobType2 value: $value');
  }
}
