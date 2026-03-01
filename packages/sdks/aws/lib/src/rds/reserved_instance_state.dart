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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? currencyCode,
    pulumi.Output<String>? dbInstanceClass,
    pulumi.Output<int>? duration,
    pulumi.Output<double>? fixedPrice,
    pulumi.Output<int>? instanceCount,
    pulumi.Output<String>? leaseId,
    pulumi.Output<bool>? multiAz,
    pulumi.Output<String>? offeringId,
    pulumi.Output<String>? offeringType,
    pulumi.Output<String>? productDescription,
    pulumi.Output<List<ReservedInstanceRecurringCharge>>? recurringCharges,
    pulumi.Output<String>? region,
    pulumi.Output<String>? reservationId,
    pulumi.Output<String>? startTime,
    pulumi.Output<String>? state,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<double>? usagePrice,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      currencyCode = pulumi.Input.asOptionalInput<String>(currencyCode),
      dbInstanceClass = pulumi.Input.asOptionalInput<String>(dbInstanceClass),
      duration = pulumi.Input.asOptionalInput<int>(duration),
      fixedPrice = pulumi.Input.asOptionalInput<double>(fixedPrice),
      instanceCount = pulumi.Input.asOptionalInput<int>(instanceCount),
      leaseId = pulumi.Input.asOptionalInput<String>(leaseId),
      multiAz = pulumi.Input.asOptionalInput<bool>(multiAz),
      offeringId = pulumi.Input.asOptionalInput<String>(offeringId),
      offeringType = pulumi.Input.asOptionalInput<String>(offeringType),
      productDescription = pulumi.Input.asOptionalInput<String>(productDescription),
      recurringCharges = pulumi.Input.asOptionalInput<List<ReservedInstanceRecurringCharge>>(recurringCharges),
      region = pulumi.Input.asOptionalInput<String>(region),
      reservationId = pulumi.Input.asOptionalInput<String>(reservationId),
      startTime = pulumi.Input.asOptionalInput<String>(startTime),
      state = pulumi.Input.asOptionalInput<String>(state),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      usagePrice = pulumi.Input.asOptionalInput<double>(usagePrice);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      currencyCode: map['currencyCode'] == null ? null : pulumi.Output.create<String>(map['currencyCode'] as String),
      dbInstanceClass: map['dbInstanceClass'] == null ? null : pulumi.Output.create<String>(map['dbInstanceClass'] as String),
      duration: map['duration'] == null ? null : pulumi.Output.create<int>(map['duration'] as int),
      fixedPrice: map['fixedPrice'] == null ? null : pulumi.Output.create<double>(map['fixedPrice'] as double),
      instanceCount: map['instanceCount'] == null ? null : pulumi.Output.create<int>(map['instanceCount'] as int),
      leaseId: map['leaseId'] == null ? null : pulumi.Output.create<String>(map['leaseId'] as String),
      multiAz: map['multiAz'] == null ? null : pulumi.Output.create<bool>(map['multiAz'] as bool),
      offeringId: map['offeringId'] == null ? null : pulumi.Output.create<String>(map['offeringId'] as String),
      offeringType: map['offeringType'] == null ? null : pulumi.Output.create<String>(map['offeringType'] as String),
      productDescription: map['productDescription'] == null ? null : pulumi.Output.create<String>(map['productDescription'] as String),
      recurringCharges: map['recurringCharges'] == null ? null : pulumi.Output.create<List<ReservedInstanceRecurringCharge>>(pulumi.Input.decodeList<ReservedInstanceRecurringCharge>(map['recurringCharges'], (value) => ReservedInstanceRecurringCharge.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      reservationId: map['reservationId'] == null ? null : pulumi.Output.create<String>(map['reservationId'] as String),
      startTime: map['startTime'] == null ? null : pulumi.Output.create<String>(map['startTime'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      usagePrice: map['usagePrice'] == null ? null : pulumi.Output.create<double>(map['usagePrice'] as double),
    );
  }
}

