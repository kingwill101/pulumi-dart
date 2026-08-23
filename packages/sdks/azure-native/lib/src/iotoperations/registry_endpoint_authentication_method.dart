/// The authentication method.
enum RegistryEndpointAuthenticationMethod {
  systemAssignedManagedIdentity("SystemAssignedManagedIdentity"),
  userAssignedManagedIdentity("UserAssignedManagedIdentity"),
  anonymous("Anonymous"),
  artifactPullSecret("ArtifactPullSecret");

  const RegistryEndpointAuthenticationMethod(this.wireValue);
  final String wireValue;

  static RegistryEndpointAuthenticationMethod fromValue(String value) {
    for (final item in RegistryEndpointAuthenticationMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegistryEndpointAuthenticationMethod value: $value');
  }
}
