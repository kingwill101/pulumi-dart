// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_reserved_instance_reserved_instance_args_doc}
/// The set of arguments for ReservedInstance.
/// {@endtemplate}
/// {@macro pulumi_rds_reserved_instance_reserved_instance_args_doc}
class ReservedInstanceArgs {
  /// Number of instances to reserve. Default value is `1`.
  final pulumi.Input<int>? instanceCount;
  /// ID of the Reserved DB instance offering to purchase. To determine an `offering_id`, see the `aws.rds.getReservedInstanceOffering` data source.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> offeringId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Customer-specified identifier to track this reservation.
  final pulumi.Input<String>? reservationId;
  /// Map of tags to assign to the DB reservation. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ReservedInstanceArgs].
  /// [instanceCount] Number of instances to reserve. Default value is `1`.
  /// [offeringId] ID of the Reserved DB instance offering to purchase. To determine an `offering_id`, see the `aws.rds.getReservedInstanceOffering` data source.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [reservationId] Customer-specified identifier to track this reservation.
  /// [tags] Map of tags to assign to the DB reservation. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ReservedInstanceArgs({
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
      instanceCount: map['instanceCount'] == null ? null : ((map['instanceCount'] as int).input()).input(),
      offeringId: (map['offeringId'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      reservationId: map['reservationId'] == null ? null : ((map['reservationId'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

