// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getInstanceTypeOfferings.
class GetInstanceTypeOfferingsArgs2 {
  /// Filter response by engine type.
  final Input<String>? engineType;

  /// Filter response by host instance type.
  final Input<String>? hostInstanceType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Filter response by storage type.
  final Input<String>? storageType;

  GetInstanceTypeOfferingsArgs2({
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

  factory GetInstanceTypeOfferingsArgs2.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypeOfferingsArgs2(
      engineType: Input.asOptionalInput<String>(map['engineType']),
      hostInstanceType: Input.asOptionalInput<String>(map['hostInstanceType']),
      region: Input.asOptionalInput<String>(map['region']),
      storageType: Input.asOptionalInput<String>(map['storageType']),
    );
  }
}
