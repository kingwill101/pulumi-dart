// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ReservedInstance.
class ReservedInstanceArgs {
  /// Number of instances to reserve. Default value is `1`.
  final Input<int>? instanceCount;

  /// ID of the Reserved DB instance offering to purchase. To determine an `offering_id`, see the `aws.rds.getReservedInstanceOffering` data source.
  ///
  /// The following arguments are optional:
  final Input<String> offeringId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Customer-specified identifier to track this reservation.
  final Input<String>? reservationId;

  /// Map of tags to assign to the DB reservation. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  ReservedInstanceArgs({
    this.instanceCount,
    required this.offeringId,
    this.region,
    this.reservationId,
    this.tags,
  });

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
      instanceCount: Input.asOptionalInput<int>(map['instanceCount']),
      offeringId: Input.asInput<String>(map['offeringId']),
      region: Input.asOptionalInput<String>(map['region']),
      reservationId: Input.asOptionalInput<String>(map['reservationId']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
