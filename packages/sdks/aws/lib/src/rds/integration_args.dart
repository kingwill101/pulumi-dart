// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_timeouts.dart';

/// {@template pulumi_rds_integration_integration_args_doc}
/// The set of arguments for Integration.
/// {@endtemplate}
/// {@macro pulumi_rds_integration_integration_args_doc}
class IntegrationArgs {
  /// Set of non-secret key–value pairs that contains additional contextual information about the data.
  /// For more information, see the [User Guide](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context).
  /// You can only include this parameter if you specify the `kms_key_id` parameter.
  final pulumi.Input<Map<String, String>>? additionalEncryptionContext;
  /// Data filters for the integration.
  /// These filters determine which tables from the source database are sent to the target Amazon Redshift data warehouse.
  /// The value should match the syntax from the AWS CLI which includes an `include:` or `exclude:` prefix before a filter expression.
  /// Multiple expressions are separated by a comma.
  /// See the [Amazon RDS data filtering guide](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/zero-etl.filtering.html) for additional details.
  final pulumi.Input<String>? dataFilter;
  /// Name of the integration.
  final pulumi.Input<String> integrationName;
  /// KMS key identifier for the key to use to encrypt the integration.
  /// If you don't specify an encryption key, RDS uses a default AWS owned key.
  /// If you use the default AWS owned key, you should ignore `kms_key_id` parameter by using `lifecycle` parameter to avoid unintended change after the first creation.
  final pulumi.Input<String>? kmsKeyId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the database to use as the source for replication.
  final pulumi.Input<String> sourceArn;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// For more detailed documentation about each argument, refer to the [AWS official documentation](https://docs.aws.amazon.com/cli/latest/reference/rds/create-integration.html).
  final pulumi.Input<Map<String, String>>? tags;
  /// ARN of the Redshift data warehouse to use as the target for replication.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> targetArn;
  final pulumi.Input<IntegrationTimeouts>? timeouts;

  /// Creates a new [IntegrationArgs].
  /// [additionalEncryptionContext] Set of non-secret key–value pairs that contains additional contextual information about the data.
  /// [dataFilter] Data filters for the integration.
  /// [integrationName] Name of the integration.
  /// [kmsKeyId] KMS key identifier for the key to use to encrypt the integration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourceArn] ARN of the database to use as the source for replication.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [targetArn] ARN of the Redshift data warehouse to use as the target for replication.
  /// [timeouts] Optional.
  IntegrationArgs({
    pulumi.Output<Map<String, String>>? additionalEncryptionContext,
    pulumi.Output<String>? dataFilter,
    required pulumi.Output<String> integrationName,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<String>? region,
    required pulumi.Output<String> sourceArn,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> targetArn,
    pulumi.Output<IntegrationTimeouts>? timeouts,
  }) :
      additionalEncryptionContext = pulumi.Input.asOptionalInput<Map<String, String>>(additionalEncryptionContext),
      dataFilter = pulumi.Input.asOptionalInput<String>(dataFilter),
      integrationName = pulumi.Input.asInput<String>(integrationName),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      region = pulumi.Input.asOptionalInput<String>(region),
      sourceArn = pulumi.Input.asInput<String>(sourceArn),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      targetArn = pulumi.Input.asInput<String>(targetArn),
      timeouts = pulumi.Input.asOptionalInput<IntegrationTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalEncryptionContext': ?additionalEncryptionContext,
      'dataFilter': ?dataFilter,
      'integrationName': integrationName,
      'kmsKeyId': ?kmsKeyId,
      'region': ?region,
      'sourceArn': sourceArn,
      'tags': ?tags,
      'targetArn': targetArn,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<IntegrationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory IntegrationArgs.fromMap(Map<String, dynamic> map) {
    return IntegrationArgs(
      additionalEncryptionContext: map['additionalEncryptionContext'] == null ? null : pulumi.Output.create<Map<String, String>>((map['additionalEncryptionContext'] as Map).cast<String, String>()),
      dataFilter: map['dataFilter'] == null ? null : pulumi.Output.create<String>(map['dataFilter'] as String),
      integrationName: pulumi.Output.create<String>(map['integrationName'] as String),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      sourceArn: pulumi.Output.create<String>(map['sourceArn'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      targetArn: pulumi.Output.create<String>(map['targetArn'] as String),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<IntegrationTimeouts>(IntegrationTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

