/// The incident management service type
enum IncidentManagementService {
  icm("Icm");

  const IncidentManagementService(this.wireValue);
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
