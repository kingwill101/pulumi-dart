// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container.dart';
import 'init_container.dart';
import 'volume.dart';

/// Container Apps Job versioned application definition. Defines the desired state of an immutable revision. Any changes to this section Will result in a new revision being created
class JobTemplate {
  /// List of container definitions for the Container App.
  final pulumi.Input<List<Container>?>? containers;
  /// List of specialized containers that run before app containers.
  final pulumi.Input<List<InitContainer>?>? initContainers;
  /// List of volume definitions for the Container App.
  final pulumi.Input<List<Volume>?>? volumes;

  /// Creates a new [JobTemplate].
  /// [containers] List of container definitions for the Container App.
  /// [initContainers] List of specialized containers that run before app containers.
  /// [volumes] List of volume definitions for the Container App.
  const JobTemplate({
    this.containers,
    this.initContainers,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containers': ?pulumi.Input.mapOptionalInputValue<List<Container>, List<Map<String, dynamic>>>(containers, (value) => pulumi.Input.encodeList<Container, Map<String, dynamic>>(value, (value) => value.toMap())),
      'initContainers': ?pulumi.Input.mapOptionalInputValue<List<InitContainer>, List<Map<String, dynamic>>>(initContainers, (value) => pulumi.Input.encodeList<InitContainer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'volumes': ?pulumi.Input.mapOptionalInputValue<List<Volume>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<Volume, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory JobTemplate.fromMap(Map<String, dynamic> map) {
    return JobTemplate(
      containers: (() { final guardedValue = map['containers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Container>(guardedValue, (value) => Container.fromMap((value as Map).cast<String, dynamic>()))); })(),
      initContainers: (() { final guardedValue = map['initContainers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InitContainer>(guardedValue, (value) => InitContainer.fromMap((value as Map).cast<String, dynamic>()))); })(),
      volumes: (() { final guardedValue = map['volumes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Volume>(guardedValue, (value) => Volume.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
