import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_subnet_args.dart';

/// Provides a resource to manage a [default subnet](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/default-vpc.html#default-vpc-basics) in the current region.
///
/// **This is an advanced resource** and has special caveats to be aware of when using it. Please read this document in its entirety before using this resource.
///
/// The `aws.ec2.DefaultSubnet` resource behaves differently from normal resources in that if a default subnet exists in the specified Availability Zone, this provider does not _create_ this resource, but instead "adopts" it into management.
/// If no default subnet exists, this provider creates a new default subnet.
/// By default, `pulumi destroy` does not delete the default subnet but does remove the resource from the state.
/// Set the `force_destroy` argument to `true` to delete the default subnet.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const defaultAz1 = new aws.ec2.DefaultSubnet("default_az1", {
///     availabilityZone: "us-west-2a",
///     tags: {
///         Name: "Default subnet for us-west-2a",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default_az1 = aws.ec2.DefaultSubnet("default_az1",
///     availability_zone="us-west-2a",
///     tags={
///         "Name": "Default subnet for us-west-2a",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultAz1 = new Aws.Ec2.DefaultSubnet("default_az1", new()
///     {
///         AvailabilityZone = "us-west-2a",
///         Tags =
///         {
///             { "Name", "Default subnet for us-west-2a" },
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
/// 		_, err := ec2.NewDefaultSubnet(ctx, "default_az1", &ec2.DefaultSubnetArgs{
/// 			AvailabilityZone: pulumi.String("us-west-2a"),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("Default subnet for us-west-2a"),
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
/// import com.pulumi.aws.ec2.DefaultSubnet;
/// import com.pulumi.aws.ec2.DefaultSubnetArgs;
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
///         var defaultAz1 = new DefaultSubnet("defaultAz1", DefaultSubnetArgs.builder()
///             .availabilityZone("us-west-2a")
///             .tags(Map.of("Name", "Default subnet for us-west-2a"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultAz1:
///     type: aws:ec2:DefaultSubnet
///     name: default_az1
///     properties:
///       availabilityZone: us-west-2a
///       tags:
///         Name: Default subnet for us-west-2a
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import subnets using the subnet `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/defaultSubnet:DefaultSubnet public_subnet subnet-9d4a7b6c
/// ```
class DefaultSubnet extends pulumi.CustomResource {
  late final pulumi.Output<String> arn;
  late final pulumi.Output<bool?> assignIpv6AddressOnCreation;

  /// is required
  /// * The `availability_zone_id`, `cidr_block` and `vpc_id` arguments become computed attributes
  /// * The default value for `map_public_ip_on_launch` is `true`
  ///
  /// This resource supports the following additional arguments:
  late final pulumi.Output<String> availabilityZone;

  /// The AZ ID of the subnet
  late final pulumi.Output<String> availabilityZoneId;

  /// The IPv4 CIDR block assigned to the subnet
  late final pulumi.Output<String> cidrBlock;
  late final pulumi.Output<String?> customerOwnedIpv4Pool;
  late final pulumi.Output<bool?> enableDns64;
  late final pulumi.Output<int> enableLniAtDeviceIndex;
  late final pulumi.Output<bool?> enableResourceNameDnsARecordOnLaunch;
  late final pulumi.Output<bool?> enableResourceNameDnsAaaaRecordOnLaunch;
  late final pulumi.Output<bool> existingDefaultSubnet;

  /// Whether destroying the resource deletes the default subnet. Default: `false`
  late final pulumi.Output<bool?> forceDestroy;
  late final pulumi.Output<String> ipv6CidrBlock;
  late final pulumi.Output<String> ipv6CidrBlockAssociationId;
  late final pulumi.Output<bool?> ipv6Native;
  late final pulumi.Output<bool?> mapCustomerOwnedIpOnLaunch;
  late final pulumi.Output<bool?> mapPublicIpOnLaunch;
  late final pulumi.Output<String> outpostArn;
  late final pulumi.Output<String> ownerId;
  late final pulumi.Output<String> privateDnsHostnameTypeOnLaunch;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
  late final pulumi.Output<String> region;
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The ID of the VPC the subnet is in
  late final pulumi.Output<String> vpcId;

  /// Creates a new [DefaultSubnet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DefaultSubnet]. {@macro pulumi_ec2_default_subnet_default_subnet_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DefaultSubnet(
    String name, {
    DefaultSubnetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/defaultSubnet:DefaultSubnet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.assignIpv6AddressOnCreation =
        registerOutput<bool?>('assignIpv6AddressOnCreation');
    this.availabilityZone = registerOutput<String>('availabilityZone');
    this.availabilityZoneId = registerOutput<String>('availabilityZoneId');
    this.cidrBlock = registerOutput<String>('cidrBlock');
    this.customerOwnedIpv4Pool =
        registerOutput<String?>('customerOwnedIpv4Pool');
    this.enableDns64 = registerOutput<bool?>('enableDns64');
    this.enableLniAtDeviceIndex = registerOutput<int>('enableLniAtDeviceIndex');
    this.enableResourceNameDnsARecordOnLaunch =
        registerOutput<bool?>('enableResourceNameDnsARecordOnLaunch');
    this.enableResourceNameDnsAaaaRecordOnLaunch =
        registerOutput<bool?>('enableResourceNameDnsAaaaRecordOnLaunch');
    this.existingDefaultSubnet = registerOutput<bool>('existingDefaultSubnet');
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.ipv6CidrBlock = registerOutput<String>('ipv6CidrBlock');
    this.ipv6CidrBlockAssociationId =
        registerOutput<String>('ipv6CidrBlockAssociationId');
    this.ipv6Native = registerOutput<bool?>('ipv6Native');
    this.mapCustomerOwnedIpOnLaunch =
        registerOutput<bool?>('mapCustomerOwnedIpOnLaunch');
    this.mapPublicIpOnLaunch = registerOutput<bool?>('mapPublicIpOnLaunch');
    this.outpostArn = registerOutput<String>('outpostArn');
    this.ownerId = registerOutput<String>('ownerId');
    this.privateDnsHostnameTypeOnLaunch =
        registerOutput<String>('privateDnsHostnameTypeOnLaunch');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
