// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reserved_instance_recurring_charge.dart';

/// Input properties used for looking up and filtering ReservedInstance resources.
class ReservedInstanceState {
  /// ARN for the reserved DB instance.
  final pulumi.Input<String>? arn;
  /// Currency code for the reserved DB instance.
  final pulumi.Input<String>? currencyCode;
  /// DB instance class for the reserved DB instance.
  final pulumi.Input<String>? dbInstanceClass;
  /// Duration of the reservation in seconds.
  final pulumi.Input<int>? duration;
  /// Fixed price charged for this reserved DB instance.
  final pulumi.Input<double>? fixedPrice;
  /// Number of instances to reserve. Default value is `1`.
  final pulumi.Input<int>? instanceCount;
  /// Unique identifier for the lease associated with the reserved DB instance. Amazon Web Services Support might request the lease ID for an issue related to a reserved DB instance.
  final pulumi.Input<String>? leaseId;
  /// Whether the reservation applies to Multi-AZ deployments.
  final pulumi.Input<bool>? multiAz;
  /// ID of the Reserved DB instance offering to purchase. To determine an `offering_id`, see the `aws.rds.getReservedInstanceOffering` data source.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? offeringId;
  /// Offering type of this reserved DB instance.
  final pulumi.Input<String>? offeringType;
  /// Description of the reserved DB instance.
  final pulumi.Input<String>? productDescription;
  /// Recurring price charged to run this reserved DB instance.
  final pulumi.Input<List<ReservedInstanceRecurringCharge>>? recurringCharges;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Customer-specified identifier to track this reservation.
  final pulumi.Input<String>? reservationId;
  /// Time the reservation started.
  final pulumi.Input<String>? startTime;
  /// State of the reserved DB instance.
  final pulumi.Input<String>? state;
  /// Map of tags to assign to the DB reservation. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Hourly price charged for this reserved DB instance.
  final pulumi.Input<double>? usagePrice;

  /// Creates a new [ReservedInstanceState].
  /// [arn] ARN for the reserved DB instance.
  /// [currencyCode] Currency code for the reserved DB instance.
  /// [dbInstanceClass] DB instance class for the reserved DB instance.
  /// [duration] Duration of the reservation in seconds.
  /// [fixedPrice] Fixed price charged for this reserved DB instance.
  /// [instanceCount] Number of instances to reserve. Default value is `1`.
  /// [leaseId] Unique identifier for the lease associated with the reserved DB instance. Amazon Web Services Support might request the lease ID for an issue related to a reserved DB instance.
  /// [multiAz] Whether the reservation applies to Multi-AZ deployments.
  /// [offeringId] ID of the Reserved DB instance offering to purchase. To determine an `offering_id`, see the `aws.rds.getReservedInstanceOffering` data source.
  /// [offeringType] Offering type of this reserved DB instance.
  /// [productDescription] Description of the reserved DB instance.
  /// [recurringCharges] Recurring price charged to run this reserved DB instance.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [reservationId] Customer-specified identifier to track this reservation.
  /// [startTime] Time the reservation started.
  /// [state] State of the reserved DB instance.
  /// [tags] Map of tags to assign to the DB reservation. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [usagePrice] Hourly price charged for this reserved DB instance.
  ReservedInstanceState({
    this.arn,
    this.currencyCode,
    this.dbInstanceClass,
    this.duration,
    this.fixedPrice,
    this.instanceCount,
    this.leaseId,
    this.multiAz,
    this.offeringId,
    this.offeringType,
    this.productDescription,
    this.recurringCharges,
    this.region,
    this.reservationId,
    this.startTime,
    this.state,
    this.tags,
    this.tagsAll,
    this.usagePrice,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'currencyCode': ?currencyCode,
      'dbInstanceClass': ?dbInstanceClass,
      'duration': ?duration,
      'fixedPrice': ?fixedPrice,
      'instanceCount': ?instanceCount,
      'leaseId': ?leaseId,
      'multiAz': ?multiAz,
      'offeringId': ?offeringId,
      'offeringType': ?offeringType,
      'productDescription': ?productDescription,
      'recurringCharges': ?pulumi.Input.mapOptionalInputValue<List<ReservedInstanceRecurringCharge>, List<Map<String, dynamic>>>(recurringCharges, (value) => pulumi.Input.encodeList<ReservedInstanceRecurringCharge, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'reservationId': ?reservationId,
      'startTime': ?startTime,
      'state': ?state,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'usagePrice': ?usagePrice,
    };
  }

  factory ReservedInstanceState.fromMap(Map<String, dynamic> map) {
    return ReservedInstanceState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      currencyCode: map['currencyCode'] == null ? null : ((map['currencyCode'] as String).input()).input(),
      dbInstanceClass: map['dbInstanceClass'] == null ? null : ((map['dbInstanceClass'] as String).input()).input(),
      duration: map['duration'] == null ? null : ((map['duration'] as int).input()).input(),
      fixedPrice: map['fixedPrice'] == null ? null : ((map['fixedPrice'] as double).input()).input(),
      instanceCount: map['instanceCount'] == null ? null : ((map['instanceCount'] as int).input()).input(),
      leaseId: map['leaseId'] == null ? null : ((map['leaseId'] as String).input()).input(),
      multiAz: map['multiAz'] == null ? null : ((map['multiAz'] as bool).input()).input(),
      offeringId: map['offeringId'] == null ? null : ((map['offeringId'] as String).input()).input(),
      offeringType: map['offeringType'] == null ? null : ((map['offeringType'] as String).input()).input(),
      productDescription: map['productDescription'] == null ? null : ((map['productDescription'] as String).input()).input(),
      recurringCharges: map['recurringCharges'] == null ? null : ((pulumi.Input.decodeList<ReservedInstanceRecurringCharge>(map['recurringCharges']!, (value) => ReservedInstanceRecurringCharge.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      reservationId: map['reservationId'] == null ? null : ((map['reservationId'] as String).input()).input(),
      startTime: map['startTime'] == null ? null : ((map['startTime'] as String).input()).input(),
      state: map['state'] == null ? null : ((map['state'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      usagePrice: map['usagePrice'] == null ? null : ((map['usagePrice'] as double).input()).input(),
    );
  }
}

