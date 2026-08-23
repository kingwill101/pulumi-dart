// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_get_reserved_instance_offering_get_reserved_instance_offering_args_doc}
/// Arguments for getReservedInstanceOffering.
/// {@endtemplate}
/// {@macro pulumi_rds_get_reserved_instance_offering_get_reserved_instance_offering_args_doc}
class GetReservedInstanceOfferingArgs {
  /// DB instance class for the reserved DB instance.
  final pulumi.Input<String> dbInstanceClass;
  /// Duration of the reservation in years or seconds. Valid values are `1`, `3`, `31536000`, `94608000`
  final pulumi.Input<int> duration;
  /// Whether the reservation applies to Multi-AZ deployments.
  final pulumi.Input<bool> multiAz;
  /// Offering type of this reserved DB instance. Valid values are `No Upfront`, `Partial Upfront`, `All Upfront`.
  final pulumi.Input<String> offeringType;
  /// Description of the reserved DB instance. Example values are `postgresql`, `aurora-postgresql`, `mysql`, `aurora-mysql`, `mariadb`.
  final pulumi.Input<String> productDescription;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetReservedInstanceOfferingArgs].
  /// [dbInstanceClass] DB instance class for the reserved DB instance.
  /// [duration] Duration of the reservation in years or seconds. Valid values are `1`, `3`, `31536000`, `94608000`
  /// [multiAz] Whether the reservation applies to Multi-AZ deployments.
  /// [offeringType] Offering type of this reserved DB instance. Valid values are `No Upfront`, `Partial Upfront`, `All Upfront`.
  /// [productDescription] Description of the reserved DB instance. Example values are `postgresql`, `aurora-postgresql`, `mysql`, `aurora-mysql`, `mariadb`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetReservedInstanceOfferingArgs({
    required this.dbInstanceClass,
    required this.duration,
    required this.multiAz,
    required this.offeringType,
    required this.productDescription,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbInstanceClass': dbInstanceClass,
      'duration': duration,
      'multiAz': multiAz,
      'offeringType': offeringType,
      'productDescription': productDescription,
      'region': ?region,
    };
  }

  factory GetReservedInstanceOfferingArgs.fromMap(Map<String, dynamic> map) {
    return GetReservedInstanceOfferingArgs(
      dbInstanceClass: pulumi.Input.fromValue(map['dbInstanceClass'] as String),
      duration: pulumi.Input.fromValue(map['duration'] as int),
      multiAz: pulumi.Input.fromValue(map['multiAz'] as bool),
      offeringType: pulumi.Input.fromValue(map['offeringType'] as String),
      productDescription: pulumi.Input.fromValue(map['productDescription'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
