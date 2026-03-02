// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_mesh_mesh_config_sidecar_injector_init_cni_configuration.dart';

class ServiceMeshMeshConfigSidecarInjector {
  /// Whether to enable by Pod Annotations automatic injection Sidecar
  final pulumi.Input<bool>? autoInjectionPolicyEnabled;
  /// Whether it is the all namespaces you turn on the auto injection capabilities
  final pulumi.Input<bool>? enableNamespacesByDefault;
  /// CNI configuration See `init_cni_configuration` below.
  final pulumi.Input<ServiceMeshMeshConfigSidecarInjectorInitCniConfiguration>? initCniConfiguration;
  /// Sidecar injector Pods on the throttle
  final pulumi.Input<String>? limitCpu;
  /// Sidecar injector Pods on the throttle
  final pulumi.Input<String>? limitMemory;
  /// Sidecar injector Pods on the requested resource
  final pulumi.Input<String>? requestCpu;
  /// Sidecar injector Pods on the requested resource
  final pulumi.Input<String>? requestMemory;
  /// Other automatic injection Sidecar configuration (in YAML format)
  final pulumi.Input<String>? sidecarInjectorWebhookAsYaml;

  /// Creates a new [ServiceMeshMeshConfigSidecarInjector].
  /// [autoInjectionPolicyEnabled] Whether to enable by Pod Annotations automatic injection Sidecar
  /// [enableNamespacesByDefault] Whether it is the all namespaces you turn on the auto injection capabilities
  /// [initCniConfiguration] CNI configuration See `init_cni_configuration` below.
  /// [limitCpu] Sidecar injector Pods on the throttle
  /// [limitMemory] Sidecar injector Pods on the throttle
  /// [requestCpu] Sidecar injector Pods on the requested resource
  /// [requestMemory] Sidecar injector Pods on the requested resource
  /// [sidecarInjectorWebhookAsYaml] Other automatic injection Sidecar configuration (in YAML format)
  ServiceMeshMeshConfigSidecarInjector({
    this.autoInjectionPolicyEnabled,
    this.enableNamespacesByDefault,
    this.initCniConfiguration,
    this.limitCpu,
    this.limitMemory,
    this.requestCpu,
    this.requestMemory,
    this.sidecarInjectorWebhookAsYaml,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoInjectionPolicyEnabled': ?autoInjectionPolicyEnabled,
      'enableNamespacesByDefault': ?enableNamespacesByDefault,
      'initCniConfiguration': ?pulumi.Input.mapOptionalInputValue<ServiceMeshMeshConfigSidecarInjectorInitCniConfiguration, Map<String, dynamic>>(initCniConfiguration, (value) => value.toMap()),
      'limitCpu': ?limitCpu,
      'limitMemory': ?limitMemory,
      'requestCpu': ?requestCpu,
      'requestMemory': ?requestMemory,
      'sidecarInjectorWebhookAsYaml': ?sidecarInjectorWebhookAsYaml,
    };
  }

  factory ServiceMeshMeshConfigSidecarInjector.fromMap(Map<String, dynamic> map) {
    return ServiceMeshMeshConfigSidecarInjector(
      autoInjectionPolicyEnabled: map['autoInjectionPolicyEnabled'] == null ? null : (map['autoInjectionPolicyEnabled']! as bool).input(),
      enableNamespacesByDefault: map['enableNamespacesByDefault'] == null ? null : (map['enableNamespacesByDefault']! as bool).input(),
      initCniConfiguration: map['initCniConfiguration'] == null ? null : (ServiceMeshMeshConfigSidecarInjectorInitCniConfiguration.fromMap((map['initCniConfiguration']! as Map).cast<String, dynamic>())).input(),
      limitCpu: map['limitCpu'] == null ? null : (map['limitCpu']! as String).input(),
      limitMemory: map['limitMemory'] == null ? null : (map['limitMemory']! as String).input(),
      requestCpu: map['requestCpu'] == null ? null : (map['requestCpu']! as String).input(),
      requestMemory: map['requestMemory'] == null ? null : (map['requestMemory']! as String).input(),
      sidecarInjectorWebhookAsYaml: map['sidecarInjectorWebhookAsYaml'] == null ? null : (map['sidecarInjectorWebhookAsYaml']! as String).input(),
    );
  }
}

