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
  final pulumi.Input<List<Container>>? containers;
  /// List of specialized containers that run before app containers.
  final pulumi.Input<List<InitContainer>>? initContainers;
  /// User friendly suffix that is appended to the revision name
  final pulumi.Input<String>? revisionSuffix;
  /// Scaling properties for the Container App.
  final pulumi.Input<Scale>? scale;
  /// List of container app services bound to the app
  final pulumi.Input<List<ServiceBind>>? serviceBinds;
  /// Optional duration in seconds the Container App Instance needs to terminate gracefully. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). If this value is nil, the default grace period will be used instead. Set this value longer than the expected cleanup time for your process. Defaults to 30 seconds.
  final pulumi.Input<double>? terminationGracePeriodSeconds;
  /// List of volume definitions for the Container App.
  final pulumi.Input<List<Volume>>? volumes;

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
      'containers': ?pulumi.Input.mapOptionalInputValue<List<Container>, List<Map<String, dynamic>>>(containers, (value) => pulumi.Input.encodeList<Container, Map<String, dynamic>>(value, (value) => value.toMap())),
      'initContainers': ?pulumi.Input.mapOptionalInputValue<List<InitContainer>, List<Map<String, dynamic>>>(initContainers, (value) => pulumi.Input.encodeList<InitContainer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'revisionSuffix': ?revisionSuffix,
      'scale': ?pulumi.Input.mapOptionalInputValue<Scale, Map<String, dynamic>>(scale, (value) => value.toMap()),
      'serviceBinds': ?pulumi.Input.mapOptionalInputValue<List<ServiceBind>, List<Map<String, dynamic>>>(serviceBinds, (value) => pulumi.Input.encodeList<ServiceBind, Map<String, dynamic>>(value, (value) => value.toMap())),
      'terminationGracePeriodSeconds': ?terminationGracePeriodSeconds,
      'volumes': ?pulumi.Input.mapOptionalInputValue<List<Volume>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<Volume, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory Template.fromMap(Map<String, dynamic> map) {
    return Template(
      containers: map['containers'] == null ? null : (pulumi.Input.decodeList<Container>(map['containers']!, (value) => Container.fromMap((value as Map).cast<String, dynamic>()))).input(),
      initContainers: map['initContainers'] == null ? null : (pulumi.Input.decodeList<InitContainer>(map['initContainers']!, (value) => InitContainer.fromMap((value as Map).cast<String, dynamic>()))).input(),
      revisionSuffix: map['revisionSuffix'] == null ? null : (map['revisionSuffix']! as String).input(),
      scale: map['scale'] == null ? null : (Scale.fromMap((map['scale']! as Map).cast<String, dynamic>())).input(),
      serviceBinds: map['serviceBinds'] == null ? null : (pulumi.Input.decodeList<ServiceBind>(map['serviceBinds']!, (value) => ServiceBind.fromMap((value as Map).cast<String, dynamic>()))).input(),
      terminationGracePeriodSeconds: map['terminationGracePeriodSeconds'] == null ? null : (map['terminationGracePeriodSeconds']! as double).input(),
      volumes: map['volumes'] == null ? null : (pulumi.Input.decodeList<Volume>(map['volumes']!, (value) => Volume.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

