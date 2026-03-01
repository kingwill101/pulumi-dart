/// Link type.
enum LinkTypes {
  valueUpdateAlways("UpdateAlways"),
  valueCopyIfNull("CopyIfNull");

  const LinkTypes(this.value);
  final String value;

  static LinkTypes fromValue(String value) {
    for (final item in LinkTypes.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LinkTypes value: $value');
  }
}

