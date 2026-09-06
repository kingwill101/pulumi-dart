import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the policy to be used. Default is Placement.
enum PropagationType implements pulumi.PulumiEnum<String> {
  placement("Placement");

  const PropagationType(this.wireValue);
  @override
  final String wireValue;

  static PropagationType fromValue(String value) {
    for (final item in PropagationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PropagationType value: $value');
  }
}
