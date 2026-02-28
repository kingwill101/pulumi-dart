import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_dhcp_options_association_args.dart';

/// Provides a VPC DHCP Options Association resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const dnsResolver = new aws.ec2.VpcDhcpOptionsAssociation("dns_resolver", {
///     vpcId: fooAwsVpc.id,
///     dhcpOptionsId: foo.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// dns_resolver = aws.ec2.VpcDhcpOptionsAssociation("dns_resolver",
///     vpc_id=foo_aws_vpc["id"],
///     dhcp_options_id=foo["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dnsResolver = new Aws.Ec2.VpcDhcpOptionsAssociation("dns_resolver", new()
///     {
///         VpcId = fooAwsVpc.Id,
///         DhcpOptionsId = foo.Id,
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
/// 		_, err := ec2.NewVpcDhcpOptionsAssociation(ctx, "dns_resolver", &ec2.VpcDhcpOptionsAssociationArgs{
/// 			VpcId:         pulumi.Any(fooAwsVpc.Id),
/// 			DhcpOptionsId: pulumi.Any(foo.Id),
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
/// import com.pulumi.aws.ec2.VpcDhcpOptionsAssociation;
/// import com.pulumi.aws.ec2.VpcDhcpOptionsAssociationArgs;
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
///         var dnsResolver = new VpcDhcpOptionsAssociation("dnsResolver", VpcDhcpOptionsAssociationArgs.builder()
///             .vpcId(fooAwsVpc.id())
///             .dhcpOptionsId(foo.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dnsResolver:
///     type: aws:ec2:VpcDhcpOptionsAssociation
///     name: dns_resolver
///     properties:
///       vpcId: ${fooAwsVpc.id}
///       dhcpOptionsId: ${foo.id}
/// ```
///
///
/// ## Remarks
///
/// * You can only associate one DHCP Options Set to a given VPC ID.
/// * Removing the DHCP Options Association automatically sets AWS's `default` DHCP Options Set to the VPC.
///
/// ## Import
///
/// Using `pulumi import`, import DHCP associations using the VPC ID associated with the options. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcDhcpOptionsAssociation:VpcDhcpOptionsAssociation imported vpc-0f001273ec18911b1
/// ```
class VpcDhcpOptionsAssociation extends pulumi.CustomResource {
  /// The ID of the DHCP Options Set to associate to the VPC.
  late final pulumi.Output<String> dhcpOptionsId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ID of the VPC to which we would like to associate a DHCP Options Set.
  late final pulumi.Output<String> vpcId;

  /// Creates a new [VpcDhcpOptionsAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcDhcpOptionsAssociation]. {@macro pulumi_ec2_vpc_dhcp_options_association_vpc_dhcp_options_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcDhcpOptionsAssociation(
    String name, {
    VpcDhcpOptionsAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcDhcpOptionsAssociation:VpcDhcpOptionsAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dhcpOptionsId = registerOutput<String>('dhcpOptionsId');
    this.region = registerOutput<String>('region');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
