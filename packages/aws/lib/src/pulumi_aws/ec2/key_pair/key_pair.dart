import 'package:pulumi/pulumi.dart';
import 'key_pair_args.dart';

/// Provides an [EC2 key pair](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html) resource. A key pair is used to control login access to EC2 instances.
///
/// Currently this resource requires an existing user-supplied key pair. This key pair's public key will be registered with AWS to allow logging-in to EC2 instances.
///
/// When importing an existing key pair the public key material may be in any format supported by AWS. Supported formats (per the [AWS documentation](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html#how-to-generate-your-own-key-and-import-it-to-aws)) are:
///
/// * OpenSSH public key format (the format in ~/.ssh/authorized_keys)
/// * Base64 encoded DER format
/// * SSH public key file format as specified in RFC4716
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Key Pairs using the `key_name`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/keyPair:KeyPair deployer deployer-key
/// ```
///
/// > **NOTE:** The AWS API does not include the public key in the response, so `pulumi up` will attempt to replace the key pair. There is currently no supported workaround for this limitation.
class KeyPair extends CustomResource {
  /// The key pair ARN.
  late final Output<String> arn;

  /// The MD5 public key fingerprint as specified in section 4 of RFC 4716.
  late final Output<String> fingerprint;

  /// The name for the key pair. If neither `key_name` nor `key_name_prefix` is provided, the provider will create a unique key name.
  late final Output<String> keyName;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `key_name`. If neither `key_name` nor `key_name_prefix` is provided, the provider will create a unique key name.
  late final Output<String> keyNamePrefix;

  /// The key pair ID.
  late final Output<String> keyPairId;

  /// The type of key pair.
  late final Output<String> keyType;

  /// The public key material.
  late final Output<String> publicKey;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  KeyPair(
    String name, {
    KeyPairArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/keyPair:KeyPair',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.keyName = registerOutput<String>('keyName');
    this.keyNamePrefix = registerOutput<String>('keyNamePrefix');
    this.keyPairId = registerOutput<String>('keyPairId');
    this.keyType = registerOutput<String>('keyType');
    this.publicKey = registerOutput<String>('publicKey');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
