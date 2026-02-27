// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDbSystemShapes.
class GetDbSystemShapesArgs {
  /// The physical ID of the AZ, for example, use1-az4. This ID persists across accounts.
  final pulumi.Input<String>? availabilityZoneId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetDbSystemShapesArgs({
    this.availabilityZoneId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final availabilityZoneIdValue = availabilityZoneId;
    if (availabilityZoneIdValue != null) {
      map['availabilityZoneId'] = availabilityZoneIdValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetDbSystemShapesArgs.fromMap(Map<String, dynamic> map) {
    return GetDbSystemShapesArgs(
      availabilityZoneId:
          pulumi.Input.asOptionalInput<String>(map['availabilityZoneId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
