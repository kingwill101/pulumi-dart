/// Property value
enum AuthenticationType {
  aMAZONCOGNITOUSERPOOLS("AMAZON_COGNITO_USER_POOLS"),
  aPIKEY("API_KEY"),
  aWSIAM("AWS_IAM"),
  aWSLAMBDA("AWS_LAMBDA"),
  oPENIDCONNECT("OPENID_CONNECT");

  const AuthenticationType(this.wireValue);
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

