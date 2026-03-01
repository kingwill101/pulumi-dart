/// The restriction level applied to the cluster's node resource group. If not specified, the default is 'Unrestricted'
enum RestrictionLevel {
  valueUnrestricted("Unrestricted"),
  valueReadOnly("ReadOnly");

  const RestrictionLevel(this.value);
  final String value;

  static RestrictionLevel fromValue(String value) {
    for (final item in RestrictionLevel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RestrictionLevel value: $value');
  }
}

