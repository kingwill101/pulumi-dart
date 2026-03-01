// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multi_region_access_point_details.dart';

/// Input properties used for looking up and filtering MultiRegionAccessPoint resources.
class MultiRegionAccessPointState {
  /// The AWS account ID for the owner of the buckets for which you want to create a Multi-Region Access Point. Defaults to automatically determined account ID of the AWS provider.
  final pulumi.Input<String>? accountId;
  /// The alias for the Multi-Region Access Point.
  final pulumi.Input<String>? alias;
  /// Amazon Resource Name (ARN) of the Multi-Region Access Point.
  final pulumi.Input<String>? arn;
  /// A configuration block containing details about the Multi-Region Access Point. See Details Configuration Block below for more details
  final pulumi.Input<MultiRegionAccessPointDetails>? details;
  /// The DNS domain name of the S3 Multi-Region Access Point in the format _`alias`_.accesspoint.s3-global.amazonaws.com. For more information, see the documentation on [Multi-Region Access Point Requests](https://docs.aws.amazon.com/AmazonS3/latest/userguide/MultiRegionAccessPointRequests.html).
  final pulumi.Input<String>? domainName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The current status of the Multi-Region Access Point. One of: `READY`, `INCONSISTENT_ACROSS_REGIONS`, `CREATING`, `PARTIALLY_CREATED`, `PARTIALLY_DELETED`, `DELETING`.
  final pulumi.Input<String>? status;

  /// Creates a new [MultiRegionAccessPointState].
  /// [accountId] The AWS account ID for the owner of the buckets for which you want to create a Multi-Region Access Point. Defaults to automatically determined account ID of the AWS provider.
  /// [alias] The alias for the Multi-Region Access Point.
  /// [arn] Amazon Resource Name (ARN) of the Multi-Region Access Point.
  /// [details] A configuration block containing details about the Multi-Region Access Point. See Details Configuration Block below for more details
  /// [domainName] The DNS domain name of the S3 Multi-Region Access Point in the format _`alias`_.accesspoint.s3-global.amazonaws.com. For more information, see the documentation on [Multi-Region Access Point Requests](https://docs.aws.amazon.com/AmazonS3/latest/userguide/MultiRegionAccessPointRequests.html).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] The current status of the Multi-Region Access Point. One of: `READY`, `INCONSISTENT_ACROSS_REGIONS`, `CREATING`, `PARTIALLY_CREATED`, `PARTIALLY_DELETED`, `DELETING`.
  MultiRegionAccessPointState({
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? alias,
    pulumi.Output<String>? arn,
    pulumi.Output<MultiRegionAccessPointDetails>? details,
    pulumi.Output<String>? domainName,
    pulumi.Output<String>? region,
    pulumi.Output<String>? status,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      alias = pulumi.Input.asOptionalInput<String>(alias),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      details = pulumi.Input.asOptionalInput<MultiRegionAccessPointDetails>(details),
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      region = pulumi.Input.asOptionalInput<String>(region),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'alias': ?alias,
      'arn': ?arn,
      'details': ?pulumi.Input.mapOptionalInputValue<MultiRegionAccessPointDetails, Map<String, dynamic>>(details, (value) => value.toMap()),
      'domainName': ?domainName,
      'region': ?region,
      'status': ?status,
    };
  }

  factory MultiRegionAccessPointState.fromMap(Map<String, dynamic> map) {
    return MultiRegionAccessPointState(
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      alias: map['alias'] == null ? null : pulumi.Output.create<String>(map['alias'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      details: map['details'] == null ? null : pulumi.Output.create<MultiRegionAccessPointDetails>(MultiRegionAccessPointDetails.fromMap((map['details'] as Map).cast<String, dynamic>())),
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

