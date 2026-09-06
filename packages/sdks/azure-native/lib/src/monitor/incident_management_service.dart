import 'package:pulumi/pulumi.dart' as pulumi;

/// The incident management service type
enum IncidentManagementService implements pulumi.PulumiEnum<String> {
  icm("Icm");

  const IncidentManagementService(this.wireValue);
  @override
  final String wireValue;

  static IncidentManagementService fromValue(String value) {
    for (final item in IncidentManagementService.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IncidentManagementService value: $value');
  }
}
