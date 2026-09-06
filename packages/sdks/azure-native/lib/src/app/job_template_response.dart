// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_response.dart';
import 'init_container_response.dart';
import 'volume_response.dart';

/// Container Apps Job versioned application definition. Defines the desired state of an immutable revision. Any changes to this section Will result in a new revision being created
class JobTemplateResponse {
  /// List of container definitions for the Container App.
  final pulumi.Input<List<ContainerResponse>?>? containers;
  /// List of specialized containers that run before app containers.
  final pulumi.Input<List<InitContainerResponse>?>? initContainers;
  /// List of volume definitions for the Container App.
  final pulumi.Input<List<VolumeResponse>?>? volumes;

  /// Creates a new [JobTemplateResponse].
  /// [containers] List of container definitions for the Container App.
  /// [initContainers] List of specialized containers that run before app containers.
  /// [volumes] List of volume definitions for the Container App.
  const JobTemplateResponse({
    this.containers,
    this.initContainers,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containers': ?pulumi.Input.mapOptionalInputValue<List<ContainerResponse>, List<Map<String, dynamic>>>(containers, (value) => pulumi.Input.encodeList<ContainerResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'initContainers': ?pulumi.Input.mapOptionalInputValue<List<InitContainerResponse>, List<Map<String, dynamic>>>(initContainers, (value) => pulumi.Input.encodeList<InitContainerResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'volumes': ?pulumi.Input.mapOptionalInputValue<List<VolumeResponse>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<VolumeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory JobTemplateResponse.fromMap(Map<String, dynamic> map) {
    return JobTemplateResponse(
      containers: (() { final guardedValue = map['containers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerResponse>(guardedValue, (value) => ContainerResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      initContainers: (() { final guardedValue = map['initContainers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InitContainerResponse>(guardedValue, (value) => InitContainerResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      volumes: (() { final guardedValue = map['volumes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VolumeResponse>(guardedValue, (value) => VolumeResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
