/// The kind of API this fleetspace belongs to. Acceptable values: 'NoSQL'
enum FleetspaceApiKind {
  valueNoSQL("NoSQL");

  const FleetspaceApiKind(this.value);
  final String value;

  static FleetspaceApiKind fromValue(String value) {
    for (final item in FleetspaceApiKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FleetspaceApiKind value: $value');
  }
}

