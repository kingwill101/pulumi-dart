import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_endpoint_subnet_association_args.dart';
import 'vpc_endpoint_subnet_association_state.dart';

/// Provides a resource to create an association between a VPC endpoint and a subnet.
///
/// &gt; **NOTE on VPC Endpoints and VPC Endpoint Subnet Associations:** This provider provides
/// both a standalone VPC Endpoint Subnet Association (an association between a VPC endpoint
/// and a single `subnetId`) and a VPC Endpoint resource with a `subnetIds`
/// attribute. Do not use the same subnet ID in both a VPC Endpoint resource and a VPC Endpoint Subnet
/// Association resource. Doing so will cause a conflict of associations and will overwrite the association.
///
/// ## Example Usage
///
/// Basic usage:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const snEc2 = new aws.ec2.VpcEndpointSubnetAssociation("sn_ec2", {
///     vpcEndpointId: ec2.id,
///     subnetId: sn.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// sn_ec2 = aws.ec2.VpcEndpointSubnetAssociation("sn_ec2",
///     vpc_endpoint_id=ec2["id"],
///     subnet_id=sn["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var snEc2 = new Aws.Ec2.VpcEndpointSubnetAssociation("sn_ec2", new()
///     {
///         VpcEndpointId = ec2.Id,
///         SubnetId = sn.Id,
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
/// 		_, err := ec2.NewVpcEndpointSubnetAssociation(ctx, "sn_ec2", &ec2.VpcEndpointSubnetAssociationArgs{
/// 			VpcEndpointId: pulumi.Any(ec2.Id),
/// 			SubnetId:      pulumi.Any(sn.Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_ec2_vpcendpointsubnetassociation" "sn_ec2" {
///   vpc_endpoint_id = ec2.id
///   subnet_id       = sn.id
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var snEc2 = new VpcEndpointSubnetAssociation("snEc2", VpcEndpointSubnetAssociationArgs.builder()
///             .vpcEndpointId(ec2.id())
///             .subnetId(sn.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   snEc2:
///     type: aws:ec2:VpcEndpointSubnetAssociation
///     name: sn_ec2
///     properties:
///       vpcEndpointId: ${ec2.id}
///       subnetId: ${sn.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC Endpoint Subnet Associations using `vpcEndpointId` together with `subnetId`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcEndpointSubnetAssociation:VpcEndpointSubnetAssociation example vpce-aaaaaaaa/subnet-bbbbbbbbbbbbbbbbb
/// ```
class VpcEndpointSubnetAssociation extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The ID of the subnet to be associated with the VPC endpoint.
  late final pulumi.Output<String> subnetId;
  /// The ID of the VPC endpoint with which the subnet will be associated.
  late final pulumi.Output<String> vpcEndpointId;

  /// Creates a new [VpcEndpointSubnetAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcEndpointSubnetAssociation]. {@macro pulumi_ec2_vpc_endpoint_subnet_association_vpc_endpoint_subnet_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcEndpointSubnetAssociation(
    String name, {
    VpcEndpointSubnetAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcEndpointSubnetAssociation:VpcEndpointSubnetAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    region = registerOutput<String>('region');
    subnetId = registerOutput<String>('subnetId');
    vpcEndpointId = registerOutput<String>('vpcEndpointId');
  }

  /// Gets an existing [VpcEndpointSubnetAssociation] resource's state with the given [name] and [id].
  static VpcEndpointSubnetAssociation get(
    String name,
    pulumi.Input<String> id, {
    VpcEndpointSubnetAssociationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return VpcEndpointSubnetAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  VpcEndpointSubnetAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcEndpointSubnetAssociation:VpcEndpointSubnetAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    region = registerOutput<String>('region');
    subnetId = registerOutput<String>('subnetId');
    vpcEndpointId = registerOutput<String>('vpcEndpointId');
  }

  /// Creates a typed reference to an existing [VpcEndpointSubnetAssociation] resource.
  VpcEndpointSubnetAssociation.reference(String urn)
    : super(
        'aws:ec2/vpcEndpointSubnetAssociation:VpcEndpointSubnetAssociation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    region = registerOutput<String>('region');
    subnetId = registerOutput<String>('subnetId');
    vpcEndpointId = registerOutput<String>('vpcEndpointId');
  }
}
