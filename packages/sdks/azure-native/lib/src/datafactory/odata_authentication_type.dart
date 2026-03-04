/// Type of authentication used to connect to the OData service.
enum ODataAuthenticationType {
  valueBasic("Basic"),
  valueAnonymous("Anonymous"),
  valueWindows("Windows"),
  valueAadServicePrincipal("AadServicePrincipal"),
  valueManagedServiceIdentity("ManagedServiceIdentity");

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
