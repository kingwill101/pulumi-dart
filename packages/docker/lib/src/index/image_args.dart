// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'docker_build.dart';
import 'registry.dart';

/// {@template pulumi_index_image_image_args_doc}
/// The set of arguments for Image.
/// {@endtemplate}
/// {@macro pulumi_index_image_image_args_doc}
class ImageArgs {
  /// The Docker build context
  final pulumi.Input<DockerBuild>? build;
  /// A flag to build an image on preview
  final pulumi.Input<bool>? buildOnPreview;
  /// The image name, of the format repository[:tag], e.g. `docker.io/username/demo-image:v1`.
  /// This reference is not unique to each build and push.For the unique manifest SHA of a pushed docker image, or the local image ID, please use `repoDigest`.
  final pulumi.Input<String> imageName;
  /// The registry to push the image to
  final pulumi.Input<Registry>? registry;
  /// A flag to skip a registry push.
  final pulumi.Input<bool>? skipPush;

  /// Creates a new [ImageArgs].
  /// [build] The Docker build context
  /// [buildOnPreview] A flag to build an image on preview
  /// [imageName] The image name, of the format repository[:tag], e.g. `docker.io/username/demo-image:v1`.
  /// [registry] The registry to push the image to
  /// [skipPush] A flag to skip a registry push.
  ImageArgs({
    DockerBuild? build,
    bool? buildOnPreview,
    required String imageName,
    Registry? registry,
    bool? skipPush,
  }) :
      build = pulumi.Input.asOptionalInput<DockerBuild>(build),
      buildOnPreview = pulumi.Input.asOptionalInput<bool>(buildOnPreview),
      imageName = pulumi.Input.asInput<String>(imageName),
      registry = pulumi.Input.asOptionalInput<Registry>(registry),
      skipPush = pulumi.Input.asOptionalInput<bool>(skipPush);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'build': ?pulumi.Input.mapOptionalInputValue<DockerBuild, Map<String, dynamic>>(build, (value) => value.toMap()),
      'buildOnPreview': ?buildOnPreview,
      'imageName': imageName,
      'registry': ?pulumi.Input.mapOptionalInputValue<Registry, Map<String, dynamic>>(registry, (value) => value.toMap()),
      'skipPush': ?skipPush,
    };
  }

  factory ImageArgs.fromMap(Map<String, dynamic> map) {
    return ImageArgs(
      build: map['build'] == null ? null : DockerBuild.fromMap((map['build'] as Map).cast<String, dynamic>()),
      buildOnPreview: map['buildOnPreview'] == null ? null : map['buildOnPreview'] as bool,
      imageName: map['imageName'] as String,
      registry: map['registry'] == null ? null : Registry.fromMap((map['registry'] as Map).cast<String, dynamic>()),
      skipPush: map['skipPush'] == null ? null : map['skipPush'] as bool,
    );
  }
}

