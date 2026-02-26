// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getCloudExadataInfrastructures.
class GetCloudExadataInfrastructuresArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetCloudExadataInfrastructuresArgs({
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetCloudExadataInfrastructuresArgs.fromMap(Map<String, dynamic> map) {
    return GetCloudExadataInfrastructuresArgs(
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
