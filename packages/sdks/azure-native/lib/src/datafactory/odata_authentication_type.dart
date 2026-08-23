/// Type of authentication used to connect to the OData service.
enum ODataAuthenticationType {
  basic("Basic"),
  anonymous("Anonymous"),
  windows("Windows"),
  aadServicePrincipal("AadServicePrincipal"),
  managedServiceIdentity("ManagedServiceIdentity");

  const ODataAuthenticationType(this.wireValue);
  final String wireValue;

  static ODataAuthenticationType fromValue(String value) {
    for (final item in ODataAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ODataAuthenticationType value: $value');
  }
}
