import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_vpc_args.dart';

/// Provides a resource to manage the [default AWS VPC](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/default-vpc.html)
/// in the current AWS Region.
///
/// If you created your AWS account after 2013-12-04 you have a default VPC in each AWS Region.
///
/// **This is an advanced resource** and has special caveats to be aware of when using it. Please read this document in its entirety before using this resource.
///
/// The `aws.ec2.DefaultVpc` resource behaves differently from normal resources in that if a default VPC exists, this provider does not _create_ this resource, but instead "adopts" it into management.
/// If no default VPC exists, the provider creates a new default VPC, which leads to the implicit creation of [other resources](https://docs.aws.amazon.com/vpc/latest/userguide/default-vpc.html#default-vpc-components).
/// By default, `pulumi destroy` does not delete the default VPC but does remove the resource from the state.
/// Set the `force_destroy` argument to `true` to delete the default VPC.
///
/// ## Example Usage
///
/// Basic usage with tags:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.ec2.DefaultVpc("default", {tags: {
///     Name: "Default VPC",
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.ec2.DefaultVpc("default", tags={
///     "Name": "Default VPC",
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
///     var @default = new Aws.Ec2.DefaultVpc("default", new()
///     {
///         Tags =
///         {
///             { "Name", "Default VPC" },
///         },
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
/// 		_, err := ec2.NewDefaultVpc(ctx, "default", &ec2.DefaultVpcArgs{
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("Default VPC"),
/// 			},
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var default_ = new DefaultVpc("default", DefaultVpcArgs.builder()
///             .tags(Map.of("Name", "Default VPC"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: aws:ec2:DefaultVpc
///     properties:
///       tags:
///         Name: Default VPC
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Default VPCs using the VPC `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/defaultVpc:DefaultVpc default vpc-a01106c2
/// ```
class DefaultVpc extends pulumi.CustomResource {
  late final pulumi.Output<String> arn;
  late final pulumi.Output<bool?> assignGeneratedIpv6CidrBlock;

  /// The primary IPv4 CIDR block for the VPC
  late final pulumi.Output<String> cidrBlock;
  late final pulumi.Output<String> defaultNetworkAclId;
  late final pulumi.Output<String> defaultRouteTableId;
  late final pulumi.Output<String> defaultSecurityGroupId;
  late final pulumi.Output<String> dhcpOptionsId;
  late final pulumi.Output<bool?> enableDnsHostnames;
  late final pulumi.Output<bool?> enableDnsSupport;
  late final pulumi.Output<bool> enableNetworkAddressUsageMetrics;
  late final pulumi.Output<bool> existingDefaultVpc;

  /// Whether destroying the resource deletes the default VPC. Default: `false`
  late final pulumi.Output<bool?> forceDestroy;

  /// The allowed tenancy of instances launched into the VPC
  late final pulumi.Output<String> instanceTenancy;
  late final pulumi.Output<String> ipv6AssociationId;
  late final pulumi.Output<String> ipv6CidrBlock;
  late final pulumi.Output<String> ipv6CidrBlockNetworkBorderGroup;
  late final pulumi.Output<String?> ipv6IpamPoolId;
  late final pulumi.Output<int?> ipv6NetmaskLength;
  late final pulumi.Output<String> mainRouteTableId;
  late final pulumi.Output<String> ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
  late final pulumi.Output<String> region;
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [DefaultVpc].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DefaultVpc]. {@macro pulumi_ec2_default_vpc_default_vpc_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DefaultVpc(
    String name, {
    DefaultVpcArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/defaultVpc:DefaultVpc',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.assignGeneratedIpv6CidrBlock =
        registerOutput<bool?>('assignGeneratedIpv6CidrBlock');
    this.cidrBlock = registerOutput<String>('cidrBlock');
    this.defaultNetworkAclId = registerOutput<String>('defaultNetworkAclId');
    this.defaultRouteTableId = registerOutput<String>('defaultRouteTableId');
    this.defaultSecurityGroupId =
        registerOutput<String>('defaultSecurityGroupId');
    this.dhcpOptionsId = registerOutput<String>('dhcpOptionsId');
    this.enableDnsHostnames = registerOutput<bool?>('enableDnsHostnames');
    this.enableDnsSupport = registerOutput<bool?>('enableDnsSupport');
    this.enableNetworkAddressUsageMetrics =
        registerOutput<bool>('enableNetworkAddressUsageMetrics');
    this.existingDefaultVpc = registerOutput<bool>('existingDefaultVpc');
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.instanceTenancy = registerOutput<String>('instanceTenancy');
    this.ipv6AssociationId = registerOutput<String>('ipv6AssociationId');
    this.ipv6CidrBlock = registerOutput<String>('ipv6CidrBlock');
    this.ipv6CidrBlockNetworkBorderGroup =
        registerOutput<String>('ipv6CidrBlockNetworkBorderGroup');
    this.ipv6IpamPoolId = registerOutput<String?>('ipv6IpamPoolId');
    this.ipv6NetmaskLength = registerOutput<int?>('ipv6NetmaskLength');
    this.mainRouteTableId = registerOutput<String>('mainRouteTableId');
    this.ownerId = registerOutput<String>('ownerId');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
