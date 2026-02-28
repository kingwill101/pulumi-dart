/// Required. The migration job type.
enum MigrationJobTypeDatamigrationV1beta1 {
  typeUnspecified("TYPE_UNSPECIFIED"),
  oneTime("ONE_TIME"),
  continuous("CONTINUOUS");

  const MigrationJobTypeDatamigrationV1beta1(this.value);
  final String value;

  static MigrationJobTypeDatamigrationV1beta1 fromValue(String value) {
    for (final item in MigrationJobTypeDatamigrationV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MigrationJobTypeDatamigrationV1beta1 value: $value');
  }
}

