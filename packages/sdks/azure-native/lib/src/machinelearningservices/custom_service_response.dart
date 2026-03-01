// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'docker_response.dart';
import 'endpoint_response.dart';
import 'environment_variable_response.dart';
import 'image_response.dart';
import 'volume_definition_response.dart';

/// Specifies the custom service configuration
class CustomServiceResponse {
  /// Describes the docker settings for the image
  final DockerResponse? docker;
  /// Configuring the endpoints for the container
  final List<EndpointResponse>? endpoints;
  /// Environment Variable for the container
  final Map<String, EnvironmentVariableResponse>? environmentVariables;
  /// Describes the Image Specifications
  final ImageResponse? image;
  /// Name of the Custom Service
  final String? name;
  /// Configuring the volumes for the container
  final List<VolumeDefinitionResponse>? volumes;

  /// Creates a new [CustomServiceResponse].
  /// [docker] Describes the docker settings for the image
  /// [endpoints] Configuring the endpoints for the container
  /// [environmentVariables] Environment Variable for the container
  /// [image] Describes the Image Specifications
  /// [name] Name of the Custom Service
  /// [volumes] Configuring the volumes for the container
  CustomServiceResponse({
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
      'endpoints': ?endpoints == null ? null : pulumi.Input.encodeList<EndpointResponse, Map<String, dynamic>>(endpoints!, (value) => value.toMap()),
      'environmentVariables': ?environmentVariables == null ? null : pulumi.Input.encodeMapValues<EnvironmentVariableResponse, Map<String, dynamic>>(environmentVariables!, (value) => value.toMap()),
      'image': ?image == null ? null : image!.toMap(),
      'name': ?name,
      'volumes': ?volumes == null ? null : pulumi.Input.encodeList<VolumeDefinitionResponse, Map<String, dynamic>>(volumes!, (value) => value.toMap()),
    };
  }

  factory CustomServiceResponse.fromMap(Map<String, dynamic> map) {
    return CustomServiceResponse(
      docker: map['docker'] == null ? null : DockerResponse.fromMap((map['docker'] as Map).cast<String, dynamic>()),
      endpoints: map['endpoints'] == null ? null : pulumi.Input.decodeList<EndpointResponse>(map['endpoints'], (value) => EndpointResponse.fromMap((value as Map).cast<String, dynamic>())),
      environmentVariables: map['environmentVariables'] == null ? null : pulumi.Input.decodeMapValues<EnvironmentVariableResponse>(map['environmentVariables'], (value) => EnvironmentVariableResponse.fromMap((value as Map).cast<String, dynamic>())),
      image: map['image'] == null ? null : ImageResponse.fromMap((map['image'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      volumes: map['volumes'] == null ? null : pulumi.Input.decodeList<VolumeDefinitionResponse>(map['volumes'], (value) => VolumeDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

