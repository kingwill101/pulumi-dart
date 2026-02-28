/// Required. The purpose of the key.
enum WorkforcePoolKeyUse {
  keyUseUnspecified("KEY_USE_UNSPECIFIED"),
  encryption("ENCRYPTION");

  const WorkforcePoolKeyUse(this.value);
  final String value;

  static WorkforcePoolKeyUse fromValue(String value) {
    for (final item in WorkforcePoolKeyUse.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WorkforcePoolKeyUse value: $value');
  }
}

