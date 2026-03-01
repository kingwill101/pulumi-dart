// ignore_for_file: unused_element, unnecessary_cast


class GetServiceMeshesMeshMeshConfigSidecarInjectorInitCniConfiguration {
  /// Whether to enable CNI.
  final bool enabled;
  /// The excluded namespace of the CNI.
  final String excludeNamespaces;

  /// Creates a new [GetServiceMeshesMeshMeshConfigSidecarInjectorInitCniConfiguration].
  /// [enabled] Whether to enable CNI.
  /// [excludeNamespaces] The excluded namespace of the CNI.
  GetServiceMeshesMeshMeshConfigSidecarInjectorInitCniConfiguration({
    required this.enabled,
    required this.excludeNamespaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'excludeNamespaces': excludeNamespaces,
    };
  }

  factory GetServiceMeshesMeshMeshConfigSidecarInjectorInitCniConfiguration.fromMap(Map<String, dynamic> map) {
    return GetServiceMeshesMeshMeshConfigSidecarInjectorInitCniConfiguration(
      enabled: map['enabled'] as bool,
      excludeNamespaces: map['excludeNamespaces'] as String,
    );
  }
}

