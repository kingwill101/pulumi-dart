// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getMultiRegionAccessPoint.
class GetMultiRegionAccessPointArgs {
  /// The AWS account ID of the S3 Multi-Region Access Point. Defaults to automatically determined account ID of the AWS provider.
  final Input<String>? accountId;

  /// The name of the Multi-Region Access Point.
  final Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetMultiRegionAccessPointArgs({
    this.accountId,
    required this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accountIdValue = accountId;
    if (accountIdValue != null) {
      map['accountId'] = accountIdValue;
    }
    map['name'] = name;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetMultiRegionAccessPointArgs.fromMap(Map<String, dynamic> map) {
    return GetMultiRegionAccessPointArgs(
      accountId: Input.asOptionalInput<String>(map['accountId']),
      name: Input.asInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
