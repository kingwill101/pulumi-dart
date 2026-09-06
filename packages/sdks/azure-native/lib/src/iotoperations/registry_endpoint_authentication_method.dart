import 'package:pulumi/pulumi.dart' as pulumi;

/// The authentication method.
enum RegistryEndpointAuthenticationMethod implements pulumi.PulumiEnum<String> {
  systemAssignedManagedIdentity("SystemAssignedManagedIdentity"),
  userAssignedManagedIdentity("UserAssignedManagedIdentity"),
  anonymous("Anonymous"),
  artifactPullSecret("ArtifactPullSecret");

  const RegistryEndpointAuthenticationMethod(this.wireValue);
  @override
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
