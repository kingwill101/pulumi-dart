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
      docker: map['docker'] == null ? null : (Docker.fromMap((map['docker'] as Map).cast<String, dynamic>())).input(),
      endpoints: map['endpoints'] == null ? null : (pulumi.Input.decodeList<Endpoint>(map['endpoints'], (value) => Endpoint.fromMap((value as Map).cast<String, dynamic>()))).input(),
      environmentVariables: map['environmentVariables'] == null ? null : (pulumi.Input.decodeMapValues<EnvironmentVariable>(map['environmentVariables'], (value) => EnvironmentVariable.fromMap((value as Map).cast<String, dynamic>()))).input(),
      image: map['image'] == null ? null : (Image.fromMap((map['image'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      volumes: map['volumes'] == null ? null : (pulumi.Input.decodeList<VolumeDefinition>(map['volumes'], (value) => VolumeDefinition.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

