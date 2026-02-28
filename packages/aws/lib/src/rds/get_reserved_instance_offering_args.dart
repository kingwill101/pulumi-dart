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
  GetReservedInstanceOfferingArgs({
    required String dbInstanceClass,
    required int duration,
    required bool multiAz,
    required String offeringType,
    required String productDescription,
    String? region,
  })  : dbInstanceClass = pulumi.Input.asInput<String>(dbInstanceClass),
        duration = pulumi.Input.asInput<int>(duration),
        multiAz = pulumi.Input.asInput<bool>(multiAz),
        offeringType = pulumi.Input.asInput<String>(offeringType),
        productDescription = pulumi.Input.asInput<String>(productDescription),
        region = pulumi.Input.asOptionalInput<String>(region);

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
      dbInstanceClass: map['dbInstanceClass'] as String,
      duration: map['duration'] as int,
      multiAz: map['multiAz'] as bool,
      offeringType: map['offeringType'] as String,
      productDescription: map['productDescription'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
