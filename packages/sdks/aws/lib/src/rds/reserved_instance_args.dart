// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_reserved_instance_reserved_instance_args_doc}
/// The set of arguments for ReservedInstance.
/// {@endtemplate}
/// {@macro pulumi_rds_reserved_instance_reserved_instance_args_doc}
class ReservedInstanceArgs {
  /// Number of instances to reserve. Default value is `1`.
  final pulumi.Input<int>? instanceCount;
  /// ID of the Reserved DB instance offering to purchase. To determine an `offeringId`, see the `aws.rds.getReservedInstanceOffering` data source.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> offeringId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Customer-specified identifier to track this reservation.
  final pulumi.Input<String>? reservationId;
  /// Map of tags to assign to the DB reservation. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ReservedInstanceArgs].
  /// [instanceCount] Number of instances to reserve. Default value is `1`.
  /// [offeringId] ID of the Reserved DB instance offering to purchase. To determine an `offeringId`, see the `aws.rds.getReservedInstanceOffering` data source.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [reservationId] Customer-specified identifier to track this reservation.
  /// [tags] Map of tags to assign to the DB reservation. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const ReservedInstanceArgs({
    this.instanceCount,
    required this.offeringId,
    this.region,
    this.reservationId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceCount': ?instanceCount,
      'offeringId': offeringId,
      'region': ?region,
      'reservationId': ?reservationId,
      'tags': ?tags,
    };
  }

  factory ReservedInstanceArgs.fromMap(Map<String, dynamic> map) {
    return ReservedInstanceArgs(
      instanceCount: (() { final guardedValue = map['instanceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      offeringId: pulumi.Input.fromValue(map['offeringId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reservationId: (() { final guardedValue = map['reservationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
