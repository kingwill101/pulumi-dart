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
  const IntegrationArgs({
    this.additionalEncryptionContext,
    this.description,
    required this.integrationName,
    this.kmsKeyId,
    this.region,
    required this.sourceArn,
    this.tags,
    required this.targetArn,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalEncryptionContext': ?additionalEncryptionContext,
      'description': ?description,
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
      additionalEncryptionContext: (() { final guardedValue = map['additionalEncryptionContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      integrationName: pulumi.Input.fromValue(map['integrationName'] as String),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceArn: pulumi.Input.fromValue(map['sourceArn'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetArn: pulumi.Input.fromValue(map['targetArn'] as String),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

