// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecr_registry_image_args_doc}
/// The set of arguments for RegistryImage.
/// {@endtemplate}
/// {@macro pulumi_ecr_registry_image_args_doc}
class RegistryImageArgs {
  /// If `true`, the verification of TLS certificates of the server/registry is disabled. Defaults to `false`
  final pulumi.Input<bool>? insecureSkipVerify;
  /// If true, then the Docker image won't be deleted on destroy operation. If this is false, it will delete the image from the docker registry on destroy operation. Defaults to `false`
  final pulumi.Input<bool>? keepRemotely;
  /// The URL of the repository (in the form aws_account_id.dkr.ecr.region.amazonaws.com/repositoryName).
  final pulumi.Input<String> repositoryUrl;
  /// The source image to push to the registry.
  final pulumi.Input<String> sourceImage;
  /// The tag to use for the pushed image. If not provided, it defaults to `latest`.
  final pulumi.Input<String>? tag;
  /// A map of arbitrary strings that, when changed, will force the `docker.RegistryImage` resource to be replaced. This can be used to repush a local image
  final pulumi.Input<Map<String, String>>? triggers;

  /// Creates a new [RegistryImageArgs].
  /// [insecureSkipVerify] If `true`, the verification of TLS certificates of the server/registry is disabled. Defaults to `false`
  /// [keepRemotely] If true, then the Docker image won't be deleted on destroy operation. If this is false, it will delete the image from the docker registry on destroy operation. Defaults to `false`
  /// [repositoryUrl] The URL of the repository (in the form aws_account_id.dkr.ecr.region.amazonaws.com/repositoryName).
  /// [sourceImage] The source image to push to the registry.
  /// [tag] The tag to use for the pushed image. If not provided, it defaults to `latest`.
  /// [triggers] A map of arbitrary strings that, when changed, will force the `docker.RegistryImage` resource to be replaced. This can be used to repush a local image
  RegistryImageArgs({
    this.insecureSkipVerify,
    this.keepRemotely,
    required this.repositoryUrl,
    required this.sourceImage,
    this.tag,
    this.triggers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'insecureSkipVerify': ?insecureSkipVerify,
      'keepRemotely': ?keepRemotely,
      'repositoryUrl': repositoryUrl,
      'sourceImage': sourceImage,
      'tag': ?tag,
      'triggers': ?triggers,
    };
  }

  factory RegistryImageArgs.fromMap(Map<String, dynamic> map) {
    return RegistryImageArgs(
      insecureSkipVerify: map['insecureSkipVerify'] == null ? null : (map['insecureSkipVerify'] as bool).input(),
      keepRemotely: map['keepRemotely'] == null ? null : (map['keepRemotely'] as bool).input(),
      repositoryUrl: (map['repositoryUrl'] as String).input(),
      sourceImage: (map['sourceImage'] as String).input(),
      tag: map['tag'] == null ? null : (map['tag'] as String).input(),
      triggers: map['triggers'] == null ? null : ((map['triggers'] as Map).cast<String, String>()).input(),
    );
  }
}

