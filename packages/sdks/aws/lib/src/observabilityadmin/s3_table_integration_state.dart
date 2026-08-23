// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 's3_table_integration_encryption.dart';
import 's3_table_integration_timeouts.dart';

/// Input properties used for looking up and filtering S3TableIntegration resources.
class S3TableIntegrationState {
  /// Amazon Resource Name (ARN) of the S3 Table integration.
  final pulumi.Input<String>? arn;
  /// ARN of the S3 Table bucket where CloudWatch data is stored. AWS automatically creates a bucket named `_aws-cloudwatch_` if one does not already exist.
  final pulumi.Input<String>? destinationTableBucketArn;
  /// Encryption configuration block. Documented below.
  final pulumi.Input<S3TableIntegrationEncryption>? encryption;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Amazon Resource Name (ARN) of the IAM role that grants the S3 Table integration permissions to access necessary resources.
  final pulumi.Input<String>? roleArn;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<S3TableIntegrationTimeouts>? timeouts;

  /// Creates a new [S3TableIntegrationState].
  /// [arn] Amazon Resource Name (ARN) of the S3 Table integration.
  /// [destinationTableBucketArn] ARN of the S3 Table bucket where CloudWatch data is stored. AWS automatically creates a bucket named `_aws-cloudwatch_` if one does not already exist.
  /// [encryption] Encryption configuration block. Documented below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] Amazon Resource Name (ARN) of the IAM role that grants the S3 Table integration permissions to access necessary resources.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  const S3TableIntegrationState({
    this.arn,
    this.destinationTableBucketArn,
    this.encryption,
    this.region,
    this.roleArn,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'destinationTableBucketArn': ?destinationTableBucketArn,
      'encryption': ?pulumi.Input.mapOptionalInputValue<S3TableIntegrationEncryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'region': ?region,
      'roleArn': ?roleArn,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<S3TableIntegrationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory S3TableIntegrationState.fromMap(Map<String, dynamic> map) {
    return S3TableIntegrationState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationTableBucketArn: (() { final guardedValue = map['destinationTableBucketArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(S3TableIntegrationEncryption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(S3TableIntegrationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
