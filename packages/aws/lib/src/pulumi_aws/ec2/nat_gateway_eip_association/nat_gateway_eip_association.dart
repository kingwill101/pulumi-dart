import 'package:pulumi/pulumi.dart';
import '../nat_gateway_eip_association_timeouts/nat_gateway_eip_association_timeouts.dart';
import 'nat_gateway_eip_association_args.dart';

/// Resource for managing an AWS VPC NAT Gateway EIP Association.
///
/// !> **WARNING:** You should not use the <span pulumi-lang-nodejs="`aws.ec2.NatGatewayEipAssociation`" pulumi-lang-dotnet="`aws.ec2.NatGatewayEipAssociation`" pulumi-lang-go="`ec2.NatGatewayEipAssociation`" pulumi-lang-python="`ec2.NatGatewayEipAssociation`" pulumi-lang-yaml="`aws.ec2.NatGatewayEipAssociation`" pulumi-lang-java="`aws.ec2.NatGatewayEipAssociation`">`aws.ec2.NatGatewayEipAssociation`</span> resource in conjunction with an <span pulumi-lang-nodejs="`aws.ec2.NatGateway`" pulumi-lang-dotnet="`aws.ec2.NatGateway`" pulumi-lang-go="`ec2.NatGateway`" pulumi-lang-python="`ec2.NatGateway`" pulumi-lang-yaml="`aws.ec2.NatGateway`" pulumi-lang-java="`aws.ec2.NatGateway`">`aws.ec2.NatGateway`</span> resource that has <span pulumi-lang-nodejs="`secondaryAllocationIds`" pulumi-lang-dotnet="`SecondaryAllocationIds`" pulumi-lang-go="`secondaryAllocationIds`" pulumi-lang-python="`secondary_allocation_ids`" pulumi-lang-yaml="`secondaryAllocationIds`" pulumi-lang-java="`secondaryAllocationIds`">`secondary_allocation_ids`</span> configured. Doing so may cause perpetual differences, and result in associations being overwritten.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.NatGatewayEipAssociation("example", {
/// allocationId: exampleAwsEip.id,
/// natGatewayId: exampleAwsNatGateway.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.NatGatewayEipAssociation("example",
/// allocation_id=example_aws_eip["id"],
/// nat_gateway_id=example_aws_nat_gateway["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ec2.NatGatewayEipAssociation("example", new()
/// {
/// AllocationId = exampleAwsEip.Id,
/// NatGatewayId = exampleAwsNatGateway.Id,
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
/// _, err := ec2.NewNatGatewayEipAssociation(ctx, "example", &ec2.NatGatewayEipAssociationArgs{
/// AllocationId: pulumi.Any(exampleAwsEip.Id),
/// NatGatewayId: pulumi.Any(exampleAwsNatGateway.Id),
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
/// import com.pulumi.aws.ec2.NatGatewayEipAssociation;
/// import com.pulumi.aws.ec2.NatGatewayEipAssociationArgs;
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
/// var example = new NatGatewayEipAssociation("example", NatGatewayEipAssociationArgs.builder()
/// .allocationId(exampleAwsEip.id())
/// .natGatewayId(exampleAwsNatGateway.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:NatGatewayEipAssociation
/// properties:
/// allocationId: ${exampleAwsEip.id}
/// natGatewayId: ${exampleAwsNatGateway.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import VPC NAT Gateway EIP Association using the `nat_gateway_id,allocation_id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/natGatewayEipAssociation:NatGatewayEipAssociation example nat-1234567890abcdef1,eipalloc-1234567890abcdef1
/// ```
class NatGatewayEipAssociation extends CustomResource {
  /// The ID of the Elastic IP Allocation to associate with the NAT Gateway.
  late final Output<String> allocationId;
  late final Output<String> associationId;

  /// The ID of the NAT Gateway to associate the Elastic IP Allocation to.
  ///
  /// The following arguments are optional:
  late final Output<String> natGatewayId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;
  late final Output<NatGatewayEipAssociationTimeouts?> timeouts;

  NatGatewayEipAssociation(
    String name, {
    NatGatewayEipAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/natGatewayEipAssociation:NatGatewayEipAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allocationId = registerOutput<String>('allocationId');
    this.associationId = registerOutput<String>('associationId');
    this.natGatewayId = registerOutput<String>('natGatewayId');
    this.region = registerOutput<String>('region');
    this.timeouts =
        registerOutput<NatGatewayEipAssociationTimeouts?>('timeouts');
  }
}
