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
  final Docker? docker;
  /// Configuring the endpoints for the container
  final List<Endpoint>? endpoints;
  /// Environment Variable for the container
  final Map<String, EnvironmentVariable>? environmentVariables;
  /// Describes the Image Specifications
  final Image? image;
  /// Name of the Custom Service
  final String? name;
  /// Configuring the volumes for the container
  final List<VolumeDefinition>? volumes;

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
      'docker': ?docker == null ? null : docker!.toMap(),
      'endpoints': ?endpoints == null ? null : pulumi.Input.encodeList<Endpoint, Map<String, dynamic>>(endpoints!, (value) => value.toMap()),
      'environmentVariables': ?environmentVariables == null ? null : pulumi.Input.encodeMapValues<EnvironmentVariable, Map<String, dynamic>>(environmentVariables!, (value) => value.toMap()),
      'image': ?image == null ? null : image!.toMap(),
      'name': ?name,
      'volumes': ?volumes == null ? null : pulumi.Input.encodeList<VolumeDefinition, Map<String, dynamic>>(volumes!, (value) => value.toMap()),
    };
  }

  factory CustomService.fromMap(Map<String, dynamic> map) {
    return CustomService(
      docker: map['docker'] == null ? null : Docker.fromMap((map['docker'] as Map).cast<String, dynamic>()),
      endpoints: map['endpoints'] == null ? null : pulumi.Input.decodeList<Endpoint>(map['endpoints'], (value) => Endpoint.fromMap((value as Map).cast<String, dynamic>())),
      environmentVariables: map['environmentVariables'] == null ? null : pulumi.Input.decodeMapValues<EnvironmentVariable>(map['environmentVariables'], (value) => EnvironmentVariable.fromMap((value as Map).cast<String, dynamic>())),
      image: map['image'] == null ? null : Image.fromMap((map['image'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      volumes: map['volumes'] == null ? null : pulumi.Input.decodeList<VolumeDefinition>(map['volumes'], (value) => VolumeDefinition.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

