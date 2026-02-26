import 'package:pulumi/pulumi.dart';
import 'default_subnet_args.dart';

/// Provides a resource to manage a [default subnet](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/default-vpc.html#default-vpc-basics) in the current region.
///
/// **This is an advanced resource** and has special caveats to be aware of when using it. Please read this document in its entirety before using this resource.
///
/// The <span pulumi-lang-nodejs="`aws.ec2.DefaultSubnet`" pulumi-lang-dotnet="`aws.ec2.DefaultSubnet`" pulumi-lang-go="`ec2.DefaultSubnet`" pulumi-lang-python="`ec2.DefaultSubnet`" pulumi-lang-yaml="`aws.ec2.DefaultSubnet`" pulumi-lang-java="`aws.ec2.DefaultSubnet`">`aws.ec2.DefaultSubnet`</span> resource behaves differently from normal resources in that if a default subnet exists in the specified Availability Zone, this provider does not _create_ this resource, but instead "adopts" it into management.
/// If no default subnet exists, this provider creates a new default subnet.
/// By default, `pulumi destroy` does not delete the default subnet but does remove the resource from the state.
/// Set the <span pulumi-lang-nodejs="`forceDestroy`" pulumi-lang-dotnet="`ForceDestroy`" pulumi-lang-go="`forceDestroy`" pulumi-lang-python="`force_destroy`" pulumi-lang-yaml="`forceDestroy`" pulumi-lang-java="`forceDestroy`">`force_destroy`</span> argument to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> to delete the default subnet.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const defaultAz1 = new aws.ec2.DefaultSubnet("default_az1", {
/// availabilityZone: "us-west-2a",
/// tags: {
/// Name: "Default subnet for us-west-2a",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default_az1 = aws.ec2.DefaultSubnet("default_az1",
/// availability_zone="us-west-2a",
/// tags={
/// "Name": "Default subnet for us-west-2a",
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
/// var defaultAz1 = new Aws.Ec2.DefaultSubnet("default_az1", new()
/// {
/// AvailabilityZone = "us-west-2a",
/// Tags =
/// {
/// { "Name", "Default subnet for us-west-2a" },
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
/// _, err := ec2.NewDefaultSubnet(ctx, "default_az1", &ec2.DefaultSubnetArgs{
/// AvailabilityZone: pulumi.String("us-west-2a"),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("Default subnet for us-west-2a"),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var defaultAz1 = new DefaultSubnet("defaultAz1", DefaultSubnetArgs.builder()
/// .availabilityZone("us-west-2a")
/// .tags(Map.of("Name", "Default subnet for us-west-2a"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// defaultAz1:
/// type: aws:ec2:DefaultSubnet
/// name: default_az1
/// properties:
/// availabilityZone: us-west-2a
/// tags:
/// Name: Default subnet for us-west-2a
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import subnets using the subnet <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/defaultSubnet:DefaultSubnet public_subnet subnet-9d4a7b6c
/// ```
class DefaultSubnet extends CustomResource {
  late final Output<String> arn;
  late final Output<bool?> assignIpv6AddressOnCreation;

  /// is required
  /// * The <span pulumi-lang-nodejs="`availabilityZoneId`" pulumi-lang-dotnet="`AvailabilityZoneId`" pulumi-lang-go="`availabilityZoneId`" pulumi-lang-python="`availability_zone_id`" pulumi-lang-yaml="`availabilityZoneId`" pulumi-lang-java="`availabilityZoneId`">`availability_zone_id`</span>, <span pulumi-lang-nodejs="`cidrBlock`" pulumi-lang-dotnet="`CidrBlock`" pulumi-lang-go="`cidrBlock`" pulumi-lang-python="`cidr_block`" pulumi-lang-yaml="`cidrBlock`" pulumi-lang-java="`cidrBlock`">`cidr_block`</span> and <span pulumi-lang-nodejs="`vpcId`" pulumi-lang-dotnet="`VpcId`" pulumi-lang-go="`vpcId`" pulumi-lang-python="`vpc_id`" pulumi-lang-yaml="`vpcId`" pulumi-lang-java="`vpcId`">`vpc_id`</span> arguments become computed attributes
  /// * The default value for <span pulumi-lang-nodejs="`mapPublicIpOnLaunch`" pulumi-lang-dotnet="`MapPublicIpOnLaunch`" pulumi-lang-go="`mapPublicIpOnLaunch`" pulumi-lang-python="`map_public_ip_on_launch`" pulumi-lang-yaml="`mapPublicIpOnLaunch`" pulumi-lang-java="`mapPublicIpOnLaunch`">`map_public_ip_on_launch`</span> is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>
  ///
  /// This resource supports the following additional arguments:
  late final Output<String> availabilityZone;

  /// The AZ ID of the subnet
  late final Output<String> availabilityZoneId;

  /// The IPv4 CIDR block assigned to the subnet
  late final Output<String> cidrBlock;
  late final Output<String?> customerOwnedIpv4Pool;
  late final Output<bool?> enableDns64;
  late final Output<int> enableLniAtDeviceIndex;
  late final Output<bool?> enableResourceNameDnsARecordOnLaunch;
  late final Output<bool?> enableResourceNameDnsAaaaRecordOnLaunch;
  late final Output<bool> existingDefaultSubnet;

  /// Whether destroying the resource deletes the default subnet. Default: <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>
  late final Output<bool?> forceDestroy;
  late final Output<String> ipv6CidrBlock;
  late final Output<String> ipv6CidrBlockAssociationId;
  late final Output<bool?> ipv6Native;
  late final Output<bool?> mapCustomerOwnedIpOnLaunch;
  late final Output<bool?> mapPublicIpOnLaunch;
  late final Output<String> outpostArn;
  late final Output<String> ownerId;
  late final Output<String> privateDnsHostnameTypeOnLaunch;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
  late final Output<String> region;
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// The ID of the VPC the subnet is in
  late final Output<String> vpcId;

  DefaultSubnet(
    String name, {
    DefaultSubnetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/defaultSubnet:DefaultSubnet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
