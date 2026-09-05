// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multi_region_access_point_details.dart';

/// Input properties used for looking up and filtering MultiRegionAccessPoint resources.
class MultiRegionAccessPointState {
  /// AWS account ID for the owner of the buckets for which you want to create a Multi-Region Access Point. Defaults to automatically determined account ID of the AWS provider.
  final pulumi.Input<String?>? accountId;
  /// Alias for the Multi-Region Access Point.
  final pulumi.Input<String?>? alias;
  /// ARN of the Multi-Region Access Point.
  final pulumi.Input<String?>? arn;
  /// Configuration block containing details about the Multi-Region Access Point. See `details` Block below.
  final pulumi.Input<MultiRegionAccessPointDetails?>? details;
  /// DNS domain name of the S3 Multi-Region Access Point in the format _`alias`_.accesspoint.s3-global.amazonaws.com. For more information, see the documentation on [Multi-Region Access Point Requests](https://docs.aws.amazon.com/AmazonS3/latest/userguide/MultiRegionAccessPointRequests.html).
  final pulumi.Input<String?>? domainName;
  /// Name of the Multi-Region Access Point.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Status of the Multi-Region Access Point. One of: `READY`, `INCONSISTENT_ACROSS_REGIONS`, `CREATING`, `PARTIALLY_CREATED`, `PARTIALLY_DELETED`, `DELETING`.
  final pulumi.Input<String?>? status;

  /// Creates a new [MultiRegionAccessPointState].
  /// [accountId] AWS account ID for the owner of the buckets for which you want to create a Multi-Region Access Point. Defaults to automatically determined account ID of the AWS provider.
  /// [alias] Alias for the Multi-Region Access Point.
  /// [arn] ARN of the Multi-Region Access Point.
  /// [details] Configuration block containing details about the Multi-Region Access Point. See `details` Block below.
  /// [domainName] DNS domain name of the S3 Multi-Region Access Point in the format _`alias`_.accesspoint.s3-global.amazonaws.com. For more information, see the documentation on [Multi-Region Access Point Requests](https://docs.aws.amazon.com/AmazonS3/latest/userguide/MultiRegionAccessPointRequests.html).
  /// [name] Name of the Multi-Region Access Point.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Status of the Multi-Region Access Point. One of: `READY`, `INCONSISTENT_ACROSS_REGIONS`, `CREATING`, `PARTIALLY_CREATED`, `PARTIALLY_DELETED`, `DELETING`.
  const MultiRegionAccessPointState({
    this.accountId,
    this.alias,
    this.arn,
    this.details,
    this.domainName,
    this.name,
    this.region,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'alias': ?alias,
      'arn': ?arn,
      'details': ?pulumi.Input.mapOptionalInputValue<MultiRegionAccessPointDetails, Map<String, dynamic>>(details, (value) => value.toMap()),
      'domainName': ?domainName,
      'name': ?name,
      'region': ?region,
      'status': ?status,
    };
  }

  factory MultiRegionAccessPointState.fromMap(Map<String, dynamic> map) {
    return MultiRegionAccessPointState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      alias: (() { final guardedValue = map['alias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      details: (() { final guardedValue = map['details']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MultiRegionAccessPointDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
