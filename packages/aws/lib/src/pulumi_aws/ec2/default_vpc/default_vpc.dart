import 'package:pulumi/pulumi.dart';
import 'default_vpc_args.dart';

/// Provides a resource to manage the [default AWS VPC](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/default-vpc.html)
/// in the current AWS Region.
///
/// If you created your AWS account after 2013-12-04 you have a default VPC in each AWS Region.
///
/// **This is an advanced resource** and has special caveats to be aware of when using it. Please read this document in its entirety before using this resource.
///
/// The <span pulumi-lang-nodejs="`aws.ec2.DefaultVpc`" pulumi-lang-dotnet="`aws.ec2.DefaultVpc`" pulumi-lang-go="`ec2.DefaultVpc`" pulumi-lang-python="`ec2.DefaultVpc`" pulumi-lang-yaml="`aws.ec2.DefaultVpc`" pulumi-lang-java="`aws.ec2.DefaultVpc`">`aws.ec2.DefaultVpc`</span> resource behaves differently from normal resources in that if a default VPC exists, this provider does not _create_ this resource, but instead "adopts" it into management.
/// If no default VPC exists, the provider creates a new default VPC, which leads to the implicit creation of [other resources](https://docs.aws.amazon.com/vpc/latest/userguide/default-vpc.html#default-vpc-components).
/// By default, `pulumi destroy` does not delete the default VPC but does remove the resource from the state.
/// Set the <span pulumi-lang-nodejs="`forceDestroy`" pulumi-lang-dotnet="`ForceDestroy`" pulumi-lang-go="`forceDestroy`" pulumi-lang-python="`force_destroy`" pulumi-lang-yaml="`forceDestroy`" pulumi-lang-java="`forceDestroy`">`force_destroy`</span> argument to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> to delete the default VPC.
///
/// ## Example Usage
///
/// Basic usage with tags:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.ec2.DefaultVpc("default", {tags: {
/// Name: "Default VPC",
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.ec2.DefaultVpc("default", tags={
/// "Name": "Default VPC",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Aws.Ec2.DefaultVpc("default", new()
/// {
/// Tags =
/// {
/// { "Name", "Default VPC" },
/// },
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
/// _, err := ec2.NewDefaultVpc(ctx, "default", &ec2.DefaultVpcArgs{
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("Default VPC"),
/// },
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
/// import com.pulumi.aws.ec2.DefaultVpc;
/// import com.pulumi.aws.ec2.DefaultVpcArgs;
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
/// var default_ = new DefaultVpc("default", DefaultVpcArgs.builder()
/// .tags(Map.of("Name", "Default VPC"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: aws:ec2:DefaultVpc
/// properties:
/// tags:
/// Name: Default VPC
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Default VPCs using the VPC <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/defaultVpc:DefaultVpc default vpc-a01106c2
/// ```
class DefaultVpc extends CustomResource {
  late final Output<String> arn;
  late final Output<bool?> assignGeneratedIpv6CidrBlock;

  /// The primary IPv4 CIDR block for the VPC
  late final Output<String> cidrBlock;
  late final Output<String> defaultNetworkAclId;
  late final Output<String> defaultRouteTableId;
  late final Output<String> defaultSecurityGroupId;
  late final Output<String> dhcpOptionsId;
  late final Output<bool?> enableDnsHostnames;
  late final Output<bool?> enableDnsSupport;
  late final Output<bool> enableNetworkAddressUsageMetrics;
  late final Output<bool> existingDefaultVpc;

  /// Whether destroying the resource deletes the default VPC. Default: <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>
  late final Output<bool?> forceDestroy;

  /// The allowed tenancy of instances launched into the VPC
  late final Output<String> instanceTenancy;
  late final Output<String> ipv6AssociationId;
  late final Output<String> ipv6CidrBlock;
  late final Output<String> ipv6CidrBlockNetworkBorderGroup;
  late final Output<String?> ipv6IpamPoolId;
  late final Output<int?> ipv6NetmaskLength;
  late final Output<String> mainRouteTableId;
  late final Output<String> ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
  late final Output<String> region;
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  DefaultVpc(
    String name, {
    DefaultVpcArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/defaultVpc:DefaultVpc',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.assignGeneratedIpv6CidrBlock = Output.createUnknown<bool?>();
    this.cidrBlock = Output.createUnknown<String>();
    this.defaultNetworkAclId = Output.createUnknown<String>();
    this.defaultRouteTableId = Output.createUnknown<String>();
    this.defaultSecurityGroupId = Output.createUnknown<String>();
    this.dhcpOptionsId = Output.createUnknown<String>();
    this.enableDnsHostnames = Output.createUnknown<bool?>();
    this.enableDnsSupport = Output.createUnknown<bool?>();
    this.enableNetworkAddressUsageMetrics = Output.createUnknown<bool>();
    this.existingDefaultVpc = Output.createUnknown<bool>();
    this.forceDestroy = Output.createUnknown<bool?>();
    this.instanceTenancy = Output.createUnknown<String>();
    this.ipv6AssociationId = Output.createUnknown<String>();
    this.ipv6CidrBlock = Output.createUnknown<String>();
    this.ipv6CidrBlockNetworkBorderGroup = Output.createUnknown<String>();
    this.ipv6IpamPoolId = Output.createUnknown<String?>();
    this.ipv6NetmaskLength = Output.createUnknown<int?>();
    this.mainRouteTableId = Output.createUnknown<String>();
    this.ownerId = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
