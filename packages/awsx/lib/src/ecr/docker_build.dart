// ignore_for_file: unused_element, unnecessary_cast

import 'builder_version.dart';

/// Arguments for building a docker image
class DockerBuild {
  /// An optional map of named build-time argument variables to set during the Docker build.  This flag allows you to pass built-time variables that can be accessed like environment variables inside the `RUN` instruction.
  final Map<String, String>? args;
  /// The version of the Docker builder.
  final BuilderVersion? builderVersion;
  /// Images to consider as cache sources
  final List<String>? cacheFrom;
  /// Path to a directory to use for the Docker build context, usually the directory in which the Dockerfile resides (although dockerfile may be used to choose a custom location independent of this choice). If not specified, the context defaults to the current working directory; if a relative path is used, it is relative to the current working directory that Pulumi is evaluating.
  final String? context;
  /// dockerfile may be used to override the default Dockerfile name and/or location.  By default, it is assumed to be a file named Dockerfile in the root of the build context.
  final String? dockerfile;
  /// Custom name for the underlying Docker image resource. If omitted, the image tag assigned by the provider will be used
  final String? imageName;
  /// Custom image tag for the resulting docker image. If omitted a random string will be used
  final String? imageTag;
  /// The architecture of the platform you want to build this image for, e.g. `linux/arm64`.
  final String? platform;
  /// The target of the dockerfile to build
  final String? target;

  /// Creates a new [DockerBuild].
  /// [args] An optional map of named build-time argument variables to set during the Docker build.  This flag allows you to pass built-time variables that can be accessed like environment variables inside the `RUN` instruction.
  /// [builderVersion] The version of the Docker builder.
  /// [cacheFrom] Images to consider as cache sources
  /// [context] Path to a directory to use for the Docker build context, usually the directory in which the Dockerfile resides (although dockerfile may be used to choose a custom location independent of this choice). If not specified, the context defaults to the current working directory; if a relative path is used, it is relative to the current working directory that Pulumi is evaluating.
  /// [dockerfile] dockerfile may be used to override the default Dockerfile name and/or location.  By default, it is assumed to be a file named Dockerfile in the root of the build context.
  /// [imageName] Custom name for the underlying Docker image resource. If omitted, the image tag assigned by the provider will be used
  /// [imageTag] Custom image tag for the resulting docker image. If omitted a random string will be used
  /// [platform] The architecture of the platform you want to build this image for, e.g. `linux/arm64`.
  /// [target] The target of the dockerfile to build
  DockerBuild({
    this.args,
    this.builderVersion,
    this.cacheFrom,
    this.context,
    this.dockerfile,
    this.imageName,
    this.imageTag,
    this.platform,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'builderVersion': ?builderVersion == null ? null : builderVersion!.value,
      'cacheFrom': ?cacheFrom,
      'context': ?context,
      'dockerfile': ?dockerfile,
      'imageName': ?imageName,
      'imageTag': ?imageTag,
      'platform': ?platform,
      'target': ?target,
    };
  }

  factory DockerBuild.fromMap(Map<String, dynamic> map) {
    return DockerBuild(
      args: map['args'] == null ? null : (map['args'] as Map).cast<String, String>(),
      builderVersion: map['builderVersion'] == null ? null : BuilderVersion.fromValue(map['builderVersion'] as String),
      cacheFrom: map['cacheFrom'] == null ? null : (map['cacheFrom'] as List).cast<String>(),
      context: map['context'] == null ? null : map['context'] as String,
      dockerfile: map['dockerfile'] == null ? null : map['dockerfile'] as String,
      imageName: map['imageName'] == null ? null : map['imageName'] as String,
      imageTag: map['imageTag'] == null ? null : map['imageTag'] as String,
      platform: map['platform'] == null ? null : map['platform'] as String,
      target: map['target'] == null ? null : map['target'] as String,
    );
  }
}

