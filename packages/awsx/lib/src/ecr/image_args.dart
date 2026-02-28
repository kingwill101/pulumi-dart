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
    Map<String, String>? args,
    BuilderVersion? builderVersion,
    List<String>? cacheFrom,
    String? context,
    String? dockerfile,
    String? imageName,
    String? imageTag,
    String? platform,
    String? registryId,
    required String repositoryUrl,
    String? target,
  }) :
      args = pulumi.Input.asOptionalInput<Map<String, String>>(args),
      builderVersion = pulumi.Input.asOptionalInput<BuilderVersion>(builderVersion),
      cacheFrom = pulumi.Input.asOptionalInput<List<String>>(cacheFrom),
      context = pulumi.Input.asOptionalInput<String>(context),
      dockerfile = pulumi.Input.asOptionalInput<String>(dockerfile),
      imageName = pulumi.Input.asOptionalInput<String>(imageName),
      imageTag = pulumi.Input.asOptionalInput<String>(imageTag),
      platform = pulumi.Input.asOptionalInput<String>(platform),
      registryId = pulumi.Input.asOptionalInput<String>(registryId),
      repositoryUrl = pulumi.Input.asInput<String>(repositoryUrl),
      target = pulumi.Input.asOptionalInput<String>(target);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'builderVersion': ?pulumi.Input.mapOptionalInputValue<BuilderVersion, String>(builderVersion, (value) => value.value),
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
      args: map['args'] == null ? null : (map['args'] as Map).cast<String, String>(),
      builderVersion: map['builderVersion'] == null ? null : BuilderVersion.fromValue(map['builderVersion'] as String),
      cacheFrom: map['cacheFrom'] == null ? null : (map['cacheFrom'] as List).cast<String>(),
      context: map['context'] == null ? null : map['context'] as String,
      dockerfile: map['dockerfile'] == null ? null : map['dockerfile'] as String,
      imageName: map['imageName'] == null ? null : map['imageName'] as String,
      imageTag: map['imageTag'] == null ? null : map['imageTag'] as String,
      platform: map['platform'] == null ? null : map['platform'] as String,
      registryId: map['registryId'] == null ? null : map['registryId'] as String,
      repositoryUrl: map['repositoryUrl'] as String,
      target: map['target'] == null ? null : map['target'] as String,
    );
  }
}

