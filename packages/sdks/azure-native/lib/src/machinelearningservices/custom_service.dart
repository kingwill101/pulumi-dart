// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'docker.dart';
import 'endpoint.dart';
import 'environment_variable.dart';
import 'image.dart';
import 'volume_definition.dart';

/// Specifies the custom service configuration
class CustomService {
  /// Describes the docker settings for the image
  final pulumi.Input<Docker>? docker;
  /// Configuring the endpoints for the container
  final pulumi.Input<List<Endpoint>>? endpoints;
  /// Environment Variable for the container
  final pulumi.Input<Map<String, EnvironmentVariable>>? environmentVariables;
  /// Describes the Image Specifications
  final pulumi.Input<Image>? image;
  /// Name of the Custom Service
  final pulumi.Input<String>? name;
  /// Configuring the volumes for the container
  final pulumi.Input<List<VolumeDefinition>>? volumes;

  /// Creates a new [CustomService].
  /// [docker] Describes the docker settings for the image
  /// [endpoints] Configuring the endpoints for the container
  /// [environmentVariables] Environment Variable for the container
  /// [image] Describes the Image Specifications
  /// [name] Name of the Custom Service
  /// [volumes] Configuring the volumes for the container
  CustomService({
    this.docker,
    this.endpoints,
    this.environmentVariables,
    this.image,
    this.name,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'docker': ?pulumi.Input.mapOptionalInputValue<Docker, Map<String, dynamic>>(docker, (value) => value.toMap()),
      'endpoints': ?pulumi.Input.mapOptionalInputValue<List<Endpoint>, List<Map<String, dynamic>>>(endpoints, (value) => pulumi.Input.encodeList<Endpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'environmentVariables': ?pulumi.Input.mapOptionalInputValue<Map<String, EnvironmentVariable>, Map<String, Map<String, dynamic>>>(environmentVariables, (value) => pulumi.Input.encodeMapValues<EnvironmentVariable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'image': ?pulumi.Input.mapOptionalInputValue<Image, Map<String, dynamic>>(image, (value) => value.toMap()),
      'name': ?name,
      'volumes': ?pulumi.Input.mapOptionalInputValue<List<VolumeDefinition>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<VolumeDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CustomService.fromMap(Map<String, dynamic> map) {
    return CustomService(
      docker: (() { final guardedValue = map['docker']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Docker.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Endpoint>(guardedValue, (value) => Endpoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      environmentVariables: (() { final guardedValue = map['environmentVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<EnvironmentVariable>(guardedValue, (value) => EnvironmentVariable.fromMap((value as Map).cast<String, dynamic>()))); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Image.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumes: (() { final guardedValue = map['volumes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VolumeDefinition>(guardedValue, (value) => VolumeDefinition.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

