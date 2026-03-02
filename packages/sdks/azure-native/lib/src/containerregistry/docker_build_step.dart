// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'argument.dart';

/// The Docker build step.
class DockerBuildStep {
  /// The collection of override arguments to be used when executing this build step.
  final pulumi.Input<List<Argument>>? arguments;
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

  /// Creates a new [DockerBuildStep].
  /// [arguments] The collection of override arguments to be used when executing this build step.
  /// [contextAccessToken] The token (git PAT or SAS token of storage account blob) associated with the context for a step.
  /// [contextPath] The URL(absolute or relative) of the source context for the task step.
  /// [dockerFilePath] The Docker file path relative to the source context.
  /// [imageNames] The fully qualified image names including the repository and tag.
  /// [isPushEnabled] The value of this property indicates whether the image built should be pushed to the registry or not.
  /// [noCache] The value of this property indicates whether the image cache is enabled or not.
  /// [target] The name of the target build stage for the docker build.
  /// [type] The type of the step.
  DockerBuildStep({
    this.arguments,
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
      'arguments': ?pulumi.Input.mapOptionalInputValue<List<Argument>, List<Map<String, dynamic>>>(arguments, (value) => pulumi.Input.encodeList<Argument, Map<String, dynamic>>(value, (value) => value.toMap())),
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

  factory DockerBuildStep.fromMap(Map<String, dynamic> map) {
    return DockerBuildStep(
      arguments: map['arguments'] == null ? null : (pulumi.Input.decodeList<Argument>(map['arguments'], (value) => Argument.fromMap((value as Map).cast<String, dynamic>()))).input(),
      contextAccessToken: map['contextAccessToken'] == null ? null : (map['contextAccessToken'] as String).input(),
      contextPath: map['contextPath'] == null ? null : (map['contextPath'] as String).input(),
      dockerFilePath: (map['dockerFilePath'] as String).input(),
      imageNames: map['imageNames'] == null ? null : ((map['imageNames'] as List).cast<String>()).input(),
      isPushEnabled: map['isPushEnabled'] == null ? null : (map['isPushEnabled'] as bool).input(),
      noCache: map['noCache'] == null ? null : (map['noCache'] as bool).input(),
      target: map['target'] == null ? null : (map['target'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

