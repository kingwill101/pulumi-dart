// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_response.dart';
import 'init_container_response.dart';
import 'scale_response.dart';
import 'service_bind_response.dart';
import 'volume_response.dart';

/// Container App versioned application definition.
/// Defines the desired state of an immutable revision.
/// Any changes to this section Will result in a new revision being created
class TemplateResponse {
  /// List of container definitions for the Container App.
  final pulumi.Input<List<ContainerResponse>>? containers;
  /// List of specialized containers that run before app containers.
  final pulumi.Input<List<InitContainerResponse>>? initContainers;
  /// User friendly suffix that is appended to the revision name
  final pulumi.Input<String>? revisionSuffix;
  /// Scaling properties for the Container App.
  final pulumi.Input<ScaleResponse>? scale;
  /// List of container app services bound to the app
  final pulumi.Input<List<ServiceBindResponse>>? serviceBinds;
  /// Optional duration in seconds the Container App Instance needs to terminate gracefully. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). If this value is nil, the default grace period will be used instead. Set this value longer than the expected cleanup time for your process. Defaults to 30 seconds.
  final pulumi.Input<double>? terminationGracePeriodSeconds;
  /// List of volume definitions for the Container App.
  final pulumi.Input<List<VolumeResponse>>? volumes;

  /// Creates a new [TemplateResponse].
  /// [containers] List of container definitions for the Container App.
  /// [initContainers] List of specialized containers that run before app containers.
  /// [revisionSuffix] User friendly suffix that is appended to the revision name
  /// [scale] Scaling properties for the Container App.
  /// [serviceBinds] List of container app services bound to the app
  /// [terminationGracePeriodSeconds] Optional duration in seconds the Container App Instance needs to terminate gracefully. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). If this value is nil, the default grace period will be used instead. Set this value longer than the expected cleanup time for your process. Defaults to 30 seconds.
  /// [volumes] List of volume definitions for the Container App.
  const TemplateResponse({
    this.containers,
    this.initContainers,
    this.revisionSuffix,
    this.scale,
    this.serviceBinds,
    this.terminationGracePeriodSeconds,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containers': ?pulumi.Input.mapOptionalInputValue<List<ContainerResponse>, List<Map<String, dynamic>>>(containers, (value) => pulumi.Input.encodeList<ContainerResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'initContainers': ?pulumi.Input.mapOptionalInputValue<List<InitContainerResponse>, List<Map<String, dynamic>>>(initContainers, (value) => pulumi.Input.encodeList<InitContainerResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'revisionSuffix': ?revisionSuffix,
      'scale': ?pulumi.Input.mapOptionalInputValue<ScaleResponse, Map<String, dynamic>>(scale, (value) => value.toMap()),
      'serviceBinds': ?pulumi.Input.mapOptionalInputValue<List<ServiceBindResponse>, List<Map<String, dynamic>>>(serviceBinds, (value) => pulumi.Input.encodeList<ServiceBindResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'terminationGracePeriodSeconds': ?terminationGracePeriodSeconds,
      'volumes': ?pulumi.Input.mapOptionalInputValue<List<VolumeResponse>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<VolumeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TemplateResponse.fromMap(Map<String, dynamic> map) {
    return TemplateResponse(
      containers: (() { final guardedValue = map['containers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerResponse>(guardedValue, (value) => ContainerResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      initContainers: (() { final guardedValue = map['initContainers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InitContainerResponse>(guardedValue, (value) => InitContainerResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      revisionSuffix: (() { final guardedValue = map['revisionSuffix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scale: (() { final guardedValue = map['scale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScaleResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceBinds: (() { final guardedValue = map['serviceBinds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceBindResponse>(guardedValue, (value) => ServiceBindResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      terminationGracePeriodSeconds: (() { final guardedValue = map['terminationGracePeriodSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      volumes: (() { final guardedValue = map['volumes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VolumeResponse>(guardedValue, (value) => VolumeResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
