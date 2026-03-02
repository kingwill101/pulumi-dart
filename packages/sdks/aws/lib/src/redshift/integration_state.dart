// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_timeouts.dart';

/// Input properties used for looking up and filtering Integration resources.
class IntegrationState {
  /// Set of non-secret key–value pairs that contains additional contextual information about the data.
  /// For more information, see the [User Guide](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context).
  /// You can only include this parameter if you specify the `kms_key_id` parameter.
  final pulumi.Input<Map<String, String>>? additionalEncryptionContext;
  /// ARN of the Integration.
  final pulumi.Input<String>? arn;
  /// Description of the integration.
  final pulumi.Input<String>? description;
  /// Name of the integration.
  final pulumi.Input<String>? integrationName;
  /// KMS key identifier for the key to use to encrypt the integration.
  /// If you don't specify an encryption key, Redshift uses a default AWS owned key.
  /// You can only include this parameter if `source_arn` references a DynamoDB table.
  final pulumi.Input<String>? kmsKeyId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the database to use as the source for replication. You can specify a DynamoDB table or an S3 bucket.
  final pulumi.Input<String>? sourceArn;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// For more detailed documentation about each argument, refer to the [AWS official documentation](https://docs.aws.amazon.com/cli/latest/reference/redshift/create-integration.html).
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// ARN of the Redshift data warehouse to use as the target for replication.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? targetArn;
  final pulumi.Input<IntegrationTimeouts>? timeouts;

  /// Creates a new [IntegrationState].
  /// [additionalEncryptionContext] Set of non-secret key–value pairs that contains additional contextual information about the data.
  /// [arn] ARN of the Integration.
  /// [description] Description of the integration.
  /// [integrationName] Name of the integration.
  /// [kmsKeyId] KMS key identifier for the key to use to encrypt the integration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourceArn] ARN of the database to use as the source for replication. You can specify a DynamoDB table or an S3 bucket.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [targetArn] ARN of the Redshift data warehouse to use as the target for replication.
  /// [timeouts] Optional.
  IntegrationState({
    this.additionalEncryptionContext,
    this.arn,
    this.description,
    this.integrationName,
    this.kmsKeyId,
    this.region,
    this.sourceArn,
    this.tags,
    this.tagsAll,
    this.targetArn,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalEncryptionContext': ?additionalEncryptionContext,
      'arn': ?arn,
      'description': ?description,
      'integrationName': ?integrationName,
      'kmsKeyId': ?kmsKeyId,
      'region': ?region,
      'sourceArn': ?sourceArn,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'targetArn': ?targetArn,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<IntegrationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory IntegrationState.fromMap(Map<String, dynamic> map) {
    return IntegrationState(
      additionalEncryptionContext: map['additionalEncryptionContext'] == null ? null : (((map['additionalEncryptionContext'] as Map).cast<String, String>()).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      integrationName: map['integrationName'] == null ? null : ((map['integrationName'] as String).input()).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : ((map['kmsKeyId'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      sourceArn: map['sourceArn'] == null ? null : ((map['sourceArn'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      targetArn: map['targetArn'] == null ? null : ((map['targetArn'] as String).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((IntegrationTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

