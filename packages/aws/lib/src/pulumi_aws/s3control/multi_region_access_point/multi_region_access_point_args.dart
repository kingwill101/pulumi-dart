// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../multi_region_access_point_details/multi_region_access_point_details.dart';

/// The set of arguments for MultiRegionAccessPoint.
class MultiRegionAccessPointArgs {
  /// The AWS account ID for the owner of the buckets for which you want to create a Multi-Region Access Point. Defaults to automatically determined account ID of the AWS provider.
  final pulumi.Input<String>? accountId;

  /// A configuration block containing details about the Multi-Region Access Point. See Details Configuration Block below for more details
  final pulumi.Input<MultiRegionAccessPointDetails> details;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  MultiRegionAccessPointArgs({
    this.accountId,
    required this.details,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accountIdValue = accountId;
    if (accountIdValue != null) {
      map['accountId'] = accountIdValue;
    }
    map['details'] = pulumi.Input.mapInputValue<MultiRegionAccessPointDetails,
        Map<String, dynamic>>(details, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory MultiRegionAccessPointArgs.fromMap(Map<String, dynamic> map) {
    return MultiRegionAccessPointArgs(
      accountId: pulumi.Input.asOptionalInput<String>(map['accountId']),
      details:
          pulumi.Input.asInput<MultiRegionAccessPointDetails>(map['details']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
