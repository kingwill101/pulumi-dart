/// Optional. The authorization mode of the Redis cluster. If not provided, auth feature is disabled for the cluster.
enum ClusterAuthorizationMode2 {
  authModeUnspecified("AUTH_MODE_UNSPECIFIED"),
  authModeIamAuth("AUTH_MODE_IAM_AUTH"),
  authModeDisabled("AUTH_MODE_DISABLED");

  const ClusterAuthorizationMode2(this.value);
  final String value;

  static ClusterAuthorizationMode2 fromValue(String value) {
    for (final item in ClusterAuthorizationMode2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterAuthorizationMode2 value: $value');
  }
}
