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
  /// Data filters for the integration.
  /// These filters determine which tables from the source database are sent to the target Amazon Redshift data warehouse.
  /// The value should match the syntax from the AWS CLI which includes an `include:` or `exclude:` prefix before a filter expression.
  /// Multiple expressions are separated by a comma.
  /// See the [Amazon RDS data filtering guide](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/zero-etl.filtering.html) for additional details.
  final pulumi.Input<String>? dataFilter;
  /// Name of the integration.
  final pulumi.Input<String>? integrationName;
  /// KMS key identifier for the key to use to encrypt the integration.
  /// If you don't specify an encryption key, RDS uses a default AWS owned key.
  /// If you use the default AWS owned key, you should ignore `kms_key_id` parameter by using `lifecycle` parameter to avoid unintended change after the first creation.
  final pulumi.Input<String>? kmsKeyId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the database to use as the source for replication.
  final pulumi.Input<String>? sourceArn;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// For more detailed documentation about each argument, refer to the [AWS official documentation](https://docs.aws.amazon.com/cli/latest/reference/rds/create-integration.html).
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
  /// [dataFilter] Data filters for the integration.
  /// [integrationName] Name of the integration.
  /// [kmsKeyId] KMS key identifier for the key to use to encrypt the integration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourceArn] ARN of the database to use as the source for replication.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [targetArn] ARN of the Redshift data warehouse to use as the target for replication.
  /// [timeouts] Optional.
  const IntegrationState({
    this.additionalEncryptionContext,
    this.arn,
    this.dataFilter,
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
      'dataFilter': ?dataFilter,
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
      additionalEncryptionContext: (() { final guardedValue = map['additionalEncryptionContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataFilter: (() { final guardedValue = map['dataFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      integrationName: (() { final guardedValue = map['integrationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceArn: (() { final guardedValue = map['sourceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetArn: (() { final guardedValue = map['targetArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

