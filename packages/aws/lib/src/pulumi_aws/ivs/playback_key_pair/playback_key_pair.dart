import 'package:pulumi/pulumi.dart' as pulumi;
import 'playback_key_pair_args.dart';

/// Resource for managing an AWS IVS (Interactive Video) Playback Key Pair.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the IVS playback key pair.
///
///
/// Using `pulumi import`, import IVS (Interactive Video) Playback Key Pair using the ARN. For example:
///
/// ```sh
/// $ pulumi import aws:ivs/playbackKeyPair:PlaybackKeyPair example arn:aws:ivs:us-west-2:326937407773:playback-key/KDJRJNQhiQzA
/// ```
class PlaybackKeyPair extends pulumi.CustomResource {
  /// ARN of the Playback Key Pair.
  late final pulumi.Output<String> arn;

  /// Key-pair identifier.
  late final pulumi.Output<String> fingerprint;

  /// Playback Key Pair name.
  late final pulumi.Output<String> name;

  /// Public portion of a customer-generated key pair. Must be an ECDSA public key in PEM format.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> publicKey;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  PlaybackKeyPair(
    String name, {
    PlaybackKeyPairArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ivs/playbackKeyPair:PlaybackKeyPair',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.name = registerOutput<String>('name');
    this.publicKey = registerOutput<String>('publicKey');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
