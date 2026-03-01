/// Property value
enum AuthenticationType {
  aMAZONCOGNITOUSERPOOLS("AMAZON_COGNITO_USER_POOLS"),
  aPIKEY("API_KEY"),
  aWSIAM("AWS_IAM"),
  aWSLAMBDA("AWS_LAMBDA"),
  oPENIDCONNECT("OPENID_CONNECT");

  const AuthenticationType(this.value);
  final String value;

  static AuthenticationType fromValue(String value) {
    for (final item in AuthenticationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthenticationType value: $value');
  }
}

