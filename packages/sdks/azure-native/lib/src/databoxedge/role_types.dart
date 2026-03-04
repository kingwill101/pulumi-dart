/// Role type.
enum RoleTypes {
  valueIOT("IOT"),
  valueASA("ASA"),
  valueFunctions("Functions"),
  valueCognitive("Cognitive"),
  valueMEC("MEC"),
  valueCloudEdgeManagement("CloudEdgeManagement"),
  valueKubernetes("Kubernetes");

  const RoleTypes(this.wireValue);
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
