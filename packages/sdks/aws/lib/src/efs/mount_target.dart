import 'package:pulumi/pulumi.dart' as pulumi;
import 'mount_target_args.dart';
import 'mount_target_state.dart';

/// Provides an Elastic File System (EFS) mount target.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleVpc = new aws.ec2.Vpc("example", {cidrBlock: "10.0.0.0/16"});
/// const exampleSubnet = new aws.ec2.Subnet("example", {
///     vpcId: exampleVpc.id,
///     availabilityZone: "us-west-2a",
///     cidrBlock: "10.0.1.0/24",
/// });
/// const example = new aws.efs.MountTarget("example", {
///     fileSystemId: exampleAwsEfsFileSystem.id,
///     subnetId: exampleSubnet.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_vpc = aws.ec2.Vpc("example", cidr_block="10.0.0.0/16")
/// example_subnet = aws.ec2.Subnet("example",
///     vpc_id=example_vpc.id,
///     availability_zone="us-west-2a",
///     cidr_block="10.0.1.0/24")
/// example = aws.efs.MountTarget("example",
///     file_system_id=example_aws_efs_file_system["id"],
///     subnet_id=example_subnet.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleVpc = new Aws.Ec2.Vpc("example", new()
///     {
///         CidrBlock = "10.0.0.0/16",
///     });
///
///     var exampleSubnet = new Aws.Ec2.Subnet("example", new()
///     {
///         VpcId = exampleVpc.Id,
///         AvailabilityZone = "us-west-2a",
///         CidrBlock = "10.0.1.0/24",
///     });
///
///     var example = new Aws.Efs.MountTarget("example", new()
///     {
///         FileSystemId = exampleAwsEfsFileSystem.Id,
///         SubnetId = exampleSubnet.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/efs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleVpc, err := ec2.NewVpc(ctx, "example", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.0.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := ec2.NewSubnet(ctx, "example", &ec2.SubnetArgs{
/// 			VpcId:            exampleVpc.ID().ToIDOutput().ToStringOutput(),
/// 			AvailabilityZone: pulumi.String("us-west-2a"),
/// 			CidrBlock:        pulumi.String("10.0.1.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = efs.NewMountTarget(ctx, "example", &efs.MountTargetArgs{
/// 			FileSystemId: pulumi.Any(exampleAwsEfsFileSystem.Id),
/// 			SubnetId:     exampleSubnet.ID().ToIDOutput().ToStringOutput(),
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
/// resource "aws_efs_mounttarget" "example" {
///   file_system_id = exampleAwsEfsFileSystem.id
///   subnet_id      = aws_ec2_subnet.example.id
/// }
/// resource "aws_ec2_vpc" "example" {
///   cidr_block = "10.0.0.0/16"
/// }
/// resource "aws_ec2_subnet" "example" {
///   vpc_id            = aws_ec2_vpc.example.id
///   availability_zone = "us-west-2a"
///   cidr_block        = "10.0.1.0/24"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.ec2.Subnet;
/// import com.pulumi.aws.ec2.SubnetArgs;
/// import com.pulumi.aws.efs.MountTarget;
/// import com.pulumi.aws.efs.MountTargetArgs;
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
///         var exampleVpc = new Vpc("exampleVpc", VpcArgs.builder()
///             .cidrBlock("10.0.0.0/16")
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .vpcId(exampleVpc.id())
///             .availabilityZone("us-west-2a")
///             .cidrBlock("10.0.1.0/24")
///             .build());
///
///         var example = new MountTarget("example", MountTargetArgs.builder()
///             .fileSystemId(exampleAwsEfsFileSystem.id())
///             .subnetId(exampleSubnet.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:efs:MountTarget
///     properties:
///       fileSystemId: ${exampleAwsEfsFileSystem.id}
///       subnetId: ${exampleSubnet.id}
///   exampleVpc:
///     type: aws:ec2:Vpc
///     name: example
///     properties:
///       cidrBlock: 10.0.0.0/16
///   exampleSubnet:
///     type: aws:ec2:Subnet
///     name: example
///     properties:
///       vpcId: ${exampleVpc.id}
///       availabilityZone: us-west-2a
///       cidrBlock: 10.0.1.0/24
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` (String) ID of the mount target.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import the EFS mount targets using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:efs/mountTarget:MountTarget example fsmt-52a643fb
/// ```
class MountTarget extends pulumi.CustomResource {
  /// The unique and consistent identifier of the Availability Zone (AZ) that the mount target resides in.
  late final pulumi.Output<String> availabilityZoneId;
  /// The name of the Availability Zone (AZ) that the mount target resides in.
  late final pulumi.Output<String> availabilityZoneName;
  /// The DNS name for the EFS file system.
  late final pulumi.Output<String> dnsName;
  /// ARN of the file system.
  late final pulumi.Output<String> fileSystemArn;
  /// The ID of the file system for which the mount target is intended.
  late final pulumi.Output<String> fileSystemId;
  /// The address (within the address range of the specified subnet) at
  /// which the file system may be mounted via the mount target.
  late final pulumi.Output<String> ipAddress;
  /// IP address type for the mount target. Valid values are `IPV4_ONLY` (only IPv4 addresses), `IPV6_ONLY` (only IPv6 addresses), and `DUAL_STACK` (dual-stack, both IPv4 and IPv6 addresses). Defaults to `IPV4_ONLY`.
  late final pulumi.Output<String> ipAddressType;
  /// IPv6 address to use. Valid only when `ipAddressType` is set to `IPV6_ONLY` or `DUAL_STACK`.
  late final pulumi.Output<String> ipv6Address;
  /// The DNS name for the given subnet/AZ per [documented convention](http://docs.aws.amazon.com/efs/latest/ug/mounting-fs-mount-cmd-dns-name.html).
  late final pulumi.Output<String> mountTargetDnsName;
  /// The ID of the network interface that Amazon EFS created when it created the mount target.
  late final pulumi.Output<String> networkInterfaceId;
  /// AWS account ID that owns the resource.
  late final pulumi.Output<String> ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A list of up to 5 VPC security group IDs (that must
  /// be for the same VPC as subnet specified) in effect for the mount target.
  late final pulumi.Output<List<String>> securityGroups;
  /// The ID of the subnet to add the mount target in.
  late final pulumi.Output<String> subnetId;

  /// Creates a new [MountTarget].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MountTarget]. {@macro pulumi_efs_mount_target_mount_target_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MountTarget(
    String name, {
    MountTargetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:efs/mountTarget:MountTarget',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.48.0').merge(options),
        ) {
    availabilityZoneId = registerOutput<String>('availabilityZoneId');
    availabilityZoneName = registerOutput<String>('availabilityZoneName');
    dnsName = registerOutput<String>('dnsName');
    fileSystemArn = registerOutput<String>('fileSystemArn');
    fileSystemId = registerOutput<String>('fileSystemId');
    ipAddress = registerOutput<String>('ipAddress');
    ipAddressType = registerOutput<String>('ipAddressType');
    ipv6Address = registerOutput<String>('ipv6Address');
    mountTargetDnsName = registerOutput<String>('mountTargetDnsName');
    networkInterfaceId = registerOutput<String>('networkInterfaceId');
    ownerId = registerOutput<String>('ownerId');
    region = registerOutput<String>('region');
    securityGroups = registerOutput<List<String>>('securityGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    subnetId = registerOutput<String>('subnetId');
  }

  /// Gets an existing [MountTarget] resource's state with the given [name] and [id].
  static MountTarget get(
    String name,
    pulumi.Input<String> id, {
    MountTargetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return MountTarget._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  MountTarget._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:efs/mountTarget:MountTarget',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    availabilityZoneId = registerOutput<String>('availabilityZoneId');
    availabilityZoneName = registerOutput<String>('availabilityZoneName');
    dnsName = registerOutput<String>('dnsName');
    fileSystemArn = registerOutput<String>('fileSystemArn');
    fileSystemId = registerOutput<String>('fileSystemId');
    ipAddress = registerOutput<String>('ipAddress');
    ipAddressType = registerOutput<String>('ipAddressType');
    ipv6Address = registerOutput<String>('ipv6Address');
    mountTargetDnsName = registerOutput<String>('mountTargetDnsName');
    networkInterfaceId = registerOutput<String>('networkInterfaceId');
    ownerId = registerOutput<String>('ownerId');
    region = registerOutput<String>('region');
    securityGroups = registerOutput<List<String>>('securityGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    subnetId = registerOutput<String>('subnetId');
  }

  /// Creates a typed reference to an existing [MountTarget] resource.
  MountTarget.reference(String urn)
    : super(
        'aws:efs/mountTarget:MountTarget',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    availabilityZoneId = registerOutput<String>('availabilityZoneId');
    availabilityZoneName = registerOutput<String>('availabilityZoneName');
    dnsName = registerOutput<String>('dnsName');
    fileSystemArn = registerOutput<String>('fileSystemArn');
    fileSystemId = registerOutput<String>('fileSystemId');
    ipAddress = registerOutput<String>('ipAddress');
    ipAddressType = registerOutput<String>('ipAddressType');
    ipv6Address = registerOutput<String>('ipv6Address');
    mountTargetDnsName = registerOutput<String>('mountTargetDnsName');
    networkInterfaceId = registerOutput<String>('networkInterfaceId');
    ownerId = registerOutput<String>('ownerId');
    region = registerOutput<String>('region');
    securityGroups = registerOutput<List<String>>('securityGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    subnetId = registerOutput<String>('subnetId');
  }
}
