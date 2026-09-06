import 'package:pulumi/pulumi.dart' as pulumi;

/// Client incident source. ex : source system name where the incident is created
enum IncidentSource implements pulumi.PulumiEnum<String> {
  azureDevops("AzureDevops"),
  iCM("ICM"),
  jira("Jira"),
  serviceNow("ServiceNow"),
  other("Other");

  const IncidentSource(this.wireValue);
  @override
  final String wireValue;

  static IncidentSource fromValue(String value) {
    for (final item in IncidentSource.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IncidentSource value: $value');
  }
}
