import 'package:pulumi/pulumi.dart';
import 'vpc_endpoint_subnet_association_args.dart';

/// Provides a resource to create an association between a VPC endpoint and a subnet.
///
/// > **NOTE on VPC Endpoints and VPC Endpoint Subnet Associations:** This provider provides
/// both a standalone VPC Endpoint Subnet Association (an association between a VPC endpoint
/// and a single <span pulumi-lang-nodejs="`subnetId`" pulumi-lang-dotnet="`SubnetId`" pulumi-lang-go="`subnetId`" pulumi-lang-python="`subnet_id`" pulumi-lang-yaml="`subnetId`" pulumi-lang-java="`subnetId`">`subnet_id`</span>) and a VPC Endpoint resource with a <span pulumi-lang-nodejs="`subnetIds`" pulumi-lang-dotnet="`SubnetIds`" pulumi-lang-go="`subnetIds`" pulumi-lang-python="`subnet_ids`" pulumi-lang-yaml="`subnetIds`" pulumi-lang-java="`subnetIds`">`subnet_ids`</span>
/// attribute. Do not use the same subnet ID in both a VPC Endpoint resource and a VPC Endpoint Subnet
/// Association resource. Doing so will cause a conflict of associations and will overwrite the association.
///
/// ## Example Usage
///
/// Basic usage:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const snEc2 = new aws.ec2.VpcEndpointSubnetAssociation("sn_ec2", {
/// vpcEndpointId: ec2.id,
/// subnetId: sn.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// sn_ec2 = aws.ec2.VpcEndpointSubnetAssociation("sn_ec2",
/// vpc_endpoint_id=ec2["id"],
/// subnet_id=sn["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var snEc2 = new Aws.Ec2.VpcEndpointSubnetAssociation("sn_ec2", new()
/// {
/// VpcEndpointId = ec2.Id,
/// SubnetId = sn.Id,
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
/// _, err := ec2.NewVpcEndpointSubnetAssociation(ctx, "sn_ec2", &ec2.VpcEndpointSubnetAssociationArgs{
/// VpcEndpointId: pulumi.Any(ec2.Id),
/// SubnetId:      pulumi.Any(sn.Id),
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
/// import com.pulumi.aws.ec2.VpcEndpointSubnetAssociation;
/// import com.pulumi.aws.ec2.VpcEndpointSubnetAssociationArgs;
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
/// var snEc2 = new VpcEndpointSubnetAssociation("snEc2", VpcEndpointSubnetAssociationArgs.builder()
/// .vpcEndpointId(ec2.id())
/// .subnetId(sn.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// snEc2:
/// type: aws:ec2:VpcEndpointSubnetAssociation
/// name: sn_ec2
/// properties:
/// vpcEndpointId: ${ec2.id}
/// subnetId: ${sn.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import VPC Endpoint Subnet Associations using <span pulumi-lang-nodejs="`vpcEndpointId`" pulumi-lang-dotnet="`VpcEndpointId`" pulumi-lang-go="`vpcEndpointId`" pulumi-lang-python="`vpc_endpoint_id`" pulumi-lang-yaml="`vpcEndpointId`" pulumi-lang-java="`vpcEndpointId`">`vpc_endpoint_id`</span> together with <span pulumi-lang-nodejs="`subnetId`" pulumi-lang-dotnet="`SubnetId`" pulumi-lang-go="`subnetId`" pulumi-lang-python="`subnet_id`" pulumi-lang-yaml="`subnetId`" pulumi-lang-java="`subnetId`">`subnet_id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcEndpointSubnetAssociation:VpcEndpointSubnetAssociation example vpce-aaaaaaaa/subnet-bbbbbbbbbbbbbbbbb
/// ```
class VpcEndpointSubnetAssociation extends CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ID of the subnet to be associated with the VPC endpoint.
  late final Output<String> subnetId;

  /// The ID of the VPC endpoint with which the subnet will be associated.
  late final Output<String> vpcEndpointId;

  VpcEndpointSubnetAssociation(
    String name, {
    VpcEndpointSubnetAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcEndpointSubnetAssociation:VpcEndpointSubnetAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.region = Output.createUnknown<String>();
    this.subnetId = Output.createUnknown<String>();
    this.vpcEndpointId = Output.createUnknown<String>();
  }
}
