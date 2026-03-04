/// The kind of API this fleetspace belongs to. Acceptable values: 'NoSQL'
enum FleetspaceApiKind {
  valueNoSQL("NoSQL");

  const FleetspaceApiKind(this.wireValue);
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
