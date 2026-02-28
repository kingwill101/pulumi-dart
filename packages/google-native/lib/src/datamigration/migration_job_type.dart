/// Required. The migration job type.
enum MigrationJobType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  oneTime("ONE_TIME"),
  continuous("CONTINUOUS");

  const MigrationJobType(this.value);
  final String value;

  static MigrationJobType fromValue(String value) {
    for (final item in MigrationJobType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MigrationJobType value: $value');
  }
}

