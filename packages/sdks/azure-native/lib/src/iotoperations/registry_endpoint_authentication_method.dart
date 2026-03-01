/// The authentication method.
enum RegistryEndpointAuthenticationMethod {
  systemAssignedManagedIdentity("SystemAssignedManagedIdentity"),
  userAssignedManagedIdentity("UserAssignedManagedIdentity"),
  anonymous("Anonymous"),
  artifactPullSecret("ArtifactPullSecret");

  const RegistryEndpointAuthenticationMethod(this.value);
  final String value;

  static RegistryEndpointAuthenticationMethod fromValue(String value) {
    for (final item in RegistryEndpointAuthenticationMethod.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegistryEndpointAuthenticationMethod value: $value');
  }
}

