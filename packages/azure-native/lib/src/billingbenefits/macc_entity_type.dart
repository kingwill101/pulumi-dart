/// Represents type of the object being operated on. Possible values are primary or contributor.
enum MaccEntityType {
  valuePrimary("Primary"),
  valueContributor("Contributor");

  const MaccEntityType(this.value);
  final String value;

  static MaccEntityType fromValue(String value) {
    for (final item in MaccEntityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MaccEntityType value: $value');
  }
}

