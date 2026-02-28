// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_timeouts.dart';

/// {@template pulumi_redshift_integration_integration_args_doc}
/// The set of arguments for Integration.
/// {@endtemplate}
/// {@macro pulumi_redshift_integration_integration_args_doc}
class IntegrationArgs {
  /// Set of non-secret key–value pairs that contains additional contextual information about the data.
  /// For more information, see the [User Guide](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context).
  /// You can only include this parameter if you specify the `kms_key_id` parameter.
  final pulumi.Input<Map<String, String>>? additionalEncryptionContext;

  /// Description of the integration.
  final pulumi.Input<String>? description;

  /// Name of the integration.
  final pulumi.Input<String> integrationName;

  /// KMS key identifier for the key to use to encrypt the integration.
  /// If you don't specify an encryption key, Redshift uses a default AWS owned key.
  /// You can only include this parameter if `source_arn` references a DynamoDB table.
  final pulumi.Input<String>? kmsKeyId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ARN of the database to use as the source for replication. You can specify a DynamoDB table or an S3 bucket.
  final pulumi.Input<String> sourceArn;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// For more detailed documentation about each argument, refer to the [AWS official documentation](https://docs.aws.amazon.com/cli/latest/reference/redshift/create-integration.html).
  final pulumi.Input<Map<String, String>>? tags;

  /// ARN of the Redshift data warehouse to use as the target for replication.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> targetArn;
  final pulumi.Input<IntegrationTimeouts>? timeouts;

  /// Creates a new [IntegrationArgs].
  /// [additionalEncryptionContext] Set of non-secret key–value pairs that contains additional contextual information about the data.
  /// [description] Description of the integration.
  /// [integrationName] Name of the integration.
  /// [kmsKeyId] KMS key identifier for the key to use to encrypt the integration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourceArn] ARN of the database to use as the source for replication. You can specify a DynamoDB table or an S3 bucket.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [targetArn] ARN of the Redshift data warehouse to use as the target for replication.
  /// [timeouts] Optional.
  IntegrationArgs({
    Map<String, String>? additionalEncryptionContext,
    String? description,
    required String integrationName,
    String? kmsKeyId,
    String? region,
    required String sourceArn,
    Map<String, String>? tags,
    required String targetArn,
    IntegrationTimeouts? timeouts,
  })  : additionalEncryptionContext =
            pulumi.Input.asOptionalInput<Map<String, String>>(
                additionalEncryptionContext),
        description = pulumi.Input.asOptionalInput<String>(description),
        integrationName = pulumi.Input.asInput<String>(integrationName),
        kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
        region = pulumi.Input.asOptionalInput<String>(region),
        sourceArn = pulumi.Input.asInput<String>(sourceArn),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        targetArn = pulumi.Input.asInput<String>(targetArn),
        timeouts = pulumi.Input.asOptionalInput<IntegrationTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalEncryptionContextValue = additionalEncryptionContext;
    if (additionalEncryptionContextValue != null) {
      map['additionalEncryptionContext'] = additionalEncryptionContextValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['integrationName'] = integrationName;
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['sourceArn'] = sourceArn;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['targetArn'] = targetArn;
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<IntegrationTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory IntegrationArgs.fromMap(Map<String, dynamic> map) {
    return IntegrationArgs(
      additionalEncryptionContext: map['additionalEncryptionContext'] == null
          ? null
          : (map['additionalEncryptionContext'] as Map).cast<String, String>(),
      description:
          map['description'] == null ? null : map['description'] as String,
      integrationName: map['integrationName'] as String,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      sourceArn: map['sourceArn'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      targetArn: map['targetArn'] as String,
      timeouts: map['timeouts'] == null
          ? null
          : IntegrationTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>()),
    );
  }
}
