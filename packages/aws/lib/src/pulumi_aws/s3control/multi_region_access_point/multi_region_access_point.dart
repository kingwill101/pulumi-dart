import 'package:pulumi/pulumi.dart';
import '../multi_region_access_point_details/multi_region_access_point_details.dart';
import 'multi_region_access_point_args.dart';

/// Provides a resource to manage an S3 Multi-Region Access Point associated with specified buckets.
///
/// > This resource cannot be used with S3 directory buckets.
///
/// ## Example Usage
///
/// ### Multiple AWS Buckets in Different Regions
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Multi-Region Access Points using the `account_id` and `name` of the Multi-Region Access Point separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:s3control/multiRegionAccessPoint:MultiRegionAccessPoint example 123456789012:example
/// ```
class MultiRegionAccessPoint extends CustomResource {
  /// The AWS account ID for the owner of the buckets for which you want to create a Multi-Region Access Point. Defaults to automatically determined account ID of the AWS provider.
  late final Output<String> accountId;

  /// The alias for the Multi-Region Access Point.
  late final Output<String> alias;

  /// Amazon Resource Name (ARN) of the Multi-Region Access Point.
  late final Output<String> arn;

  /// A configuration block containing details about the Multi-Region Access Point. See Details Configuration Block below for more details
  late final Output<MultiRegionAccessPointDetails> details;

  /// The DNS domain name of the S3 Multi-Region Access Point in the format _`alias`_.accesspoint.s3-global.amazonaws.com. For more information, see the documentation on [Multi-Region Access Point Requests](https://docs.aws.amazon.com/AmazonS3/latest/userguide/MultiRegionAccessPointRequests.html).
  late final Output<String> domainName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The current status of the Multi-Region Access Point. One of: `READY`, `INCONSISTENT_ACROSS_REGIONS`, `CREATING`, `PARTIALLY_CREATED`, `PARTIALLY_DELETED`, `DELETING`.
  late final Output<String> status;

  MultiRegionAccessPoint(
    String name, {
    MultiRegionAccessPointArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:s3control/multiRegionAccessPoint:MultiRegionAccessPoint',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.alias = registerOutput<String>('alias');
    this.arn = registerOutput<String>('arn');
    this.details = registerOutput<MultiRegionAccessPointDetails>('details');
    this.domainName = registerOutput<String>('domainName');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
  }
}
