enum ManagedPERequirement {
  valueRequired("Required"),
  valueNotRequired("NotRequired"),
  valueNotApplicable("NotApplicable");

  const ManagedPERequirement(this.value);
  final String value;

  static ManagedPERequirement fromValue(String value) {
    for (final item in ManagedPERequirement.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedPERequirement value: $value');
  }
}

