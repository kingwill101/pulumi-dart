// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_guardduty_publishing_destination_publishing_destination_args_doc}
/// The set of arguments for PublishingDestination.
/// {@endtemplate}
/// {@macro pulumi_guardduty_publishing_destination_publishing_destination_args_doc}
class PublishingDestinationArgs {
  /// The bucket arn and prefix under which the findings get exported. Bucket-ARN is required, the prefix is optional and will be `AWSLogs/[Account-ID]/GuardDuty/[Region]/` if not provided
  final pulumi.Input<String> destinationArn;
  /// Currently there is only "S3" available as destination type which is also the default value
  final pulumi.Input<String>? destinationType;
  /// The detector ID of the GuardDuty.
  final pulumi.Input<String> detectorId;
  /// The ARN of the KMS key used to encrypt GuardDuty findings. GuardDuty enforces this to be encrypted.
  final pulumi.Input<String> kmsKeyArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// &gt; **Note:** In case of missing permissions (S3 Bucket Policy _or_ KMS Key permissions) the resource will fail to create. If the permissions are changed after resource creation, this can be asked from the AWS API via the "DescribePublishingDestination" call (https://docs.aws.amazon.com/cli/latest/reference/guardduty/describe-publishing-destination.html).
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PublishingDestinationArgs].
  /// [destinationArn] The bucket arn and prefix under which the findings get exported. Bucket-ARN is required, the prefix is optional and will be `AWSLogs/[Account-ID]/GuardDuty/[Region]/` if not provided
  /// [destinationType] Currently there is only "S3" available as destination type which is also the default value
  /// [detectorId] The detector ID of the GuardDuty.
  /// [kmsKeyArn] The ARN of the KMS key used to encrypt GuardDuty findings. GuardDuty enforces this to be encrypted.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const PublishingDestinationArgs({
    required this.destinationArn,
    this.destinationType,
    required this.detectorId,
    required this.kmsKeyArn,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationArn': destinationArn,
      'destinationType': ?destinationType,
      'detectorId': detectorId,
      'kmsKeyArn': kmsKeyArn,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory PublishingDestinationArgs.fromMap(Map<String, dynamic> map) {
    return PublishingDestinationArgs(
      destinationArn: pulumi.Input.fromValue(map['destinationArn'] as String),
      destinationType: (() { final guardedValue = map['destinationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      detectorId: pulumi.Input.fromValue(map['detectorId'] as String),
      kmsKeyArn: pulumi.Input.fromValue(map['kmsKeyArn'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
