/// Logic to apply to the filtering conditions. You can specify that, in order to satisfy the filter, a log must match all conditions or must match at least one condition.
enum FilterRequirement {
  mEETSALL("MEETS_ALL"),
  mEETSANY("MEETS_ANY");

  const FilterRequirement(this.value);
  final String value;

  static FilterRequirement fromValue(String value) {
    for (final item in FilterRequirement.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FilterRequirement value: $value');
  }
}

