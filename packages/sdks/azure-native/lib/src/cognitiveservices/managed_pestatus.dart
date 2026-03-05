enum ManagedPEStatus {
  valueInactive("Inactive"),
  valueActive("Active"),
  valueNotApplicable("NotApplicable");

  const ManagedPEStatus(this.wireValue);
  final String wireValue;

  static ManagedPEStatus fromValue(String value) {
    for (final item in ManagedPEStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedPEStatus value: $value');
  }
}

