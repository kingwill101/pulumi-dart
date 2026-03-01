// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container.dart';
import 'init_container.dart';
import 'scale.dart';
import 'service_bind.dart';
import 'volume.dart';

/// Container App versioned application definition.
/// Defines the desired state of an immutable revision.
/// Any changes to this section Will result in a new revision being created
class Template {
  /// List of container definitions for the Container App.
  final List<Container>? containers;
  /// List of specialized containers that run before app containers.
  final List<InitContainer>? initContainers;
  /// User friendly suffix that is appended to the revision name
  final String? revisionSuffix;
  /// Scaling properties for the Container App.
  final Scale? scale;
  /// List of container app services bound to the app
  final List<ServiceBind>? serviceBinds;
  /// Optional duration in seconds the Container App Instance needs to terminate gracefully. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). If this value is nil, the default grace period will be used instead. Set this value longer than the expected cleanup time for your process. Defaults to 30 seconds.
  final double? terminationGracePeriodSeconds;
  /// List of volume definitions for the Container App.
  final List<Volume>? volumes;

  /// Creates a new [Template].
  /// [containers] List of container definitions for the Container App.
  /// [initContainers] List of specialized containers that run before app containers.
  /// [revisionSuffix] User friendly suffix that is appended to the revision name
  /// [scale] Scaling properties for the Container App.
  /// [serviceBinds] List of container app services bound to the app
  /// [terminationGracePeriodSeconds] Optional duration in seconds the Container App Instance needs to terminate gracefully. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). If this value is nil, the default grace period will be used instead. Set this value longer than the expected cleanup time for your process. Defaults to 30 seconds.
  /// [volumes] List of volume definitions for the Container App.
  Template({
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
      'containers': ?containers == null ? null : pulumi.Input.encodeList<Container, Map<String, dynamic>>(containers!, (value) => value.toMap()),
      'initContainers': ?initContainers == null ? null : pulumi.Input.encodeList<InitContainer, Map<String, dynamic>>(initContainers!, (value) => value.toMap()),
      'revisionSuffix': ?revisionSuffix,
      'scale': ?scale == null ? null : scale!.toMap(),
      'serviceBinds': ?serviceBinds == null ? null : pulumi.Input.encodeList<ServiceBind, Map<String, dynamic>>(serviceBinds!, (value) => value.toMap()),
      'terminationGracePeriodSeconds': ?terminationGracePeriodSeconds,
      'volumes': ?volumes == null ? null : pulumi.Input.encodeList<Volume, Map<String, dynamic>>(volumes!, (value) => value.toMap()),
    };
  }

  factory Template.fromMap(Map<String, dynamic> map) {
    return Template(
      containers: map['containers'] == null ? null : pulumi.Input.decodeList<Container>(map['containers'], (value) => Container.fromMap((value as Map).cast<String, dynamic>())),
      initContainers: map['initContainers'] == null ? null : pulumi.Input.decodeList<InitContainer>(map['initContainers'], (value) => InitContainer.fromMap((value as Map).cast<String, dynamic>())),
      revisionSuffix: map['revisionSuffix'] == null ? null : map['revisionSuffix'] as String,
      scale: map['scale'] == null ? null : Scale.fromMap((map['scale'] as Map).cast<String, dynamic>()),
      serviceBinds: map['serviceBinds'] == null ? null : pulumi.Input.decodeList<ServiceBind>(map['serviceBinds'], (value) => ServiceBind.fromMap((value as Map).cast<String, dynamic>())),
      terminationGracePeriodSeconds: map['terminationGracePeriodSeconds'] == null ? null : map['terminationGracePeriodSeconds'] as double,
      volumes: map['volumes'] == null ? null : pulumi.Input.decodeList<Volume>(map['volumes'], (value) => Volume.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

