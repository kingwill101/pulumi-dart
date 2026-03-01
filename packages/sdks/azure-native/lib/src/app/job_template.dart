// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container.dart';
import 'init_container.dart';
import 'volume.dart';

/// Container Apps Job versioned application definition. Defines the desired state of an immutable revision. Any changes to this section Will result in a new revision being created
class JobTemplate {
  /// List of container definitions for the Container App.
  final List<Container>? containers;
  /// List of specialized containers that run before app containers.
  final List<InitContainer>? initContainers;
  /// List of volume definitions for the Container App.
  final List<Volume>? volumes;

  /// Creates a new [JobTemplate].
  /// [containers] List of container definitions for the Container App.
  /// [initContainers] List of specialized containers that run before app containers.
  /// [volumes] List of volume definitions for the Container App.
  JobTemplate({
    this.containers,
    this.initContainers,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containers': ?containers == null ? null : pulumi.Input.encodeList<Container, Map<String, dynamic>>(containers!, (value) => value.toMap()),
      'initContainers': ?initContainers == null ? null : pulumi.Input.encodeList<InitContainer, Map<String, dynamic>>(initContainers!, (value) => value.toMap()),
      'volumes': ?volumes == null ? null : pulumi.Input.encodeList<Volume, Map<String, dynamic>>(volumes!, (value) => value.toMap()),
    };
  }

  factory JobTemplate.fromMap(Map<String, dynamic> map) {
    return JobTemplate(
      containers: map['containers'] == null ? null : pulumi.Input.decodeList<Container>(map['containers'], (value) => Container.fromMap((value as Map).cast<String, dynamic>())),
      initContainers: map['initContainers'] == null ? null : pulumi.Input.decodeList<InitContainer>(map['initContainers'], (value) => InitContainer.fromMap((value as Map).cast<String, dynamic>())),
      volumes: map['volumes'] == null ? null : pulumi.Input.decodeList<Volume>(map['volumes'], (value) => Volume.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

