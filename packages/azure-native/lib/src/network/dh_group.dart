/// The DH Group used in IKE Phase 1 for initial SA.
enum DhGroup {
  valueNone("None"),
  valueDHGroup1("DHGroup1"),
  valueDHGroup2("DHGroup2"),
  valueDHGroup14("DHGroup14"),
  valueDHGroup2048("DHGroup2048"),
  valueECP256("ECP256"),
  valueECP384("ECP384"),
  valueDHGroup24("DHGroup24");

  const DhGroup(this.value);
  final String value;

  static DhGroup fromValue(String value) {
    for (final item in DhGroup.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DhGroup value: $value');
  }
}

