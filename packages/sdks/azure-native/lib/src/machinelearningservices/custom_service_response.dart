// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'docker_response.dart';
import 'endpoint_response.dart';
import 'environment_variable_response.dart';
import 'image_response.dart';
import 'jupyter_kernel_config_response.dart';
import 'volume_definition_response.dart';

/// Specifies the custom service configuration
class CustomServiceResponse {
  /// Describes the docker settings for the image
  final pulumi.Input<DockerResponse>? docker;
  /// Configuring the endpoints for the container
  final pulumi.Input<List<EndpointResponse>>? endpoints;
  /// Environment Variable for the container
  final pulumi.Input<Map<String, EnvironmentVariableResponse>>? environmentVariables;
  /// Describes the Image Specifications
  final pulumi.Input<ImageResponse>? image;
  /// Describes the jupyter kernel settings for the image if its a custom environment
  final pulumi.Input<JupyterKernelConfigResponse>? kernel;
  /// Name of the Custom Service
  final pulumi.Input<String>? name;
  /// Configuring the volumes for the container
  final pulumi.Input<List<VolumeDefinitionResponse>>? volumes;

  /// Creates a new [CustomServiceResponse].
  /// [docker] Describes the docker settings for the image
  /// [endpoints] Configuring the endpoints for the container
  /// [environmentVariables] Environment Variable for the container
  /// [image] Describes the Image Specifications
  /// [kernel] Describes the jupyter kernel settings for the image if its a custom environment
  /// [name] Name of the Custom Service
  /// [volumes] Configuring the volumes for the container
  const CustomServiceResponse({
    this.docker,
    this.endpoints,
    this.environmentVariables,
    this.image,
    this.kernel,
    this.name,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'docker': ?pulumi.Input.mapOptionalInputValue<DockerResponse, Map<String, dynamic>>(docker, (value) => value.toMap()),
      'endpoints': ?pulumi.Input.mapOptionalInputValue<List<EndpointResponse>, List<Map<String, dynamic>>>(endpoints, (value) => pulumi.Input.encodeList<EndpointResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'environmentVariables': ?pulumi.Input.mapOptionalInputValue<Map<String, EnvironmentVariableResponse>, Map<String, Map<String, dynamic>>>(environmentVariables, (value) => pulumi.Input.encodeMapValues<EnvironmentVariableResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'image': ?pulumi.Input.mapOptionalInputValue<ImageResponse, Map<String, dynamic>>(image, (value) => value.toMap()),
      'kernel': ?pulumi.Input.mapOptionalInputValue<JupyterKernelConfigResponse, Map<String, dynamic>>(kernel, (value) => value.toMap()),
      'name': ?name,
      'volumes': ?pulumi.Input.mapOptionalInputValue<List<VolumeDefinitionResponse>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<VolumeDefinitionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CustomServiceResponse.fromMap(Map<String, dynamic> map) {
    return CustomServiceResponse(
      docker: (() { final guardedValue = map['docker']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DockerResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EndpointResponse>(guardedValue, (value) => EndpointResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      environmentVariables: (() { final guardedValue = map['environmentVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<EnvironmentVariableResponse>(guardedValue, (value) => EnvironmentVariableResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kernel: (() { final guardedValue = map['kernel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JupyterKernelConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumes: (() { final guardedValue = map['volumes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VolumeDefinitionResponse>(guardedValue, (value) => VolumeDefinitionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
