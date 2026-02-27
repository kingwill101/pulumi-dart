import 'package:pulumi/pulumi.dart';
import 'publishing_destination_args.dart';

/// Provides a resource to manage a GuardDuty PublishingDestination. Requires an existing GuardDuty Detector.
///
/// ## Example Usage
///
///
///
/// > **Note:** Please do not use this simple example for Bucket-Policy and KMS Key Policy in a production environment. It is much too open for such a use-case. Refer to the AWS documentation here: https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_exportfindings.html
///
/// ## Import
///
/// Using `pulumi import`, import GuardDuty PublishingDestination using the master GuardDuty detector ID and PublishingDestinationID. For example:
///
/// ```sh
/// $ pulumi import aws:guardduty/publishingDestination:PublishingDestination test a4b86f26fa42e7e7cf0d1c333ea77777:a4b86f27a0e464e4a7e0516d242f1234
/// ```
class PublishingDestination extends CustomResource {
  /// The bucket arn and prefix under which the findings get exported. Bucket-ARN is required, the prefix is optional and will be `AWSLogs/[Account-ID]/GuardDuty/[Region]/` if not provided
  late final Output<String> destinationArn;

  /// Currently there is only "S3" available as destination type which is also the default value
  ///
  /// > **Note:** In case of missing permissions (S3 Bucket Policy _or_ KMS Key permissions) the resource will fail to create. If the permissions are changed after resource creation, this can be asked from the AWS API via the "DescribePublishingDestination" call (https://docs.aws.amazon.com/cli/latest/reference/guardduty/describe-publishing-destination.html).
  late final Output<String?> destinationType;

  /// The detector ID of the GuardDuty.
  late final Output<String> detectorId;

  /// The ARN of the KMS key used to encrypt GuardDuty findings. GuardDuty enforces this to be encrypted.
  late final Output<String> kmsKeyArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  PublishingDestination(
    String name, {
    PublishingDestinationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:guardduty/publishingDestination:PublishingDestination',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.destinationArn = registerOutput<String>('destinationArn');
    this.destinationType = registerOutput<String?>('destinationType');
    this.detectorId = registerOutput<String>('detectorId');
    this.kmsKeyArn = registerOutput<String>('kmsKeyArn');
    this.region = registerOutput<String>('region');
  }
}
