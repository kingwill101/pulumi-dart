import 'package:pulumi/pulumi.dart' as pulumi;
import '../integration_timeouts/integration_timeouts_redshift.dart';
import 'integration_redshift_args.dart';

/// Resource for managing a DynamoDB zero-ETL integration or S3 event integration with Amazon Redshift. You can refer to the [User Guide](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/RedshiftforDynamoDB-zero-etl.html) for a DynamoDB zero-ETL integration or the [User Guide](https://docs.aws.amazon.com/redshift/latest/dg/loading-data-copy-job.html) for a S3 event integration.
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
/// Using `pulumi import`, import Redshift Integration using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/integration:Integration example arn:aws:redshift:us-west-2:123456789012:integration:abcdefgh-0000-1111-2222-123456789012
/// ```
class IntegrationRedshift extends pulumi.CustomResource {
  /// Set of non-secret key–value pairs that contains additional contextual information about the data.
  /// For more information, see the [User Guide](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context).
  /// You can only include this parameter if you specify the `kms_key_id` parameter.
  late final pulumi.Output<Map<String, String>?> additionalEncryptionContext;

  /// ARN of the Integration.
  late final pulumi.Output<String> arn;

  /// Description of the integration.
  late final pulumi.Output<String?> description;

  /// Name of the integration.
  late final pulumi.Output<String> integrationName;

  /// KMS key identifier for the key to use to encrypt the integration.
  /// If you don't specify an encryption key, Redshift uses a default AWS owned key.
  /// You can only include this parameter if `source_arn` references a DynamoDB table.
  late final pulumi.Output<String> kmsKeyId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ARN of the database to use as the source for replication. You can specify a DynamoDB table or an S3 bucket.
  late final pulumi.Output<String> sourceArn;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// For more detailed documentation about each argument, refer to the [AWS official documentation](https://docs.aws.amazon.com/cli/latest/reference/redshift/create-integration.html).
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// ARN of the Redshift data warehouse to use as the target for replication.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> targetArn;
  late final pulumi.Output<IntegrationTimeoutsRedshift?> timeouts;

  IntegrationRedshift(
    String name, {
    IntegrationRedshiftArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshift/integration:Integration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.additionalEncryptionContext =
        registerOutput<Map<String, String>?>('additionalEncryptionContext');
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.integrationName = registerOutput<String>('integrationName');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.region = registerOutput<String>('region');
    this.sourceArn = registerOutput<String>('sourceArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.targetArn = registerOutput<String>('targetArn');
    this.timeouts = registerOutput<IntegrationTimeoutsRedshift?>('timeouts');
  }
}
