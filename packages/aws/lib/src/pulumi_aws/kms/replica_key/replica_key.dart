import 'package:pulumi/pulumi.dart';
import 'replica_key_args.dart';

/// Manages a KMS multi-Region replica key.
///
/// ## Example Usage
///
/// ### AWS Provider v6 (and below)
///
///
///
/// ### AWS Provider v7 (and above)
///
///
///
/// ## Import
///
/// Using `pulumi import`, import KMS multi-Region replica keys using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:kms/replicaKey:ReplicaKey example 1234abcd-12ab-34cd-56ef-1234567890ab
/// ```
class ReplicaKey extends CustomResource {
  /// The Amazon Resource Name (ARN) of the replica key. The key ARNs of related multi-Region keys differ only in the Region value.
  late final Output<String> arn;

  /// A flag to indicate whether to bypass the key policy lockout safety check.
  /// Setting this value to true increases the risk that the KMS key becomes unmanageable. Do not set this value to true indiscriminately.
  /// For more information, refer to the scenario in the [Default Key Policy](https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam) section in the _AWS Key Management Service Developer Guide_.
  /// The default value is `false`.
  late final Output<bool?> bypassPolicyLockoutSafetyCheck;

  /// The waiting period, specified in number of days. After the waiting period ends, AWS KMS deletes the KMS key.
  /// If you specify a value, it must be between `7` and `30`, inclusive. If you do not specify a value, it defaults to `30`.
  late final Output<int?> deletionWindowInDays;

  /// A description of the KMS key.
  late final Output<String?> description;

  /// Specifies whether the replica key is enabled. Disabled KMS keys cannot be used in cryptographic operations. The default value is `true`.
  late final Output<bool?> enabled;

  /// The key ID of the replica key. Related multi-Region keys have the same key ID.
  late final Output<String> keyId;

  /// A Boolean value that specifies whether key rotation is enabled. This is a shared property of multi-Region keys.
  late final Output<bool> keyRotationEnabled;

  /// The type of key material in the KMS key. This is a shared property of multi-Region keys.
  late final Output<String> keySpec;

  /// The [cryptographic operations](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations) for which you can use the KMS key. This is a shared property of multi-Region keys.
  late final Output<String> keyUsage;

  /// The key policy to attach to the KMS key. If you do not specify a key policy, AWS KMS attaches the [default key policy](https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default) to the KMS key.
  late final Output<String> policy;

  /// The ARN of the multi-Region primary key to replicate. The primary key must be in a different AWS Region of the same AWS Partition. You can create only one replica of a given primary key in each AWS Region.
  late final Output<String> primaryKeyArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the replica key. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  ReplicaKey(
    String name, {
    ReplicaKeyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:kms/replicaKey:ReplicaKey',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.bypassPolicyLockoutSafetyCheck =
        registerOutput<bool?>('bypassPolicyLockoutSafetyCheck');
    this.deletionWindowInDays = registerOutput<int?>('deletionWindowInDays');
    this.description = registerOutput<String?>('description');
    this.enabled = registerOutput<bool?>('enabled');
    this.keyId = registerOutput<String>('keyId');
    this.keyRotationEnabled = registerOutput<bool>('keyRotationEnabled');
    this.keySpec = registerOutput<String>('keySpec');
    this.keyUsage = registerOutput<String>('keyUsage');
    this.policy = registerOutput<String>('policy');
    this.primaryKeyArn = registerOutput<String>('primaryKeyArn');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
