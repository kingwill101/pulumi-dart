import 'package:pulumi/pulumi.dart';
import 'vpc_dhcp_options_association_args.dart';

/// Provides a VPC DHCP Options Association resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const dnsResolver = new aws.ec2.VpcDhcpOptionsAssociation("dns_resolver", {
/// vpcId: fooAwsVpc.id,
/// dhcpOptionsId: foo.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// dns_resolver = aws.ec2.VpcDhcpOptionsAssociation("dns_resolver",
/// vpc_id=foo_aws_vpc["id"],
/// dhcp_options_id=foo["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var dnsResolver = new Aws.Ec2.VpcDhcpOptionsAssociation("dns_resolver", new()
/// {
/// VpcId = fooAwsVpc.Id,
/// DhcpOptionsId = foo.Id,
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
/// _, err := ec2.NewVpcDhcpOptionsAssociation(ctx, "dns_resolver", &ec2.VpcDhcpOptionsAssociationArgs{
/// VpcId:         pulumi.Any(fooAwsVpc.Id),
/// DhcpOptionsId: pulumi.Any(foo.Id),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var dnsResolver = new VpcDhcpOptionsAssociation("dnsResolver", VpcDhcpOptionsAssociationArgs.builder()
/// .vpcId(fooAwsVpc.id())
/// .dhcpOptionsId(foo.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// dnsResolver:
/// type: aws:ec2:VpcDhcpOptionsAssociation
/// name: dns_resolver
/// properties:
/// vpcId: ${fooAwsVpc.id}
/// dhcpOptionsId: ${foo.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Remarks
///
/// * You can only associate one DHCP Options Set to a given VPC ID.
/// * Removing the DHCP Options Association automatically sets AWS's <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span> DHCP Options Set to the VPC.
///
/// ## Import
///
/// Using `pulumi import`, import DHCP associations using the VPC ID associated with the options. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcDhcpOptionsAssociation:VpcDhcpOptionsAssociation imported vpc-0f001273ec18911b1
/// ```
class VpcDhcpOptionsAssociation extends CustomResource {
  /// The ID of the DHCP Options Set to associate to the VPC.
  late final Output<String> dhcpOptionsId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ID of the VPC to which we would like to associate a DHCP Options Set.
  late final Output<String> vpcId;

  VpcDhcpOptionsAssociation(
    String name, {
    VpcDhcpOptionsAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcDhcpOptionsAssociation:VpcDhcpOptionsAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.dhcpOptionsId = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.vpcId = Output.createUnknown<String>();
  }
}
