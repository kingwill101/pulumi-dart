// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceMeshesMeshMeshConfigSidecarInjectorInitCniConfiguration {
  /// Whether to enable CNI.
  final pulumi.Input<bool> enabled;

  /// The excluded namespace of the CNI.
  final pulumi.Input<String> excludeNamespaces;

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

  factory GetServiceMeshesMeshMeshConfigSidecarInjectorInitCniConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetServiceMeshesMeshMeshConfigSidecarInjectorInitCniConfiguration(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      excludeNamespaces: pulumi.Input.fromValue(
        map['excludeNamespaces'] as String,
      ),
    );
  }
}
