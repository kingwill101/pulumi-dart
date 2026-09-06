import 'package:pulumi/pulumi.dart' as pulumi;

/// Database principal role.
enum DatabasePrincipalRole implements pulumi.PulumiEnum<String> {
  valueAdmin("Admin"),
  valueIngestor("Ingestor"),
  valueMonitor("Monitor"),
  valueUser("User"),
  valueUnrestrictedViewer("UnrestrictedViewer"),
  valueViewer("Viewer");

  const DatabasePrincipalRole(this.wireValue);
  @override
  final String wireValue;

  static DatabasePrincipalRole fromValue(String value) {
    for (final item in DatabasePrincipalRole.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabasePrincipalRole value: $value');
  }
}
