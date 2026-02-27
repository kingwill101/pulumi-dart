import 'package:pulumi/pulumi.dart';
import 'capacity_reservation_args2.dart';

/// Provides an EC2 Capacity Reservation. This allows you to reserve capacity for your Amazon EC2 instances in a specific Availability Zone for any duration.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Capacity Reservations using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/capacityReservation:CapacityReservation web cr-0123456789abcdef0
/// ```
class CapacityReservation2 extends CustomResource {
  /// The ARN of the Capacity Reservation.
  late final Output<String> arn;

  /// The Availability Zone in which to create the Capacity Reservation.
  late final Output<String> availabilityZone;

  /// Indicates whether the Capacity Reservation supports EBS-optimized instances.
  late final Output<bool?> ebsOptimized;

  /// The date and time at which the Capacity Reservation expires. When a Capacity Reservation expires, the reserved capacity is released and you can no longer launch instances into it. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  late final Output<String?> endDate;

  /// Indicates the way in which the Capacity Reservation ends. Specify either `unlimited` or `limited`.
  late final Output<String?> endDateType;

  /// Indicates whether the Capacity Reservation supports instances with temporary, block-level storage.
  late final Output<bool?> ephemeralStorage;

  /// The number of instances for which to reserve capacity.
  late final Output<int> instanceCount;

  /// Indicates the type of instance launches that the Capacity Reservation accepts. Specify either `open` or `targeted`.
  late final Output<String?> instanceMatchCriteria;

  /// The type of operating system for which to reserve capacity. Valid options are `Linux/UNIX`, `Red Hat Enterprise Linux`, `SUSE Linux`, `Windows`, `Windows with SQL Server`, `Windows with SQL Server Enterprise`, `Windows with SQL Server Standard` or `Windows with SQL Server Web`.
  late final Output<String> instancePlatform;

  /// The instance type for which to reserve capacity.
  late final Output<String> instanceType;

  /// The Amazon Resource Name (ARN) of the Outpost on which to create the Capacity Reservation.
  late final Output<String?> outpostArn;

  /// The ID of the AWS account that owns the Capacity Reservation.
  late final Output<String> ownerId;

  /// The Amazon Resource Name (ARN) of the cluster placement group in which to create the Capacity Reservation.
  late final Output<String?> placementGroupArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block
  late final Output<Map<String, String>> tagsAll;

  /// Indicates the tenancy of the Capacity Reservation. Specify either `default` or `dedicated`.
  late final Output<String?> tenancy;

  CapacityReservation2(
    String name, {
    CapacityReservationArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/capacityReservation:CapacityReservation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.availabilityZone = registerOutput<String>('availabilityZone');
    this.ebsOptimized = registerOutput<bool?>('ebsOptimized');
    this.endDate = registerOutput<String?>('endDate');
    this.endDateType = registerOutput<String?>('endDateType');
    this.ephemeralStorage = registerOutput<bool?>('ephemeralStorage');
    this.instanceCount = registerOutput<int>('instanceCount');
    this.instanceMatchCriteria =
        registerOutput<String?>('instanceMatchCriteria');
    this.instancePlatform = registerOutput<String>('instancePlatform');
    this.instanceType = registerOutput<String>('instanceType');
    this.outpostArn = registerOutput<String?>('outpostArn');
    this.ownerId = registerOutput<String>('ownerId');
    this.placementGroupArn = registerOutput<String?>('placementGroupArn');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.tenancy = registerOutput<String?>('tenancy');
  }
}
