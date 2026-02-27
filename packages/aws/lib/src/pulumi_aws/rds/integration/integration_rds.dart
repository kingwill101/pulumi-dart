import 'package:pulumi/pulumi.dart' as pulumi;
import '../integration_timeouts/integration_timeouts.dart';
import 'integration_rds_args.dart';

/// Resource for managing an AWS RDS (Relational Database) zero-ETL integration. You can refer to the [User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/zero-etl.setting-up.html).
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Use own KMS key
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the RDS integration.
///
///
/// Using `pulumi import`, import RDS (Relational Database) Integration using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:rds/integration:Integration example arn:aws:rds:us-west-2:123456789012:integration:abcdefgh-0000-1111-2222-123456789012
/// ```
class IntegrationRds extends pulumi.CustomResource {
  /// Set of non-secret key–value pairs that contains additional contextual information about the data.
  /// For more information, see the [User Guide](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context).
  /// You can only include this parameter if you specify the `kms_key_id` parameter.
  late final pulumi.Output<Map<String, String>?> additionalEncryptionContext;

  /// ARN of the Integration.
  late final pulumi.Output<String> arn;

  /// Data filters for the integration.
  /// These filters determine which tables from the source database are sent to the target Amazon Redshift data warehouse.
  /// The value should match the syntax from the AWS CLI which includes an `include:` or `exclude:` prefix before a filter expression.
  /// Multiple expressions are separated by a comma.
  /// See the [Amazon RDS data filtering guide](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/zero-etl.filtering.html) for additional details.
  late final pulumi.Output<String> dataFilter;

  /// Name of the integration.
  late final pulumi.Output<String> integrationName;

  /// KMS key identifier for the key to use to encrypt the integration.
  /// If you don't specify an encryption key, RDS uses a default AWS owned key.
  /// If you use the default AWS owned key, you should ignore `kms_key_id` parameter by using `lifecycle` parameter to avoid unintended change after the first creation.
  late final pulumi.Output<String> kmsKeyId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ARN of the database to use as the source for replication.
  late final pulumi.Output<String> sourceArn;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// For more detailed documentation about each argument, refer to the [AWS official documentation](https://docs.aws.amazon.com/cli/latest/reference/rds/create-integration.html).
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// ARN of the Redshift data warehouse to use as the target for replication.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> targetArn;
  late final pulumi.Output<IntegrationTimeouts?> timeouts;

  IntegrationRds(
    String name, {
    IntegrationRdsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rds/integration:Integration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.additionalEncryptionContext =
        registerOutput<Map<String, String>?>('additionalEncryptionContext');
    this.arn = registerOutput<String>('arn');
    this.dataFilter = registerOutput<String>('dataFilter');
    this.integrationName = registerOutput<String>('integrationName');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.region = registerOutput<String>('region');
    this.sourceArn = registerOutput<String>('sourceArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.targetArn = registerOutput<String>('targetArn');
    this.timeouts = registerOutput<IntegrationTimeouts?>('timeouts');
  }
}
