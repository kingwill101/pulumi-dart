/// The user type. It determines the method to authenticate the user during login. The default is the database's built-in user type.
enum UserType2 {
  builtIn("BUILT_IN"),
  cloudIamUser("CLOUD_IAM_USER"),
  cloudIamServiceAccount("CLOUD_IAM_SERVICE_ACCOUNT"),
  cloudIamGroup("CLOUD_IAM_GROUP"),
  cloudIamGroupUser("CLOUD_IAM_GROUP_USER"),
  cloudIamGroupServiceAccount("CLOUD_IAM_GROUP_SERVICE_ACCOUNT");

  const UserType2(this.value);
  final String value;

  static UserType2 fromValue(String value) {
    for (final item in UserType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UserType2 value: $value');
  }
}
