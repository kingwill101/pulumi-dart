import 'package:pulumi/pulumi.dart' as pulumi;
import 'grant_args.dart';
import 'grant_constraint.dart';

/// Provides a resource-based access control mechanism for a KMS customer master key.
///
/// > **Note:** All arguments including the grant token will be stored in the raw state as plain-text.
/// ## Import
///
/// Using `pulumi import`, import KMS Grants using the Key ID and Grant ID separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:kms/grant:Grant test 1234abcd-12ab-34cd-56ef-1234567890ab:abcde1237f76e4ba7987489ac329fbfba6ad343d6f7075dbd1ef191f0120514
/// ```
class Grant extends pulumi.CustomResource {
  /// A structure that you can use to allow certain operations in the grant only when the desired encryption context is present. For more information about encryption context, see [Encryption Context](https://docs.aws.amazon.com/kms/latest/developerguide/encrypt_context.html).
  late final pulumi.Output<List<GrantConstraint>?> constraints;

  /// A list of grant tokens to be used when creating the grant. See [Grant Tokens](https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token) for more information about grant tokens.
  late final pulumi.Output<List<String>?> grantCreationTokens;

  /// The unique identifier for the grant.
  late final pulumi.Output<String> grantId;

  /// The grant token for the created grant. For more information, see [Grant Tokens](https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token).
  late final pulumi.Output<String> grantToken;

  /// The principal that is given permission to perform the operations that the grant permits in ARN format. Note that due to eventual consistency issues around IAM principals, the providers's state may not always be refreshed to reflect what is true in AWS.
  late final pulumi.Output<String> granteePrincipal;

  /// The unique identifier for the customer master key (CMK) that the grant applies to. Specify the key ID or the Amazon Resource Name (ARN) of the CMK. To specify a CMK in a different AWS account, you must use the key ARN.
  late final pulumi.Output<String> keyId;

  /// A friendly name for identifying the grant.
  late final pulumi.Output<String> name;

  /// A list of operations that the grant permits. The permitted values are: `Decrypt`, `Encrypt`, `GenerateDataKey`, `GenerateDataKeyWithoutPlaintext`, `ReEncryptFrom`, `ReEncryptTo`, `Sign`, `Verify`, `GetPublicKey`, `CreateGrant`, `RetireGrant`, `DescribeKey`, `GenerateDataKeyPair`, or `GenerateDataKeyPairWithoutPlaintext`.
  late final pulumi.Output<List<String>> operations;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// If set to false (the default) the grants will be revoked upon deletion, and if set to true the grants will try to be retired upon deletion. Note that retiring grants requires special permissions, hence why we default to revoking grants.
  /// See [RetireGrant](https://docs.aws.amazon.com/kms/latest/APIReference/API_RetireGrant.html) for more information.
  late final pulumi.Output<bool?> retireOnDelete;

  /// The principal that is given permission to retire the grant by using RetireGrant operation in ARN format. Note that due to eventual consistency issues around IAM principals, the providers's state may not always be refreshed to reflect what is true in AWS.
  late final pulumi.Output<String?> retiringPrincipal;

  /// Creates a new [Grant].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Grant]. {@macro pulumi_kms_grant_grant_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Grant(String name, {GrantArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'aws:kms/grant:Grant',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    this.constraints = registerOutput<List<GrantConstraint>?>('constraints');
    this.grantCreationTokens = registerOutput<List<String>?>(
      'grantCreationTokens',
    );
    this.grantId = registerOutput<String>('grantId');
    this.grantToken = registerOutput<String>('grantToken');
    this.granteePrincipal = registerOutput<String>('granteePrincipal');
    this.keyId = registerOutput<String>('keyId');
    this.name = registerOutput<String>('name');
    this.operations = registerOutput<List<String>>('operations');
    this.region = registerOutput<String>('region');
    this.retireOnDelete = registerOutput<bool?>('retireOnDelete');
    this.retiringPrincipal = registerOutput<String?>('retiringPrincipal');
  }
}
