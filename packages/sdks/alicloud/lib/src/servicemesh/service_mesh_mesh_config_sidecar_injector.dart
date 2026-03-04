// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_mesh_mesh_config_sidecar_injector_init_cni_configuration.dart';

class ServiceMeshMeshConfigSidecarInjector {
  /// Whether to enable by Pod Annotations automatic injection Sidecar
  final pulumi.Input<bool>? autoInjectionPolicyEnabled;

  /// Whether it is the all namespaces you turn on the auto injection capabilities
  final pulumi.Input<bool>? enableNamespacesByDefault;

  /// CNI configuration See `init_cni_configuration` below.
  final pulumi.Input<ServiceMeshMeshConfigSidecarInjectorInitCniConfiguration>?
  initCniConfiguration;

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
      'initCniConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            ServiceMeshMeshConfigSidecarInjectorInitCniConfiguration,
            Map<String, dynamic>
          >(initCniConfiguration, (value) => value.toMap()),
      'limitCpu': ?limitCpu,
      'limitMemory': ?limitMemory,
      'requestCpu': ?requestCpu,
      'requestMemory': ?requestMemory,
      'sidecarInjectorWebhookAsYaml': ?sidecarInjectorWebhookAsYaml,
    };
  }

  factory ServiceMeshMeshConfigSidecarInjector.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServiceMeshMeshConfigSidecarInjector(
      autoInjectionPolicyEnabled: (() {
        final guardedValue = map['autoInjectionPolicyEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableNamespacesByDefault: (() {
        final guardedValue = map['enableNamespacesByDefault'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      initCniConfiguration: (() {
        final guardedValue = map['initCniConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServiceMeshMeshConfigSidecarInjectorInitCniConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      limitCpu: (() {
        final guardedValue = map['limitCpu'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      limitMemory: (() {
        final guardedValue = map['limitMemory'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      requestCpu: (() {
        final guardedValue = map['requestCpu'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      requestMemory: (() {
        final guardedValue = map['requestMemory'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sidecarInjectorWebhookAsYaml: (() {
        final guardedValue = map['sidecarInjectorWebhookAsYaml'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
