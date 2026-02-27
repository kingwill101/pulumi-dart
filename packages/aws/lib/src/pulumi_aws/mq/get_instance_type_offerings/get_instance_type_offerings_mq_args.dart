// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getInstanceTypeOfferings.
class GetInstanceTypeOfferingsMqArgs {
  /// Filter response by engine type.
  final pulumi.Input<String>? engineType;

  /// Filter response by host instance type.
  final pulumi.Input<String>? hostInstanceType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Filter response by storage type.
  final pulumi.Input<String>? storageType;

  GetInstanceTypeOfferingsMqArgs({
    this.engineType,
    this.hostInstanceType,
    this.region,
    this.storageType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final engineTypeValue = engineType;
    if (engineTypeValue != null) {
      map['engineType'] = engineTypeValue;
    }
    final hostInstanceTypeValue = hostInstanceType;
    if (hostInstanceTypeValue != null) {
      map['hostInstanceType'] = hostInstanceTypeValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final storageTypeValue = storageType;
    if (storageTypeValue != null) {
      map['storageType'] = storageTypeValue;
    }
    return map;
  }

  factory GetInstanceTypeOfferingsMqArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypeOfferingsMqArgs(
      engineType: pulumi.Input.asOptionalInput<String>(map['engineType']),
      hostInstanceType:
          pulumi.Input.asOptionalInput<String>(map['hostInstanceType']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      storageType: pulumi.Input.asOptionalInput<String>(map['storageType']),
    );
  }
}
