// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getReservedInstanceOffering.
class GetReservedInstanceOfferingArgs {
  /// DB instance class for the reserved DB instance.
  final Input<String> dbInstanceClass;

  /// Duration of the reservation in years or seconds. Valid values are `1`, `3`, `31536000`, `94608000`
  final Input<int> duration;

  /// Whether the reservation applies to Multi-AZ deployments.
  final Input<bool> multiAz;

  /// Offering type of this reserved DB instance. Valid values are `No Upfront`, `Partial Upfront`, `All Upfront`.
  final Input<String> offeringType;

  /// Description of the reserved DB instance. Example values are `postgresql`, `aurora-postgresql`, `mysql`, `aurora-mysql`, `mariadb`.
  final Input<String> productDescription;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetReservedInstanceOfferingArgs({
    required this.dbInstanceClass,
    required this.duration,
    required this.multiAz,
    required this.offeringType,
    required this.productDescription,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dbInstanceClass'] = dbInstanceClass;
    map['duration'] = duration;
    map['multiAz'] = multiAz;
    map['offeringType'] = offeringType;
    map['productDescription'] = productDescription;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetReservedInstanceOfferingArgs.fromMap(Map<String, dynamic> map) {
    return GetReservedInstanceOfferingArgs(
      dbInstanceClass: Input.asInput<String>(map['dbInstanceClass']),
      duration: Input.asInput<int>(map['duration']),
      multiAz: Input.asInput<bool>(map['multiAz']),
      offeringType: Input.asInput<String>(map['offeringType']),
      productDescription: Input.asInput<String>(map['productDescription']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
