// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_meshes_mesh_mesh_config_sidecar_injector_init_cni_configuration.dart';

class GetServiceMeshesMeshMeshConfigSidecarInjector {
  /// Whether to enable by Pod Annotations automatic injection Sidecar.
  final bool autoInjectionPolicyEnabled;
  /// Whether it is the all namespaces you turn on the auto injection capabilities.
  final bool enableNamespacesByDefault;
  /// The configuration of the CNI
  final List<GetServiceMeshesMeshMeshConfigSidecarInjectorInitCniConfiguration> initCniConfigurations;
  /// Sidecar injector Pods on the throttle.
  final String limitCpu;
  /// The memory limit  of the Sidecar injector Pods.
  final String limitMemory;
  /// The requested cpu the Sidecar injector Pods.
  final String requestCpu;
  /// The requested memory the Sidecar injector Pods.
  final String requestMemory;
  /// Other automatic injection Sidecar configuration (in YAML format).
  final String sidecarInjectorWebhookAsYaml;

  /// Creates a new [GetServiceMeshesMeshMeshConfigSidecarInjector].
  /// [autoInjectionPolicyEnabled] Whether to enable by Pod Annotations automatic injection Sidecar.
  /// [enableNamespacesByDefault] Whether it is the all namespaces you turn on the auto injection capabilities.
  /// [initCniConfigurations] The configuration of the CNI
  /// [limitCpu] Sidecar injector Pods on the throttle.
  /// [limitMemory] The memory limit  of the Sidecar injector Pods.
  /// [requestCpu] The requested cpu the Sidecar injector Pods.
  /// [requestMemory] The requested memory the Sidecar injector Pods.
  /// [sidecarInjectorWebhookAsYaml] Other automatic injection Sidecar configuration (in YAML format).
  GetServiceMeshesMeshMeshConfigSidecarInjector({
    required this.autoInjectionPolicyEnabled,
    required this.enableNamespacesByDefault,
    required this.initCniConfigurations,
    required this.limitCpu,
    required this.limitMemory,
    required this.requestCpu,
    required this.requestMemory,
    required this.sidecarInjectorWebhookAsYaml,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoInjectionPolicyEnabled': autoInjectionPolicyEnabled,
      'enableNamespacesByDefault': enableNamespacesByDefault,
      'initCniConfigurations': pulumi.Input.encodeList<GetServiceMeshesMeshMeshConfigSidecarInjectorInitCniConfiguration, Map<String, dynamic>>(initCniConfigurations, (value) => value.toMap()),
      'limitCpu': limitCpu,
      'limitMemory': limitMemory,
      'requestCpu': requestCpu,
      'requestMemory': requestMemory,
      'sidecarInjectorWebhookAsYaml': sidecarInjectorWebhookAsYaml,
    };
  }

  factory GetServiceMeshesMeshMeshConfigSidecarInjector.fromMap(Map<String, dynamic> map) {
    return GetServiceMeshesMeshMeshConfigSidecarInjector(
      autoInjectionPolicyEnabled: map['autoInjectionPolicyEnabled'] as bool,
      enableNamespacesByDefault: map['enableNamespacesByDefault'] as bool,
      initCniConfigurations: pulumi.Input.decodeList<GetServiceMeshesMeshMeshConfigSidecarInjectorInitCniConfiguration>(map['initCniConfigurations'], (value) => GetServiceMeshesMeshMeshConfigSidecarInjectorInitCniConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      limitCpu: map['limitCpu'] as String,
      limitMemory: map['limitMemory'] as String,
      requestCpu: map['requestCpu'] as String,
      requestMemory: map['requestMemory'] as String,
      sidecarInjectorWebhookAsYaml: map['sidecarInjectorWebhookAsYaml'] as String,
    );
  }
}

