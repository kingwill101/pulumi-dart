// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'builder_version.dart';

/// {@template pulumi_ecr_image_args_doc}
/// The set of arguments for Image.
/// {@endtemplate}
/// {@macro pulumi_ecr_image_args_doc}
class ImageArgs {
  /// An optional map of named build-time argument variables to set during the Docker build.  This flag allows you to pass built-time variables that can be accessed like environment variables inside the `RUN` instruction.
  final pulumi.Input<Map<String, String>>? args;

  /// The version of the Docker builder.
  final pulumi.Input<BuilderVersion>? builderVersion;

  /// Images to consider as cache sources
  final pulumi.Input<List<String>>? cacheFrom;

  /// Path to a directory to use for the Docker build context, usually the directory in which the Dockerfile resides (although dockerfile may be used to choose a custom location independent of this choice). If not specified, the context defaults to the current working directory; if a relative path is used, it is relative to the current working directory that Pulumi is evaluating.
  final pulumi.Input<String>? context;

  /// dockerfile may be used to override the default Dockerfile name and/or location.  By default, it is assumed to be a file named Dockerfile in the root of the build context.
  final pulumi.Input<String>? dockerfile;

  /// Custom name for the underlying Docker image resource. If omitted, the image tag assigned by the provider will be used
  final pulumi.Input<String>? imageName;

  /// Custom image tag for the resulting docker image. If omitted a random string will be used
  final pulumi.Input<String>? imageTag;

  /// The architecture of the platform you want to build this image for, e.g. `linux/arm64`.
  final pulumi.Input<String>? platform;

  /// ID of the ECR registry in which to store the image.  If not provided, this will be inferred from the repository URL)
  final pulumi.Input<String>? registryId;

  /// Url of the repository
  final pulumi.Input<String> repositoryUrl;

  /// The target of the dockerfile to build
  final pulumi.Input<String>? target;

  /// Creates a new [ImageArgs].
  /// [args] An optional map of named build-time argument variables to set during the Docker build.  This flag allows you to pass built-time variables that can be accessed like environment variables inside the `RUN` instruction.
  /// [builderVersion] The version of the Docker builder.
  /// [cacheFrom] Images to consider as cache sources
  /// [context] Path to a directory to use for the Docker build context, usually the directory in which the Dockerfile resides (although dockerfile may be used to choose a custom location independent of this choice). If not specified, the context defaults to the current working directory; if a relative path is used, it is relative to the current working directory that Pulumi is evaluating.
  /// [dockerfile] dockerfile may be used to override the default Dockerfile name and/or location.  By default, it is assumed to be a file named Dockerfile in the root of the build context.
  /// [imageName] Custom name for the underlying Docker image resource. If omitted, the image tag assigned by the provider will be used
  /// [imageTag] Custom image tag for the resulting docker image. If omitted a random string will be used
  /// [platform] The architecture of the platform you want to build this image for, e.g. `linux/arm64`.
  /// [registryId] ID of the ECR registry in which to store the image.  If not provided, this will be inferred from the repository URL)
  /// [repositoryUrl] Url of the repository
  /// [target] The target of the dockerfile to build
  ImageArgs({
    this.args,
    this.builderVersion,
    this.cacheFrom,
    this.context,
    this.dockerfile,
    this.imageName,
    this.imageTag,
    this.platform,
    this.registryId,
    required this.repositoryUrl,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'builderVersion':
          ?pulumi.Input.mapOptionalInputValue<BuilderVersion, String>(
            builderVersion,
            (value) => value.wireValue,
          ),
      'cacheFrom': ?cacheFrom,
      'context': ?context,
      'dockerfile': ?dockerfile,
      'imageName': ?imageName,
      'imageTag': ?imageTag,
      'platform': ?platform,
      'registryId': ?registryId,
      'repositoryUrl': repositoryUrl,
      'target': ?target,
    };
  }

  factory ImageArgs.fromMap(Map<String, dynamic> map) {
    return ImageArgs(
      args: (() {
        final guardedValue = map['args'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      builderVersion: (() {
        final guardedValue = map['builderVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BuilderVersion.fromValue(guardedValue as String),
        );
      })(),
      cacheFrom: (() {
        final guardedValue = map['cacheFrom'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      context: (() {
        final guardedValue = map['context'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dockerfile: (() {
        final guardedValue = map['dockerfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      imageName: (() {
        final guardedValue = map['imageName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      imageTag: (() {
        final guardedValue = map['imageTag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      platform: (() {
        final guardedValue = map['platform'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      registryId: (() {
        final guardedValue = map['registryId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      repositoryUrl: pulumi.Input.fromValue(map['repositoryUrl'] as String),
      target: (() {
        final guardedValue = map['target'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
