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
    int? instanceCount,
    required String offeringId,
    String? region,
    String? reservationId,
    Map<String, String>? tags,
  })  : instanceCount = pulumi.Input.asOptionalInput<int>(instanceCount),
        offeringId = pulumi.Input.asInput<String>(offeringId),
        region = pulumi.Input.asOptionalInput<String>(region),
        reservationId = pulumi.Input.asOptionalInput<String>(reservationId),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final instanceCountValue = instanceCount;
    if (instanceCountValue != null) {
      map['instanceCount'] = instanceCountValue;
    }
    map['offeringId'] = offeringId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final reservationIdValue = reservationId;
    if (reservationIdValue != null) {
      map['reservationId'] = reservationIdValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ReservedInstanceArgs.fromMap(Map<String, dynamic> map) {
    return ReservedInstanceArgs(
      instanceCount:
          map['instanceCount'] == null ? null : map['instanceCount'] as int,
      offeringId: map['offeringId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      reservationId:
          map['reservationId'] == null ? null : map['reservationId'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
