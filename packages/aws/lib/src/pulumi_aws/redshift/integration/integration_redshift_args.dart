// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../integration_timeouts/integration_timeouts_redshift.dart';

/// The set of arguments for Integration.
class IntegrationRedshiftArgs {
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
  final pulumi.Input<IntegrationTimeoutsRedshift>? timeouts;

  IntegrationRedshiftArgs({
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
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          IntegrationTimeoutsRedshift,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory IntegrationRedshiftArgs.fromMap(Map<String, dynamic> map) {
    return IntegrationRedshiftArgs(
      additionalEncryptionContext:
          pulumi.Input.asOptionalInput<Map<String, String>>(
              map['additionalEncryptionContext']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      integrationName: pulumi.Input.asInput<String>(map['integrationName']),
      kmsKeyId: pulumi.Input.asOptionalInput<String>(map['kmsKeyId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      sourceArn: pulumi.Input.asInput<String>(map['sourceArn']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      targetArn: pulumi.Input.asInput<String>(map['targetArn']),
      timeouts: pulumi.Input.asOptionalInput<IntegrationTimeoutsRedshift>(
          map['timeouts']),
    );
  }
}
