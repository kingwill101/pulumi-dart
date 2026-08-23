/// Specifies how private endpoints are used with this connection: 'Required', 'NotRequired', or 'NotApplicable'.
enum ManagedPERequirement {
  valueRequired("Required"),
  valueNotRequired("NotRequired"),
  valueNotApplicable("NotApplicable");

  const ManagedPERequirement(this.wireValue);
  final String wireValue;

  static ManagedPERequirement fromValue(String value) {
    for (final item in ManagedPERequirement.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedPERequirement value: $value');
  }
}
