// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 's3_table_integration_encryption.dart';
import 's3_table_integration_timeouts.dart';

/// {@template pulumi_observabilityadmin_s3_table_integration_s3_table_integration_args_doc}
/// The set of arguments for S3TableIntegration.
/// {@endtemplate}
/// {@macro pulumi_observabilityadmin_s3_table_integration_s3_table_integration_args_doc}
class S3TableIntegrationArgs {
  /// Encryption configuration block. Documented below.
  final pulumi.Input<S3TableIntegrationEncryption> encryption;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of the IAM role that grants the S3 Table integration permissions to access necessary resources.
  final pulumi.Input<String> roleArn;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<S3TableIntegrationTimeouts?>? timeouts;

  /// Creates a new [S3TableIntegrationArgs].
  /// [encryption] Encryption configuration block. Documented below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] ARN of the IAM role that grants the S3 Table integration permissions to access necessary resources.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  const S3TableIntegrationArgs({
    required this.encryption,
    this.region,
    required this.roleArn,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryption': pulumi.Input.mapInputValue<S3TableIntegrationEncryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'region': ?region,
      'roleArn': roleArn,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<S3TableIntegrationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory S3TableIntegrationArgs.fromMap(Map<String, dynamic> map) {
    return S3TableIntegrationArgs(
      encryption: pulumi.Input.fromValue(S3TableIntegrationEncryption.fromMap((map['encryption']! as Map).cast<String, dynamic>())),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(S3TableIntegrationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
