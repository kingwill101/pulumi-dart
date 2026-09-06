import 'package:pulumi/pulumi.dart' as pulumi;

/// Role type.
enum RoleTypes implements pulumi.PulumiEnum<String> {
  valueIOT("IOT"),
  valueASA("ASA"),
  valueFunctions("Functions"),
  valueCognitive("Cognitive"),
  valueMEC("MEC"),
  valueCloudEdgeManagement("CloudEdgeManagement"),
  valueKubernetes("Kubernetes");

  const RoleTypes(this.wireValue);
  @override
  final String wireValue;

  static RoleTypes fromValue(String value) {
    for (final item in RoleTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RoleTypes value: $value');
  }
}
