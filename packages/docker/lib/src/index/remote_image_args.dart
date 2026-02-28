// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'remote_image_build.dart';

/// {@template pulumi_index_remote_image_remote_image_args_doc}
/// The set of arguments for RemoteImage.
/// {@endtemplate}
/// {@macro pulumi_index_remote_image_remote_image_args_doc}
class RemoteImageArgs {
  final pulumi.Input<RemoteImageBuild>? build;
  /// If true, then the image is removed forcibly when the resource is destroyed.
  final pulumi.Input<bool>? forceRemove;
  /// If true, then the Docker image won't be deleted on destroy operation. If this is false, it will delete the image from the docker local storage on destroy operation.
  final pulumi.Input<bool>? keepLocally;
  /// The name of the Docker image, including any tags or SHA256 repo digests.
  final pulumi.Input<String> name;
  /// The platform to use when pulling the image. Defaults to the platform of the current machine.
  final pulumi.Input<String>? platform;
  /// List of values which cause an image pull when changed. This is used to store the image digest from the registry when using the docker*registry*image.
  final pulumi.Input<List<String>>? pullTriggers;
  /// A map of arbitrary strings that, when changed, will force the `docker.RemoteImage` resource to be replaced. This can be used to rebuild an image when contents of source code folders change
  final pulumi.Input<Map<String, String>>? triggers;

  /// Creates a new [RemoteImageArgs].
  /// [build] Optional.
  /// [forceRemove] If true, then the image is removed forcibly when the resource is destroyed.
  /// [keepLocally] If true, then the Docker image won't be deleted on destroy operation. If this is false, it will delete the image from the docker local storage on destroy operation.
  /// [name] The name of the Docker image, including any tags or SHA256 repo digests.
  /// [platform] The platform to use when pulling the image. Defaults to the platform of the current machine.
  /// [pullTriggers] List of values which cause an image pull when changed. This is used to store the image digest from the registry when using the docker*registry*image.
  /// [triggers] A map of arbitrary strings that, when changed, will force the `docker.RemoteImage` resource to be replaced. This can be used to rebuild an image when contents of source code folders change
  RemoteImageArgs({
    RemoteImageBuild? build,
    bool? forceRemove,
    bool? keepLocally,
    required String name,
    String? platform,
    List<String>? pullTriggers,
    Map<String, String>? triggers,
  }) :
      build = pulumi.Input.asOptionalInput<RemoteImageBuild>(build),
      forceRemove = pulumi.Input.asOptionalInput<bool>(forceRemove),
      keepLocally = pulumi.Input.asOptionalInput<bool>(keepLocally),
      name = pulumi.Input.asInput<String>(name),
      platform = pulumi.Input.asOptionalInput<String>(platform),
      pullTriggers = pulumi.Input.asOptionalInput<List<String>>(pullTriggers),
      triggers = pulumi.Input.asOptionalInput<Map<String, String>>(triggers);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'build': ?pulumi.Input.mapOptionalInputValue<RemoteImageBuild, Map<String, dynamic>>(build, (value) => value.toMap()),
      'forceRemove': ?forceRemove,
      'keepLocally': ?keepLocally,
      'name': name,
      'platform': ?platform,
      'pullTriggers': ?pullTriggers,
      'triggers': ?triggers,
    };
  }

  factory RemoteImageArgs.fromMap(Map<String, dynamic> map) {
    return RemoteImageArgs(
      build: map['build'] == null ? null : RemoteImageBuild.fromMap((map['build'] as Map).cast<String, dynamic>()),
      forceRemove: map['forceRemove'] == null ? null : map['forceRemove'] as bool,
      keepLocally: map['keepLocally'] == null ? null : map['keepLocally'] as bool,
      name: map['name'] as String,
      platform: map['platform'] == null ? null : map['platform'] as String,
      pullTriggers: map['pullTriggers'] == null ? null : (map['pullTriggers'] as List).cast<String>(),
      triggers: map['triggers'] == null ? null : (map['triggers'] as Map).cast<String, String>(),
    );
  }
}

