// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PublishingDestination resources.
class PublishingDestinationState {
  /// The bucket arn and prefix under which the findings get exported. Bucket-ARN is required, the prefix is optional and will be `AWSLogs/[Account-ID]/GuardDuty/[Region]/` if not provided
  final pulumi.Input<String>? destinationArn;
  /// Currently there is only "S3" available as destination type which is also the default value
  ///
  /// > **Note:** In case of missing permissions (S3 Bucket Policy _or_ KMS Key permissions) the resource will fail to create. If the permissions are changed after resource creation, this can be asked from the AWS API via the "DescribePublishingDestination" call (https://docs.aws.amazon.com/cli/latest/reference/guardduty/describe-publishing-destination.html).
  final pulumi.Input<String>? destinationType;
  /// The detector ID of the GuardDuty.
  final pulumi.Input<String>? detectorId;
  /// The ARN of the KMS key used to encrypt GuardDuty findings. GuardDuty enforces this to be encrypted.
  final pulumi.Input<String>? kmsKeyArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [PublishingDestinationState].
  /// [destinationArn] The bucket arn and prefix under which the findings get exported. Bucket-ARN is required, the prefix is optional and will be `AWSLogs/[Account-ID]/GuardDuty/[Region]/` if not provided
  /// [destinationType] Currently there is only "S3" available as destination type which is also the default value
  /// [detectorId] The detector ID of the GuardDuty.
  /// [kmsKeyArn] The ARN of the KMS key used to encrypt GuardDuty findings. GuardDuty enforces this to be encrypted.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  PublishingDestinationState({
    pulumi.Output<String>? destinationArn,
    pulumi.Output<String>? destinationType,
    pulumi.Output<String>? detectorId,
    pulumi.Output<String>? kmsKeyArn,
    pulumi.Output<String>? region,
  }) :
      destinationArn = pulumi.Input.asOptionalInput<String>(destinationArn),
      destinationType = pulumi.Input.asOptionalInput<String>(destinationType),
      detectorId = pulumi.Input.asOptionalInput<String>(detectorId),
      kmsKeyArn = pulumi.Input.asOptionalInput<String>(kmsKeyArn),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationArn': ?destinationArn,
      'destinationType': ?destinationType,
      'detectorId': ?detectorId,
      'kmsKeyArn': ?kmsKeyArn,
      'region': ?region,
    };
  }

  factory PublishingDestinationState.fromMap(Map<String, dynamic> map) {
    return PublishingDestinationState(
      destinationArn: map['destinationArn'] == null ? null : pulumi.Output.create<String>(map['destinationArn'] as String),
      destinationType: map['destinationType'] == null ? null : pulumi.Output.create<String>(map['destinationType'] as String),
      detectorId: map['detectorId'] == null ? null : pulumi.Output.create<String>(map['detectorId'] as String),
      kmsKeyArn: map['kmsKeyArn'] == null ? null : pulumi.Output.create<String>(map['kmsKeyArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

