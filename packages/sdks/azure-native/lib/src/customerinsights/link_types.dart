/// Link type.
enum LinkTypes {
  valueUpdateAlways("UpdateAlways"),
  valueCopyIfNull("CopyIfNull");

  const LinkTypes(this.wireValue);
  final String wireValue;

  static LinkTypes fromValue(String value) {
    for (final item in LinkTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LinkTypes value: $value');
  }
}
