/// The user type. It determines the method to authenticate the user during login. The default is the database's built-in user type.
enum UserTypeSqladminV1beta4 {
  builtIn("BUILT_IN"),
  cloudIamUser("CLOUD_IAM_USER"),
  cloudIamServiceAccount("CLOUD_IAM_SERVICE_ACCOUNT"),
  cloudIamGroup("CLOUD_IAM_GROUP"),
  cloudIamGroupUser("CLOUD_IAM_GROUP_USER"),
  cloudIamGroupServiceAccount("CLOUD_IAM_GROUP_SERVICE_ACCOUNT");

  const UserTypeSqladminV1beta4(this.value);
  final String value;

  static UserTypeSqladminV1beta4 fromValue(String value) {
    for (final item in UserTypeSqladminV1beta4.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UserTypeSqladminV1beta4 value: $value');
  }
}

