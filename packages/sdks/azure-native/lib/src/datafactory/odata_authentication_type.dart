import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of authentication used to connect to the OData service.
enum ODataAuthenticationType implements pulumi.PulumiEnum<String> {
  basic("Basic"),
  anonymous("Anonymous"),
  windows("Windows"),
  aadServicePrincipal("AadServicePrincipal"),
  managedServiceIdentity("ManagedServiceIdentity");

  const ODataAuthenticationType(this.wireValue);
  @override
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
