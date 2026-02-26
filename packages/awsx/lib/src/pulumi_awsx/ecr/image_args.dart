// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'builder_version.dart';

/// The set of arguments for Image.
class ImageArgs {
  /// An optional map of named build-time argument variables to set during the Docker build.  This flag allows you to pass built-time variables that can be accessed like environment variables inside the `RUN` instruction.
  final Input<Map<String, String>>? args;

  /// The version of the Docker builder.
  final Input<BuilderVersion>? builderVersion;

  /// Images to consider as cache sources
  final Input<List<String>>? cacheFrom;

  /// Path to a directory to use for the Docker build context, usually the directory in which the Dockerfile resides (although dockerfile may be used to choose a custom location independent of this choice). If not specified, the context defaults to the current working directory; if a relative path is used, it is relative to the current working directory that Pulumi is evaluating.
  final Input<String>? context;

  /// dockerfile may be used to override the default Dockerfile name and/or location.  By default, it is assumed to be a file named Dockerfile in the root of the build context.
  final Input<String>? dockerfile;

  /// Custom name for the underlying Docker image resource. If omitted, the image tag assigned by the provider will be used
  final Input<String>? imageName;

  /// Custom image tag for the resulting docker image. If omitted a random string will be used
  final Input<String>? imageTag;

  /// The architecture of the platform you want to build this image for, e.g. `linux/arm64`.
  final Input<String>? platform;

  /// ID of the ECR registry in which to store the image.  If not provided, this will be inferred from the repository URL)
  final Input<String>? registryId;

  /// Url of the repository
  final Input<String> repositoryUrl;

  /// The target of the dockerfile to build
  final Input<String>? target;

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
    final map = <String, dynamic>{};
    final argsValue = args;
    if (argsValue != null) {
      map['args'] = argsValue;
    }
    final builderVersionValue = builderVersion;
    if (builderVersionValue != null) {
      map['builderVersion'] =
          Input.mapOptionalInputValue<BuilderVersion, String>(
              builderVersionValue, (value) => value.value);
    }
    final cacheFromValue = cacheFrom;
    if (cacheFromValue != null) {
      map['cacheFrom'] = cacheFromValue;
    }
    final contextValue = context;
    if (contextValue != null) {
      map['context'] = contextValue;
    }
    final dockerfileValue = dockerfile;
    if (dockerfileValue != null) {
      map['dockerfile'] = dockerfileValue;
    }
    final imageNameValue = imageName;
    if (imageNameValue != null) {
      map['imageName'] = imageNameValue;
    }
    final imageTagValue = imageTag;
    if (imageTagValue != null) {
      map['imageTag'] = imageTagValue;
    }
    final platformValue = platform;
    if (platformValue != null) {
      map['platform'] = platformValue;
    }
    final registryIdValue = registryId;
    if (registryIdValue != null) {
      map['registryId'] = registryIdValue;
    }
    map['repositoryUrl'] = repositoryUrl;
    final targetValue = target;
    if (targetValue != null) {
      map['target'] = targetValue;
    }
    return map;
  }

  factory ImageArgs.fromMap(Map<String, dynamic> map) {
    return ImageArgs(
      args: Input.asOptionalInput<Map<String, String>>(map['args']),
      builderVersion:
          Input.asOptionalInput<BuilderVersion>(map['builderVersion']),
      cacheFrom: Input.asOptionalInput<List<String>>(map['cacheFrom']),
      context: Input.asOptionalInput<String>(map['context']),
      dockerfile: Input.asOptionalInput<String>(map['dockerfile']),
      imageName: Input.asOptionalInput<String>(map['imageName']),
      imageTag: Input.asOptionalInput<String>(map['imageTag']),
      platform: Input.asOptionalInput<String>(map['platform']),
      registryId: Input.asOptionalInput<String>(map['registryId']),
      repositoryUrl: Input.asInput<String>(map['repositoryUrl']),
      target: Input.asOptionalInput<String>(map['target']),
    );
  }
}
