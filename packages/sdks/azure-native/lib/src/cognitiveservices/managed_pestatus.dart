enum ManagedPEStatus {
  valueInactive("Inactive"),
  valueActive("Active"),
  valueNotApplicable("NotApplicable");

  const ManagedPEStatus(this.value);
  final String value;

  static ManagedPEStatus fromValue(String value) {
    for (final item in ManagedPEStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedPEStatus value: $value');
  }
}

