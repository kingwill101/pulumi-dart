// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_response.dart';
import 'init_container_response.dart';
import 'volume_response.dart';

/// Container Apps Job versioned application definition. Defines the desired state of an immutable revision. Any changes to this section Will result in a new revision being created
class JobTemplateResponse {
  /// List of container definitions for the Container App.
  final List<ContainerResponse>? containers;
  /// List of specialized containers that run before app containers.
  final List<InitContainerResponse>? initContainers;
  /// List of volume definitions for the Container App.
  final List<VolumeResponse>? volumes;

  /// Creates a new [JobTemplateResponse].
  /// [containers] List of container definitions for the Container App.
  /// [initContainers] List of specialized containers that run before app containers.
  /// [volumes] List of volume definitions for the Container App.
  JobTemplateResponse({
    this.containers,
    this.initContainers,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containers': ?containers == null ? null : pulumi.Input.encodeList<ContainerResponse, Map<String, dynamic>>(containers!, (value) => value.toMap()),
      'initContainers': ?initContainers == null ? null : pulumi.Input.encodeList<InitContainerResponse, Map<String, dynamic>>(initContainers!, (value) => value.toMap()),
      'volumes': ?volumes == null ? null : pulumi.Input.encodeList<VolumeResponse, Map<String, dynamic>>(volumes!, (value) => value.toMap()),
    };
  }

  factory JobTemplateResponse.fromMap(Map<String, dynamic> map) {
    return JobTemplateResponse(
      containers: map['containers'] == null ? null : pulumi.Input.decodeList<ContainerResponse>(map['containers'], (value) => ContainerResponse.fromMap((value as Map).cast<String, dynamic>())),
      initContainers: map['initContainers'] == null ? null : pulumi.Input.decodeList<InitContainerResponse>(map['initContainers'], (value) => InitContainerResponse.fromMap((value as Map).cast<String, dynamic>())),
      volumes: map['volumes'] == null ? null : pulumi.Input.decodeList<VolumeResponse>(map['volumes'], (value) => VolumeResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

