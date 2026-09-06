import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum AuthenticationType implements pulumi.PulumiEnum<String> {
  aMAZONCOGNITOUSERPOOLS("AMAZON_COGNITO_USER_POOLS"),
  aPIKEY("API_KEY"),
  aWSIAM("AWS_IAM"),
  aWSLAMBDA("AWS_LAMBDA"),
  oPENIDCONNECT("OPENID_CONNECT");

  const AuthenticationType(this.wireValue);
  @override
  final String wireValue;

  static AuthenticationType fromValue(String value) {
    for (final item in AuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthenticationType value: $value');
  }
}
