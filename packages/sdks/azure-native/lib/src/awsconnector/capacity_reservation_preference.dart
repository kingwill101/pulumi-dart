import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum CapacityReservationPreference implements pulumi.PulumiEnum<String> {
  none("none"),
  open("open");

  const CapacityReservationPreference(this.wireValue);
  @override
  final String wireValue;

  static CapacityReservationPreference fromValue(String value) {
    for (final item in CapacityReservationPreference.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CapacityReservationPreference value: $value');
  }
}
