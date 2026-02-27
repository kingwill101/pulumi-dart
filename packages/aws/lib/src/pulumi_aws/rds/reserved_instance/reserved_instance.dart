import 'package:pulumi/pulumi.dart';
import '../reserved_instance_recurring_charge/reserved_instance_recurring_charge.dart';
import 'reserved_instance_args.dart';

/// Manages an RDS DB Reserved Instance.
///
/// > **NOTE:** Once created, a reservation is valid for the `duration` of the provided `offering_id` and cannot be deleted. Performing a `destroy` will only remove the resource from state. For more information see [RDS Reserved Instances Documentation](https://aws.amazon.com/rds/reserved-instances/) and [PurchaseReservedDBInstancesOffering](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_PurchaseReservedDBInstancesOffering.html).
///
/// > **NOTE:** Due to the expense of testing this resource, we provide it as best effort. If you find it useful, and have the ability to help test or notice issues, consider reaching out to us on GitHub.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import RDS DB Instance Reservations using the `instance_id`. For example:
///
/// ```sh
/// $ pulumi import aws:rds/reservedInstance:ReservedInstance reservation_instance CustomReservationID
/// ```
class ReservedInstance extends CustomResource {
  /// ARN for the reserved DB instance.
  late final Output<String> arn;

  /// Currency code for the reserved DB instance.
  late final Output<String> currencyCode;

  /// DB instance class for the reserved DB instance.
  late final Output<String> dbInstanceClass;

  /// Duration of the reservation in seconds.
  late final Output<int> duration;

  /// Fixed price charged for this reserved DB instance.
  late final Output<double> fixedPrice;

  /// Number of instances to reserve. Default value is `1`.
  late final Output<int?> instanceCount;

  /// Unique identifier for the lease associated with the reserved DB instance. Amazon Web Services Support might request the lease ID for an issue related to a reserved DB instance.
  late final Output<String> leaseId;

  /// Whether the reservation applies to Multi-AZ deployments.
  late final Output<bool> multiAz;

  /// ID of the Reserved DB instance offering to purchase. To determine an `offering_id`, see the `aws.rds.getReservedInstanceOffering` data source.
  ///
  /// The following arguments are optional:
  late final Output<String> offeringId;

  /// Offering type of this reserved DB instance.
  late final Output<String> offeringType;

  /// Description of the reserved DB instance.
  late final Output<String> productDescription;

  /// Recurring price charged to run this reserved DB instance.
  late final Output<List<ReservedInstanceRecurringCharge>> recurringCharges;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Customer-specified identifier to track this reservation.
  late final Output<String?> reservationId;

  /// Time the reservation started.
  late final Output<String> startTime;

  /// State of the reserved DB instance.
  late final Output<String> state;

  /// Map of tags to assign to the DB reservation. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Hourly price charged for this reserved DB instance.
  late final Output<double> usagePrice;

  ReservedInstance(
    String name, {
    ReservedInstanceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:rds/reservedInstance:ReservedInstance',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.currencyCode = registerOutput<String>('currencyCode');
    this.dbInstanceClass = registerOutput<String>('dbInstanceClass');
    this.duration = registerOutput<int>('duration');
    this.fixedPrice = registerOutput<double>('fixedPrice');
    this.instanceCount = registerOutput<int?>('instanceCount');
    this.leaseId = registerOutput<String>('leaseId');
    this.multiAz = registerOutput<bool>('multiAz');
    this.offeringId = registerOutput<String>('offeringId');
    this.offeringType = registerOutput<String>('offeringType');
    this.productDescription = registerOutput<String>('productDescription');
    this.recurringCharges =
        registerOutput<List<ReservedInstanceRecurringCharge>>(
            'recurringCharges');
    this.region = registerOutput<String>('region');
    this.reservationId = registerOutput<String?>('reservationId');
    this.startTime = registerOutput<String>('startTime');
    this.state = registerOutput<String>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.usagePrice = registerOutput<double>('usagePrice');
  }
}
