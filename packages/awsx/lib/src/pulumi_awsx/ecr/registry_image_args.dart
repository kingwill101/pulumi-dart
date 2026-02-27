// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for RegistryImage.
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

  RegistryImageArgs({
    this.insecureSkipVerify,
    this.keepRemotely,
    required this.repositoryUrl,
    required this.sourceImage,
    this.tag,
    this.triggers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final insecureSkipVerifyValue = insecureSkipVerify;
    if (insecureSkipVerifyValue != null) {
      map['insecureSkipVerify'] = insecureSkipVerifyValue;
    }
    final keepRemotelyValue = keepRemotely;
    if (keepRemotelyValue != null) {
      map['keepRemotely'] = keepRemotelyValue;
    }
    map['repositoryUrl'] = repositoryUrl;
    map['sourceImage'] = sourceImage;
    final tagValue = tag;
    if (tagValue != null) {
      map['tag'] = tagValue;
    }
    final triggersValue = triggers;
    if (triggersValue != null) {
      map['triggers'] = triggersValue;
    }
    return map;
  }

  factory RegistryImageArgs.fromMap(Map<String, dynamic> map) {
    return RegistryImageArgs(
      insecureSkipVerify:
          pulumi.Input.asOptionalInput<bool>(map['insecureSkipVerify']),
      keepRemotely: pulumi.Input.asOptionalInput<bool>(map['keepRemotely']),
      repositoryUrl: pulumi.Input.asInput<String>(map['repositoryUrl']),
      sourceImage: pulumi.Input.asInput<String>(map['sourceImage']),
      tag: pulumi.Input.asOptionalInput<String>(map['tag']),
      triggers:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['triggers']),
    );
  }
}
