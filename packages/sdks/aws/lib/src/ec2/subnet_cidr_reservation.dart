import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_cidr_reservation_args.dart';
import 'subnet_cidr_reservation_state.dart';

/// Provides a subnet CIDR reservation resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.SubnetCidrReservation("example", {
///     cidrBlock: "10.0.0.16/28",
///     reservationType: "prefix",
///     subnetId: exampleAwsSubnet.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.SubnetCidrReservation("example",
///     cidr_block="10.0.0.16/28",
///     reservation_type="prefix",
///     subnet_id=example_aws_subnet["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2.SubnetCidrReservation("example", new()
///     {
///         CidrBlock = "10.0.0.16/28",
///         ReservationType = "prefix",
///         SubnetId = exampleAwsSubnet.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.NewSubnetCidrReservation(ctx, "example", &ec2.SubnetCidrReservationArgs{
/// 			CidrBlock:       pulumi.String("10.0.0.16/28"),
/// 			ReservationType: pulumi.String("prefix"),
/// 			SubnetId:        pulumi.Any(exampleAwsSubnet.Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.SubnetCidrReservation;
/// import com.pulumi.aws.ec2.SubnetCidrReservationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new SubnetCidrReservation("example", SubnetCidrReservationArgs.builder()
///             .cidrBlock("10.0.0.16/28")
///             .reservationType("prefix")
///             .subnetId(exampleAwsSubnet.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:SubnetCidrReservation
///     properties:
///       cidrBlock: 10.0.0.16/28
///       reservationType: prefix
///       subnetId: ${exampleAwsSubnet.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Existing CIDR reservations using `SUBNET_ID:RESERVATION_ID`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/subnetCidrReservation:SubnetCidrReservation example subnet-01llsxvsxabqiymcz:scr-4mnvz6wb7otksjcs9
/// ```
class SubnetCidrReservation extends pulumi.CustomResource {
  /// The CIDR block for the reservation.
  late final pulumi.Output<String> cidrBlock;

  /// A brief description of the reservation.
  late final pulumi.Output<String?> description;

  /// ID of the AWS account that owns this CIDR reservation.
  late final pulumi.Output<String> ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The type of reservation to create. Valid values: `explicit`, `prefix`
  late final pulumi.Output<String> reservationType;

  /// The ID of the subnet to create the reservation for.
  late final pulumi.Output<String> subnetId;

  /// Creates a new [SubnetCidrReservation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SubnetCidrReservation]. {@macro pulumi_ec2_subnet_cidr_reservation_subnet_cidr_reservation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SubnetCidrReservation(
    String name, {
    SubnetCidrReservationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ec2/subnetCidrReservation:SubnetCidrReservation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cidrBlock = registerOutput<String>('cidrBlock');
    description = registerOutput<String?>('description');
    ownerId = registerOutput<String>('ownerId');
    region = registerOutput<String>('region');
    reservationType = registerOutput<String>('reservationType');
    subnetId = registerOutput<String>('subnetId');
  }

  /// Gets an existing [SubnetCidrReservation] resource's state with the given [name] and [id].
  static SubnetCidrReservation get(
    String name,
    pulumi.Input<String> id, {
    SubnetCidrReservationState? state,
  }) {
    return SubnetCidrReservation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SubnetCidrReservation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ec2/subnetCidrReservation:SubnetCidrReservation',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cidrBlock = registerOutput<String>('cidrBlock');
    description = registerOutput<String?>('description');
    ownerId = registerOutput<String>('ownerId');
    region = registerOutput<String>('region');
    reservationType = registerOutput<String>('reservationType');
    subnetId = registerOutput<String>('subnetId');
  }
}
