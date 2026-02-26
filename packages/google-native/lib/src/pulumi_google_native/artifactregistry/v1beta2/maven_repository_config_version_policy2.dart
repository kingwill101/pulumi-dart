/// Version policy defines the versions that the registry will accept.
enum MavenRepositoryConfigVersionPolicy2 {
  versionPolicyUnspecified("VERSION_POLICY_UNSPECIFIED"),
  release("RELEASE"),
  snapshot("SNAPSHOT");

  const MavenRepositoryConfigVersionPolicy2(this.value);
  final String value;

  static MavenRepositoryConfigVersionPolicy2 fromValue(String value) {
    for (final item in MavenRepositoryConfigVersionPolicy2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown MavenRepositoryConfigVersionPolicy2 value: $value');
  }
}
