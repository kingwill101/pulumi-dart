// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for PublishingDestination.
class PublishingDestinationArgs {
  /// The bucket arn and prefix under which the findings get exported. Bucket-ARN is required, the prefix is optional and will be `AWSLogs/[Account-ID]/GuardDuty/[Region]/` if not provided
  final pulumi.Input<String> destinationArn;

  /// Currently there is only "S3" available as destination type which is also the default value
  ///
  /// > **Note:** In case of missing permissions (S3 Bucket Policy _or_ KMS Key permissions) the resource will fail to create. If the permissions are changed after resource creation, this can be asked from the AWS API via the "DescribePublishingDestination" call (https://docs.aws.amazon.com/cli/latest/reference/guardduty/describe-publishing-destination.html).
  final pulumi.Input<String>? destinationType;

  /// The detector ID of the GuardDuty.
  final pulumi.Input<String> detectorId;

  /// The ARN of the KMS key used to encrypt GuardDuty findings. GuardDuty enforces this to be encrypted.
  final pulumi.Input<String> kmsKeyArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  PublishingDestinationArgs({
    required this.destinationArn,
    this.destinationType,
    required this.detectorId,
    required this.kmsKeyArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destinationArn'] = destinationArn;
    final destinationTypeValue = destinationType;
    if (destinationTypeValue != null) {
      map['destinationType'] = destinationTypeValue;
    }
    map['detectorId'] = detectorId;
    map['kmsKeyArn'] = kmsKeyArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory PublishingDestinationArgs.fromMap(Map<String, dynamic> map) {
    return PublishingDestinationArgs(
      destinationArn: pulumi.Input.asInput<String>(map['destinationArn']),
      destinationType:
          pulumi.Input.asOptionalInput<String>(map['destinationType']),
      detectorId: pulumi.Input.asInput<String>(map['detectorId']),
      kmsKeyArn: pulumi.Input.asInput<String>(map['kmsKeyArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
