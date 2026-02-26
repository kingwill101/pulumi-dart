import 'package:pulumi/pulumi.dart';
import 'subnet_cidr_reservation_args.dart';

/// Provides a subnet CIDR reservation resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.SubnetCidrReservation("example", {
/// cidrBlock: "10.0.0.16/28",
/// reservationType: "prefix",
/// subnetId: exampleAwsSubnet.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.SubnetCidrReservation("example",
/// cidr_block="10.0.0.16/28",
/// reservation_type="prefix",
/// subnet_id=example_aws_subnet["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ec2.SubnetCidrReservation("example", new()
/// {
/// CidrBlock = "10.0.0.16/28",
/// ReservationType = "prefix",
/// SubnetId = exampleAwsSubnet.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2.NewSubnetCidrReservation(ctx, "example", &ec2.SubnetCidrReservationArgs{
/// CidrBlock:       pulumi.String("10.0.0.16/28"),
/// ReservationType: pulumi.String("prefix"),
/// SubnetId:        pulumi.Any(exampleAwsSubnet.Id),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new SubnetCidrReservation("example", SubnetCidrReservationArgs.builder()
/// .cidrBlock("10.0.0.16/28")
/// .reservationType("prefix")
/// .subnetId(exampleAwsSubnet.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:SubnetCidrReservation
/// properties:
/// cidrBlock: 10.0.0.16/28
/// reservationType: prefix
/// subnetId: ${exampleAwsSubnet.id}
/// ```
/// <!--End PulumiCodeChooser -->
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

  /// The type of reservation to create. Valid values: <span pulumi-lang-nodejs="`explicit`" pulumi-lang-dotnet="`Explicit`" pulumi-lang-go="`explicit`" pulumi-lang-python="`explicit`" pulumi-lang-yaml="`explicit`" pulumi-lang-java="`explicit`">`explicit`</span>, <span pulumi-lang-nodejs="`prefix`" pulumi-lang-dotnet="`Prefix`" pulumi-lang-go="`prefix`" pulumi-lang-python="`prefix`" pulumi-lang-yaml="`prefix`" pulumi-lang-java="`prefix`">`prefix`</span>
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
    this.cidrBlock = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.ownerId = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.reservationType = Output.createUnknown<String>();
    this.subnetId = Output.createUnknown<String>();
  }
}
