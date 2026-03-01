/// Specifies whether the filter is an allow list or deny list. For more detail, please refer to the FilterType model.
enum FilterType {
  allow("Allow"),
  deny("Deny");

  const FilterType(this.value);
  final String value;

  static FilterType fromValue(String value) {
    for (final item in FilterType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FilterType value: $value');
  }
}

