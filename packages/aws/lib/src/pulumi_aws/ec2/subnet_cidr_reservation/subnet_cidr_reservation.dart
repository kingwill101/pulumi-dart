import 'package:pulumi/pulumi.dart';
import 'subnet_cidr_reservation_args.dart';

/// Provides a subnet CIDR reservation resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Existing CIDR reservations using `SUBNET_ID:RESERVATION_ID`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/subnetCidrReservation:SubnetCidrReservation example subnet-01llsxvsxabqiymcz:scr-4mnvz6wb7otksjcs9
/// ```
class SubnetCidrReservation extends CustomResource {
  /// The CIDR block for the reservation.
  late final Output<String> cidrBlock;

  /// A brief description of the reservation.
  late final Output<String?> description;

  /// ID of the AWS account that owns this CIDR reservation.
  late final Output<String> ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The type of reservation to create. Valid values: `explicit`, `prefix`
  late final Output<String> reservationType;

  /// The ID of the subnet to create the reservation for.
  late final Output<String> subnetId;

  SubnetCidrReservation(
    String name, {
    SubnetCidrReservationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/subnetCidrReservation:SubnetCidrReservation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.cidrBlock = registerOutput<String>('cidrBlock');
    this.description = registerOutput<String?>('description');
    this.ownerId = registerOutput<String>('ownerId');
    this.region = registerOutput<String>('region');
    this.reservationType = registerOutput<String>('reservationType');
    this.subnetId = registerOutput<String>('subnetId');
  }
}
