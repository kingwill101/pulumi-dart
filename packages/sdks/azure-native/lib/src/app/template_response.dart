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
  final List<ContainerResponse>? containers;
  /// List of specialized containers that run before app containers.
  final List<InitContainerResponse>? initContainers;
  /// User friendly suffix that is appended to the revision name
  final String? revisionSuffix;
  /// Scaling properties for the Container App.
  final ScaleResponse? scale;
  /// List of container app services bound to the app
  final List<ServiceBindResponse>? serviceBinds;
  /// Optional duration in seconds the Container App Instance needs to terminate gracefully. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). If this value is nil, the default grace period will be used instead. Set this value longer than the expected cleanup time for your process. Defaults to 30 seconds.
  final double? terminationGracePeriodSeconds;
  /// List of volume definitions for the Container App.
  final List<VolumeResponse>? volumes;

  /// Creates a new [TemplateResponse].
  /// [containers] List of container definitions for the Container App.
  /// [initContainers] List of specialized containers that run before app containers.
  /// [revisionSuffix] User friendly suffix that is appended to the revision name
  /// [scale] Scaling properties for the Container App.
  /// [serviceBinds] List of container app services bound to the app
  /// [terminationGracePeriodSeconds] Optional duration in seconds the Container App Instance needs to terminate gracefully. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). If this value is nil, the default grace period will be used instead. Set this value longer than the expected cleanup time for your process. Defaults to 30 seconds.
  /// [volumes] List of volume definitions for the Container App.
  TemplateResponse({
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
      'containers': ?containers == null ? null : pulumi.Input.encodeList<ContainerResponse, Map<String, dynamic>>(containers!, (value) => value.toMap()),
      'initContainers': ?initContainers == null ? null : pulumi.Input.encodeList<InitContainerResponse, Map<String, dynamic>>(initContainers!, (value) => value.toMap()),
      'revisionSuffix': ?revisionSuffix,
      'scale': ?scale == null ? null : scale!.toMap(),
      'serviceBinds': ?serviceBinds == null ? null : pulumi.Input.encodeList<ServiceBindResponse, Map<String, dynamic>>(serviceBinds!, (value) => value.toMap()),
      'terminationGracePeriodSeconds': ?terminationGracePeriodSeconds,
      'volumes': ?volumes == null ? null : pulumi.Input.encodeList<VolumeResponse, Map<String, dynamic>>(volumes!, (value) => value.toMap()),
    };
  }

  factory TemplateResponse.fromMap(Map<String, dynamic> map) {
    return TemplateResponse(
      containers: map['containers'] == null ? null : pulumi.Input.decodeList<ContainerResponse>(map['containers'], (value) => ContainerResponse.fromMap((value as Map).cast<String, dynamic>())),
      initContainers: map['initContainers'] == null ? null : pulumi.Input.decodeList<InitContainerResponse>(map['initContainers'], (value) => InitContainerResponse.fromMap((value as Map).cast<String, dynamic>())),
      revisionSuffix: map['revisionSuffix'] == null ? null : map['revisionSuffix'] as String,
      scale: map['scale'] == null ? null : ScaleResponse.fromMap((map['scale'] as Map).cast<String, dynamic>()),
      serviceBinds: map['serviceBinds'] == null ? null : pulumi.Input.decodeList<ServiceBindResponse>(map['serviceBinds'], (value) => ServiceBindResponse.fromMap((value as Map).cast<String, dynamic>())),
      terminationGracePeriodSeconds: map['terminationGracePeriodSeconds'] == null ? null : map['terminationGracePeriodSeconds'] as double,
      volumes: map['volumes'] == null ? null : pulumi.Input.decodeList<VolumeResponse>(map['volumes'], (value) => VolumeResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

