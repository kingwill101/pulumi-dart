import 'package:pulumi/pulumi.dart' as pulumi;

/// Customer resource transit state.
enum CustomerTransitState implements pulumi.PulumiEnum<String> {
  noTransit("NoTransit"),
  combinedTransit("CombinedTransit"),
  transitOnly("TransitOnly");

  const CustomerTransitState(this.wireValue);
  @override
  final String wireValue;

  static CustomerTransitState fromValue(String value) {
    for (final item in CustomerTransitState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CustomerTransitState value: $value');
  }
}
