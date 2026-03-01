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
    required pulumi.Output<String> dbInstanceClass,
    required pulumi.Output<int> duration,
    required pulumi.Output<bool> multiAz,
    required pulumi.Output<String> offeringType,
    required pulumi.Output<String> productDescription,
    pulumi.Output<String>? region,
  }) :
      dbInstanceClass = pulumi.Input.asInput<String>(dbInstanceClass),
      duration = pulumi.Input.asInput<int>(duration),
      multiAz = pulumi.Input.asInput<bool>(multiAz),
      offeringType = pulumi.Input.asInput<String>(offeringType),
      productDescription = pulumi.Input.asInput<String>(productDescription),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      dbInstanceClass: pulumi.Output.create<String>(map['dbInstanceClass'] as String),
      duration: pulumi.Output.create<int>(map['duration'] as int),
      multiAz: pulumi.Output.create<bool>(map['multiAz'] as bool),
      offeringType: pulumi.Output.create<String>(map['offeringType'] as String),
      productDescription: pulumi.Output.create<String>(map['productDescription'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

