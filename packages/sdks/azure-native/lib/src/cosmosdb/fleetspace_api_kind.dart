import 'package:pulumi/pulumi.dart' as pulumi;

/// The kind of API this fleetspace belongs to. Acceptable values: 'NoSQL'
enum FleetspaceApiKind implements pulumi.PulumiEnum<String> {
  valueNoSQL("NoSQL");

  const FleetspaceApiKind(this.wireValue);
  @override
  final String wireValue;

  static FleetspaceApiKind fromValue(String value) {
    for (final item in FleetspaceApiKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FleetspaceApiKind value: $value');
  }
}
