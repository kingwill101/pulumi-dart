// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getMultiRegionAccessPoints.
class GetMultiRegionAccessPointsArgs {
  /// AWS account ID for the account that owns the multi-region access points. If omitted, defaults to the caller's account ID.
  final Input<String>? accountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetMultiRegionAccessPointsArgs({
    this.accountId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accountIdValue = accountId;
    if (accountIdValue != null) {
      map['accountId'] = accountIdValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetMultiRegionAccessPointsArgs.fromMap(Map<String, dynamic> map) {
    return GetMultiRegionAccessPointsArgs(
      accountId: Input.asOptionalInput<String>(map['accountId']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
