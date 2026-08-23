/// Represents type of the object being operated on. Possible values are primary or contributor.
enum MaccEntityType {
  primary("Primary"),
  contributor("Contributor");

  const MaccEntityType(this.wireValue);
  final String wireValue;

  static MaccEntityType fromValue(String value) {
    for (final item in MaccEntityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MaccEntityType value: $value');
  }
}
