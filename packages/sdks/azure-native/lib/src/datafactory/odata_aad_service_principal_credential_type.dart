import 'package:pulumi/pulumi.dart' as pulumi;

/// Specify the credential type (key or cert) is used for service principal.
enum ODataAadServicePrincipalCredentialType implements pulumi.PulumiEnum<String> {
  servicePrincipalKey("ServicePrincipalKey"),
  servicePrincipalCert("ServicePrincipalCert");

  const ODataAadServicePrincipalCredentialType(this.wireValue);
  @override
  final String wireValue;

  static ODataAadServicePrincipalCredentialType fromValue(String value) {
    for (final item in ODataAadServicePrincipalCredentialType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ODataAadServicePrincipalCredentialType value: $value');
  }
}
