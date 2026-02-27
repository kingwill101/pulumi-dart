import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_pair_lightsail_args.dart';

/// Manages a Lightsail Key Pair for use with Lightsail Instances. Use this resource to create or import key pairs that are separate from EC2 Key Pairs and required for Lightsail instances.
///
/// > **Note:** Lightsail is currently only supported in a limited number of AWS Regions, please see ["Regions and Availability Zones in Amazon Lightsail"](https://lightsail.aws.amazon.com/ls/docs/overview/article/understanding-regions-and-availability-zones-in-amazon-lightsail) for more details
///
/// ## Example Usage
///
/// ### Create New Key Pair
///
///
///
/// ### Create New Key Pair with PGP Encrypted Private Key
///
///
///
/// ### Existing Public Key Import
///
///
///
/// ## Import
///
/// You cannot import Lightsail Key Pairs because the private and public key are only available on initial creation.
class KeyPairLightsail extends pulumi.CustomResource {
  /// ARN of the Lightsail key pair.
  late final pulumi.Output<String> arn;

  /// MD5 public key fingerprint for the encrypted private key.
  late final pulumi.Output<String> encryptedFingerprint;

  /// Private key material, base 64 encoded and encrypted with the given `pgp_key`. This is only populated when creating a new key and `pgp_key` is supplied.
  late final pulumi.Output<String> encryptedPrivateKey;

  /// MD5 public key fingerprint as specified in section 4 of RFC 4716.
  late final pulumi.Output<String> fingerprint;

  /// Name of the Lightsail Key Pair. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  late final pulumi.Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;

  /// PGP key to encrypt the resulting private key material. Only used when creating a new key pair.
  late final pulumi.Output<String?> pgpKey;

  /// Private key, base64 encoded. This is only populated when creating a new key, and when no `pgp_key` is provided.
  late final pulumi.Output<String> privateKey;

  /// Public key material. This public key will be imported into Lightsail.
  late final pulumi.Output<String> publicKey;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// > **Note:** A PGP key is not required, however it is strongly encouraged. Without a PGP key, the private key material will be stored in state unencrypted. `pgp_key` is ignored if `public_key` is supplied.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  KeyPairLightsail(
    String name, {
    KeyPairLightsailArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/keyPair:KeyPair',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.encryptedFingerprint = registerOutput<String>('encryptedFingerprint');
    this.encryptedPrivateKey = registerOutput<String>('encryptedPrivateKey');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.pgpKey = registerOutput<String?>('pgpKey');
    this.privateKey = registerOutput<String>('privateKey');
    this.publicKey = registerOutput<String>('publicKey');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
