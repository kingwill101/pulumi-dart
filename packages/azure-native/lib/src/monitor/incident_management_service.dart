/// The incident management service type
enum IncidentManagementService {
  valueIcm("Icm");

  const IncidentManagementService(this.value);
  final String value;

  static IncidentManagementService fromValue(String value) {
    for (final item in IncidentManagementService.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IncidentManagementService value: $value');
  }
}

