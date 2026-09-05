// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reserved_instance_recurring_charge.dart';

/// Input properties used for looking up and filtering ReservedInstance resources.
class ReservedInstanceState {
  /// ARN for the reserved DB instance.
  final pulumi.Input<String?>? arn;
  /// Currency code for the reserved DB instance.
  final pulumi.Input<String?>? currencyCode;
  /// DB instance class for the reserved DB instance.
  final pulumi.Input<String?>? dbInstanceClass;
  /// Duration of the reservation in seconds.
  final pulumi.Input<int?>? duration;
  /// Fixed price charged for this reserved DB instance.
  final pulumi.Input<double?>? fixedPrice;
  /// Number of instances to reserve. Default value is `1`.
  final pulumi.Input<int?>? instanceCount;
  /// Unique identifier for the lease associated with the reserved DB instance. Amazon Web Services Support might request the lease ID for an issue related to a reserved DB instance.
  final pulumi.Input<String?>? leaseId;
  /// Whether the reservation applies to Multi-AZ deployments.
  final pulumi.Input<bool?>? multiAz;
  /// ID of the Reserved DB instance offering to purchase. To determine an `offeringId`, see the `aws.rds.getReservedInstanceOffering` data source.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? offeringId;
  /// Offering type of this reserved DB instance.
  final pulumi.Input<String?>? offeringType;
  /// Description of the reserved DB instance.
  final pulumi.Input<String?>? productDescription;
  /// Recurring price charged to run this reserved DB instance.
  final pulumi.Input<List<ReservedInstanceRecurringCharge>?>? recurringCharges;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Customer-specified identifier to track this reservation.
  final pulumi.Input<String?>? reservationId;
  /// Time the reservation started.
  final pulumi.Input<String?>? startTime;
  /// State of the reserved DB instance.
  final pulumi.Input<String?>? state;
  /// Map of tags to assign to the DB reservation. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Hourly price charged for this reserved DB instance.
  final pulumi.Input<double?>? usagePrice;

  /// Creates a new [ReservedInstanceState].
  /// [arn] ARN for the reserved DB instance.
  /// [currencyCode] Currency code for the reserved DB instance.
  /// [dbInstanceClass] DB instance class for the reserved DB instance.
  /// [duration] Duration of the reservation in seconds.
  /// [fixedPrice] Fixed price charged for this reserved DB instance.
  /// [instanceCount] Number of instances to reserve. Default value is `1`.
  /// [leaseId] Unique identifier for the lease associated with the reserved DB instance. Amazon Web Services Support might request the lease ID for an issue related to a reserved DB instance.
  /// [multiAz] Whether the reservation applies to Multi-AZ deployments.
  /// [offeringId] ID of the Reserved DB instance offering to purchase. To determine an `offeringId`, see the `aws.rds.getReservedInstanceOffering` data source.
  /// [offeringType] Offering type of this reserved DB instance.
  /// [productDescription] Description of the reserved DB instance.
  /// [recurringCharges] Recurring price charged to run this reserved DB instance.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [reservationId] Customer-specified identifier to track this reservation.
  /// [startTime] Time the reservation started.
  /// [state] State of the reserved DB instance.
  /// [tags] Map of tags to assign to the DB reservation. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [usagePrice] Hourly price charged for this reserved DB instance.
  const ReservedInstanceState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      currencyCode: (() { final guardedValue = map['currencyCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbInstanceClass: (() { final guardedValue = map['dbInstanceClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      fixedPrice: (() { final guardedValue = map['fixedPrice']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      instanceCount: (() { final guardedValue = map['instanceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      leaseId: (() { final guardedValue = map['leaseId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multiAz: (() { final guardedValue = map['multiAz']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      offeringId: (() { final guardedValue = map['offeringId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      offeringType: (() { final guardedValue = map['offeringType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      productDescription: (() { final guardedValue = map['productDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recurringCharges: (() { final guardedValue = map['recurringCharges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReservedInstanceRecurringCharge>(guardedValue, (value) => ReservedInstanceRecurringCharge.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reservationId: (() { final guardedValue = map['reservationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      usagePrice: (() { final guardedValue = map['usagePrice']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
