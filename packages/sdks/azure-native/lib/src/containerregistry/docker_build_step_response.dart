// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'argument_response.dart';
import 'base_image_dependency_response.dart';

/// The Docker build step.
class DockerBuildStepResponse {
  /// The collection of override arguments to be used when executing this build step.
  final pulumi.Input<List<ArgumentResponse>>? arguments;
  /// List of base image dependencies for a step.
  final pulumi.Input<List<BaseImageDependencyResponse>> baseImageDependencies;
  /// The token (git PAT or SAS token of storage account blob) associated with the context for a step.
  final pulumi.Input<String>? contextAccessToken;
  /// The URL(absolute or relative) of the source context for the task step.
  final pulumi.Input<String>? contextPath;
  /// The Docker file path relative to the source context.
  final pulumi.Input<String> dockerFilePath;
  /// The fully qualified image names including the repository and tag.
  final pulumi.Input<List<String>>? imageNames;
  /// The value of this property indicates whether the image built should be pushed to the registry or not.
  final pulumi.Input<bool>? isPushEnabled;
  /// The value of this property indicates whether the image cache is enabled or not.
  final pulumi.Input<bool>? noCache;
  /// The name of the target build stage for the docker build.
  final pulumi.Input<String>? target;
  /// The type of the step.
  /// Expected value is 'Docker'.
  final pulumi.Input<String> type;

  /// Creates a new [DockerBuildStepResponse].
  /// [arguments] The collection of override arguments to be used when executing this build step.
  /// [baseImageDependencies] List of base image dependencies for a step.
  /// [contextAccessToken] The token (git PAT or SAS token of storage account blob) associated with the context for a step.
  /// [contextPath] The URL(absolute or relative) of the source context for the task step.
  /// [dockerFilePath] The Docker file path relative to the source context.
  /// [imageNames] The fully qualified image names including the repository and tag.
  /// [isPushEnabled] The value of this property indicates whether the image built should be pushed to the registry or not.
  /// [noCache] The value of this property indicates whether the image cache is enabled or not.
  /// [target] The name of the target build stage for the docker build.
  /// [type] The type of the step.
  const DockerBuildStepResponse({
    this.arguments,
    required this.baseImageDependencies,
    this.contextAccessToken,
    this.contextPath,
    required this.dockerFilePath,
    this.imageNames,
    this.isPushEnabled,
    this.noCache,
    this.target,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arguments': ?pulumi.Input.mapOptionalInputValue<List<ArgumentResponse>, List<Map<String, dynamic>>>(arguments, (value) => pulumi.Input.encodeList<ArgumentResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'baseImageDependencies': pulumi.Input.mapInputValue<List<BaseImageDependencyResponse>, List<Map<String, dynamic>>>(baseImageDependencies, (value) => pulumi.Input.encodeList<BaseImageDependencyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'contextAccessToken': ?contextAccessToken,
      'contextPath': ?contextPath,
      'dockerFilePath': dockerFilePath,
      'imageNames': ?imageNames,
      'isPushEnabled': ?isPushEnabled,
      'noCache': ?noCache,
      'target': ?target,
      'type': type,
    };
  }

  factory DockerBuildStepResponse.fromMap(Map<String, dynamic> map) {
    return DockerBuildStepResponse(
      arguments: (() { final guardedValue = map['arguments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ArgumentResponse>(guardedValue, (value) => ArgumentResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      baseImageDependencies: pulumi.Input.fromValue(pulumi.Input.decodeList<BaseImageDependencyResponse>(map['baseImageDependencies']!, (value) => BaseImageDependencyResponse.fromMap((value as Map).cast<String, dynamic>()))),
      contextAccessToken: (() { final guardedValue = map['contextAccessToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contextPath: (() { final guardedValue = map['contextPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dockerFilePath: pulumi.Input.fromValue(map['dockerFilePath'] as String),
      imageNames: (() { final guardedValue = map['imageNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      isPushEnabled: (() { final guardedValue = map['isPushEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      noCache: (() { final guardedValue = map['noCache']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
