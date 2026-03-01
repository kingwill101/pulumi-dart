/// Type of the server that represents the environment.
enum EnvironmentServerType {
  azureAPIManagement("Azure API Management"),
  azureComputeService("Azure compute service"),
  apigeeAPIManagement("Apigee API Management"),
  aWSAPIGateway("AWS API Gateway"),
  kongAPIGateway("Kong API Gateway"),
  kubernetes("Kubernetes"),
  muleSoftAPIManagement("MuleSoft API Management");

  const EnvironmentServerType(this.value);
  final String value;

  static EnvironmentServerType fromValue(String value) {
    for (final item in EnvironmentServerType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnvironmentServerType value: $value');
  }
}

