import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_region_args.dart';
import 'service_region_state.dart';
import 'service_region_vpc_settings.dart';

/// Manages a replicated Region and directory for Multi-Region replication.
/// Multi-Region replication is only supported for the Enterprise Edition of AWS Managed Microsoft AD.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = aws.getRegion({});
/// const available = aws.getAvailabilityZones({
///     state: "available",
///     filters: [{
///         name: "opt-in-status",
///         values: ["opt-in-not-required"],
///     }],
/// });
/// const exampleVpc = new aws.ec2.Vpc("example", {
///     cidrBlock: "10.0.0.0/16",
///     tags: {
///         Name: "Primary",
///     },
/// });
/// const exampleSubnet: aws.ec2.Subnet[] = [];
/// for (let range = 0; range < 2; range++) {
///     exampleSubnet.push(new aws.ec2.Subnet(`example-${range}`, {
///         vpcId: exampleVpc.id,
///         availabilityZone: available.then(available => available.names[range]),
///         cidrBlock: std.cidrsubnetOutput({
///             input: exampleVpc.cidrBlock,
///             newbits: 8,
///             netnum: range,
///         }).result,
///         tags: {
///             Name: "Primary",
///         },
///     }));
/// }
/// const exampleDirectory = new aws.directoryservice.Directory("example", {
///     name: "example.com",
///     password: "SuperSecretPassw0rd",
///     type: "MicrosoftAD",
///     vpcSettings: {
///         vpcId: exampleVpc.id,
///         subnetIds: exampleSubnet.map(__item => __item.id),
///     },
/// });
/// const available_secondary = aws.getAvailabilityZones({
///     state: "available",
///     filters: [{
///         name: "opt-in-status",
///         values: ["opt-in-not-required"],
///     }],
/// });
/// const example_secondary = new aws.ec2.Vpc("example-secondary", {
///     cidrBlock: "10.1.0.0/16",
///     tags: {
///         Name: "Secondary",
///     },
/// });
/// const example_secondarySubnet: aws.ec2.Subnet[] = [];
/// for (let range = 0; range < 2; range++) {
///     example_secondarySubnet.push(new aws.ec2.Subnet(`example-secondary-${range}`, {
///         vpcId: example_secondary.id,
///         availabilityZone: available_secondary.then(available_secondary => available_secondary.names[range]),
///         cidrBlock: std.cidrsubnetOutput({
///             input: example_secondary.cidrBlock,
///             newbits: 8,
///             netnum: range,
///         }).result,
///         tags: {
///             Name: "Secondary",
///         },
///     }));
/// }
/// const exampleServiceRegion = new aws.directoryservice.ServiceRegion("example", {
///     directoryId: exampleDirectory.id,
///     regionName: example.then(example => example.region),
///     vpcSettings: {
///         vpcId: example_secondary.id,
///         subnetIds: example_secondarySubnet.map(__item => __item.id),
///     },
///     tags: {
///         Name: "Secondary",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// from typing import Any
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.get_region()
/// available = aws.get_availability_zones(state="available",
///     filters=[{
///         "name": "opt-in-status",
///         "values": ["opt-in-not-required"],
///     }])
/// example_vpc = aws.ec2.Vpc("example",
///     cidr_block="10.0.0.0/16",
///     tags={
///         "Name": "Primary",
///     })
/// example_subnet: list[aws.ec2.Subnet] = []
/// for example_subnet_range in [{"value": i} for i in range(0, 2)]:
///     example_subnet.append(aws.ec2.Subnet(f"example-{example_subnet_range['value']}",
///         vpc_id=example_vpc.id,
///         availability_zone=available.names[example_subnet_range["value"]],
///         cidr_block=std.cidrsubnet_output(input=example_vpc.cidr_block,
///             newbits=8,
///             netnum=example_subnet_range["value"]).result,
///         tags={
///             "Name": "Primary",
///         }))
/// example_directory = aws.directoryservice.Directory("example",
///     name="example.com",
///     password="SuperSecretPassw0rd",
///     type="MicrosoftAD",
///     vpc_settings={
///         "vpc_id": example_vpc.id,
///         "subnet_ids": [__item.id for __item in example_subnet],
///     })
/// available_secondary = aws.get_availability_zones(state="available",
///     filters=[{
///         "name": "opt-in-status",
///         "values": ["opt-in-not-required"],
///     }])
/// example_secondary = aws.ec2.Vpc("example-secondary",
///     cidr_block="10.1.0.0/16",
///     tags={
///         "Name": "Secondary",
///     })
/// example_secondary_subnet: list[aws.ec2.Subnet] = []
/// for example_secondary_subnet_range in [{"value": i} for i in range(0, 2)]:
///     example_secondary_subnet.append(aws.ec2.Subnet(f"example-secondary-{example_secondary_subnet_range['value']}",
///         vpc_id=example_secondary.id,
///         availability_zone=available_secondary.names[example_secondary_subnet_range["value"]],
///         cidr_block=std.cidrsubnet_output(input=example_secondary.cidr_block,
///             newbits=8,
///             netnum=example_secondary_subnet_range["value"]).result,
///         tags={
///             "Name": "Secondary",
///         }))
/// example_service_region = aws.directoryservice.ServiceRegion("example",
///     directory_id=example_directory.id,
///     region_name=example.region,
///     vpc_settings={
///         "vpc_id": example_secondary.id,
///         "subnet_ids": [__item.id for __item in example_secondary_subnet],
///     },
///     tags={
///         "Name": "Secondary",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.GetRegion.Invoke();
///
///     var available = Aws.GetAvailabilityZones.Invoke(new()
///     {
///         State = "available",
///         Filters = new[]
///         {
///             new Aws.Inputs.GetAvailabilityZonesFilterInputArgs
///             {
///                 Name = "opt-in-status",
///                 Values = new[]
///                 {
///                     "opt-in-not-required",
///                 },
///             },
///         },
///     });
///
///     var exampleVpc = new Aws.Ec2.Vpc("example", new()
///     {
///         CidrBlock = "10.0.0.0/16",
///         Tags =
///         {
///             { "Name", "Primary" },
///         },
///     });
///
///     var exampleSubnet = new List<Aws.Ec2.Subnet>();
///     for (var rangeIndex = 0; rangeIndex < 2; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         exampleSubnet.Add(new Aws.Ec2.Subnet($"example-{range.Value}", new()
///         {
///             VpcId = exampleVpc.Id,
///             AvailabilityZone = available.Apply(getAvailabilityZonesResult => getAvailabilityZonesResult.Names)[range.Value],
///             CidrBlock = Std.Cidrsubnet.Invoke(new()
///             {
///                 Input = exampleVpc.CidrBlock,
///                 Newbits = 8,
///                 Netnum = range.Value,
///             }).Apply(invoke => invoke.Result),
///             Tags =
///             {
///                 { "Name", "Primary" },
///             },
///         }));
///     }
///     var exampleDirectory = new Aws.DirectoryService.Directory("example", new()
///     {
///         Name = "example.com",
///         Password = "SuperSecretPassw0rd",
///         Type = "MicrosoftAD",
///         VpcSettings = new Aws.DirectoryService.Inputs.DirectoryVpcSettingsArgs
///         {
///             VpcId = exampleVpc.Id,
///             SubnetIds = exampleSubnet.Select(__item => __item.Id).ToList(),
///         },
///     });
///
///     var available_secondary = Aws.GetAvailabilityZones.Invoke(new()
///     {
///         State = "available",
///         Filters = new[]
///         {
///             new Aws.Inputs.GetAvailabilityZonesFilterInputArgs
///             {
///                 Name = "opt-in-status",
///                 Values = new[]
///                 {
///                     "opt-in-not-required",
///                 },
///             },
///         },
///     });
///
///     var example_secondary = new Aws.Ec2.Vpc("example-secondary", new()
///     {
///         CidrBlock = "10.1.0.0/16",
///         Tags =
///         {
///             { "Name", "Secondary" },
///         },
///     });
///
///     var example_secondarySubnet = new List<Aws.Ec2.Subnet>();
///     for (var rangeIndex = 0; rangeIndex < 2; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         example_secondarySubnet.Add(new Aws.Ec2.Subnet($"example-secondary-{range.Value}", new()
///         {
///             VpcId = example_secondary.Id,
///             AvailabilityZone = available_secondary.Apply(available_secondary => available_secondary.Apply(getAvailabilityZonesResult => getAvailabilityZonesResult.Names)[range.Value]),
///             CidrBlock = Std.Cidrsubnet.Invoke(new()
///             {
///                 Input = example_secondary.CidrBlock,
///                 Newbits = 8,
///                 Netnum = range.Value,
///             }).Apply(invoke => invoke.Result),
///             Tags =
///             {
///                 { "Name", "Secondary" },
///             },
///         }));
///     }
///     var exampleServiceRegion = new Aws.DirectoryService.ServiceRegion("example", new()
///     {
///         DirectoryId = exampleDirectory.Id,
///         RegionName = example.Apply(getRegionResult => getRegionResult.Region),
///         VpcSettings = new Aws.DirectoryService.Inputs.ServiceRegionVpcSettingsArgs
///         {
///             VpcId = example_secondary.Id,
///             SubnetIds = example_secondarySubnet.Select(__item => __item.Id).ToList(),
///         },
///         Tags =
///         {
///             { "Name", "Secondary" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/directoryservice"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := aws.GetRegion(ctx, &aws.GetRegionArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// available, err := aws.GetAvailabilityZones(ctx, &aws.GetAvailabilityZonesArgs{
/// State: pulumi.StringRef("available"),
/// Filters: []aws.GetAvailabilityZonesFilter{
/// {
/// Name: "opt-in-status",
/// Values: []string{
/// "opt-in-not-required",
/// },
/// },
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// exampleVpc, err := ec2.NewVpc(ctx, "example", &ec2.VpcArgs{
/// CidrBlock: pulumi.String("10.0.0.0/16"),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("Primary"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// var exampleSubnet []*ec2.Subnet
/// for index := 0; index < 2; index++ {
///     key0 := index
///     val0 := index
/// __res, err := ec2.NewSubnet(ctx, fmt.Sprintf("example-%v", key0), &ec2.SubnetArgs{
/// VpcId: exampleVpc.ID().ToIDOutput().ToStringOutput(),
/// AvailabilityZone: pulumi.String(available.Names[val0]),
/// CidrBlock: std.CidrsubnetOutput(ctx, std.CidrsubnetOutputArgs{
/// Input: exampleVpc.CidrBlock,
/// Newbits: pulumi.Int(8),
/// Netnum: pulumi.Int(val0),
/// }, nil).Result(),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("Primary"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// exampleSubnet = append(exampleSubnet, __res)
/// }
/// exampleDirectory, err := directoryservice.NewDirectory(ctx, "example", &directoryservice.DirectoryArgs{
/// Name: pulumi.String("example.com"),
/// Password: pulumi.String("SuperSecretPassw0rd"),
/// Type: pulumi.String("MicrosoftAD"),
/// VpcSettings: &directoryservice.DirectoryVpcSettingsArgs{
/// VpcId: exampleVpc.ID().ToIDOutput().ToStringOutput(),
/// SubnetIds: pulumi.StringArray(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:44,17-36)),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// available_secondary, err := aws.GetAvailabilityZones(ctx, &aws.GetAvailabilityZonesArgs{
/// State: pulumi.StringRef("available"),
/// Filters: []aws.GetAvailabilityZonesFilter{
/// {
/// Name: "opt-in-status",
/// Values: []string{
/// "opt-in-not-required",
/// },
/// },
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// example_secondary, err := ec2.NewVpc(ctx, "example-secondary", &ec2.VpcArgs{
/// CidrBlock: pulumi.String("10.1.0.0/16"),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("Secondary"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// var example_secondarySubnet []*ec2.Subnet
/// for index := 0; index < 2; index++ {
///     key0 := index
///     val0 := index
/// __res, err := ec2.NewSubnet(ctx, fmt.Sprintf("example-secondary-%v", key0), &ec2.SubnetArgs{
/// VpcId: example_secondary.ID().ToIDOutput().ToStringOutput(),
/// AvailabilityZone: pulumi.String(available_secondary.Names[val0]),
/// CidrBlock: std.CidrsubnetOutput(ctx, std.CidrsubnetOutputArgs{
/// Input: example_secondary.CidrBlock,
/// Newbits: pulumi.Int(8),
/// Netnum: pulumi.Int(val0),
/// }, nil).Result(),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("Secondary"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// example_secondarySubnet = append(example_secondarySubnet, __res)
/// }
/// _, err = directoryservice.NewServiceRegion(ctx, "example", &directoryservice.ServiceRegionArgs{
/// DirectoryId: exampleDirectory.ID().ToIDOutput().ToStringOutput(),
/// RegionName: pulumi.String(example.Region),
/// VpcSettings: &directoryservice.ServiceRegionVpcSettingsArgs{
/// VpcId: example_secondary.ID().ToIDOutput().ToStringOutput(),
/// SubnetIds: pulumi.StringArray(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:87,17-46)),
/// },
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("Secondary"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// data "aws_getregion" "example" {
/// }
/// data "aws_getavailabilityzones" "available" {
///   state = "available"
///   filters {
///     name   = "opt-in-status"
///     values = ["opt-in-not-required"]
///   }
/// }
/// data "aws_getavailabilityzones" "available-secondary" {
///   state = "available"
///   filters {
///     name   = "opt-in-status"
///     values = ["opt-in-not-required"]
///   }
/// }
///
/// resource "aws_ec2_vpc" "example" {
///   cidr_block = "10.0.0.0/16"
///   tags = {
///     "Name" = "Primary"
///   }
/// }
/// resource "aws_ec2_subnet" "example" {
///   count             = 2
///   vpc_id            = aws_ec2_vpc.example.id
///   availability_zone = data.aws_getavailabilityzones.available.names[count.index]
///   cidr_block        = cidrsubnet(aws_ec2_vpc.example.cidr_block, 8, count.index)
///   tags = {
///     "Name" = "Primary"
///   }
/// }
/// resource "aws_directoryservice_directory" "example" {
///   name     = "example.com"
///   password = "SuperSecretPassw0rd"
///   type     = "MicrosoftAD"
///   vpc_settings = {
///     vpc_id     = aws_ec2_vpc.example.id
///     subnet_ids = aws_ec2_subnet.example[*].id
///   }
/// }
/// resource "aws_ec2_vpc" "example-secondary" {
///   cidr_block = "10.1.0.0/16"
///   tags = {
///     "Name" = "Secondary"
///   }
/// }
/// resource "aws_ec2_subnet" "example-secondary" {
///   count             = 2
///   vpc_id            = aws_ec2_vpc.example-secondary.id
///   availability_zone = data.aws_getavailabilityzones.available-secondary.names[count.index]
///   cidr_block        = cidrsubnet(aws_ec2_vpc.example-secondary.cidr_block, 8, count.index)
///   tags = {
///     "Name" = "Secondary"
///   }
/// }
/// resource "aws_directoryservice_serviceregion" "example" {
///   directory_id = aws_directoryservice_directory.example.id
///   region_name  = data.aws_getregion.example.region
///   vpc_settings = {
///     vpc_id     = aws_ec2_vpc.example-secondary.id
///     subnet_ids = aws_ec2_subnet.example-secondary[*].id
///   }
///   tags = {
///     "Name" = "Secondary"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.inputs.GetAvailabilityZonesArgs;
/// import com.pulumi.aws.inputs.GetAvailabilityZonesFilterArgs;
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.ec2.Subnet;
/// import com.pulumi.aws.ec2.SubnetArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.CidrsubnetArgs;
/// import com.pulumi.aws.directoryservice.Directory;
/// import com.pulumi.aws.directoryservice.DirectoryArgs;
/// import com.pulumi.aws.directoryservice.inputs.DirectoryVpcSettingsArgs;
/// import com.pulumi.aws.directoryservice.ServiceRegion;
/// import com.pulumi.aws.directoryservice.ServiceRegionArgs;
/// import com.pulumi.aws.directoryservice.inputs.ServiceRegionVpcSettingsArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
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
///         final var example = AwsFunctions.getRegion(GetRegionArgs.builder()
///             .build());
///
///         final var available = AwsFunctions.getAvailabilityZones(GetAvailabilityZonesArgs.builder()
///             .state("available")
///             .filters(GetAvailabilityZonesFilterArgs.builder()
///                 .name("opt-in-status")
///                 .values("opt-in-not-required")
///                 .build())
///             .build());
///
///         var exampleVpc = new Vpc("exampleVpc", VpcArgs.builder()
///             .cidrBlock("10.0.0.0/16")
///             .tags(Map.of("Name", "Primary"))
///             .build());
///
///         for (var i = 0; i < 2; i++) {
///             new Subnet("exampleSubnet-" + i, SubnetArgs.builder()
///                 .vpcId(exampleVpc.id())
///                 .availabilityZone(available.names()[range.value()])
///                 .cidrBlock(StdFunctions.cidrsubnet(CidrsubnetArgs.builder()
///                     .input(exampleVpc.cidrBlock())
///                     .newbits(8)
///                     .netnum(range.value())
///                     .build()).applyValue(_invoke -> _invoke.result()))
///                 .tags(Map.of("Name", "Primary"))
///                 .build());
///
///
/// }
///         var exampleDirectory = new Directory("exampleDirectory", DirectoryArgs.builder()
///             .name("example.com")
///             .password("SuperSecretPassw0rd")
///             .type("MicrosoftAD")
///             .vpcSettings(DirectoryVpcSettingsArgs.builder()
///                 .vpcId(exampleVpc.id())
///                 .subnetIds(exampleSubnet.stream().map(element -> element.id()).collect(toList()))
///                 .build())
///             .build());
///
///         final var available-secondary = AwsFunctions.getAvailabilityZones(GetAvailabilityZonesArgs.builder()
///             .state("available")
///             .filters(GetAvailabilityZonesFilterArgs.builder()
///                 .name("opt-in-status")
///                 .values("opt-in-not-required")
///                 .build())
///             .build());
///
///         var example_secondary = new Vpc("example-secondary", VpcArgs.builder()
///             .cidrBlock("10.1.0.0/16")
///             .tags(Map.of("Name", "Secondary"))
///             .build());
///
///         for (var i = 0; i < 2; i++) {
///             new Subnet("example-secondarySubnet-" + i, SubnetArgs.builder()
///                 .vpcId(example_secondary.id())
///                 .availabilityZone(available_secondary.names()[range.value()])
///                 .cidrBlock(StdFunctions.cidrsubnet(CidrsubnetArgs.builder()
///                     .input(example_secondary.cidrBlock())
///                     .newbits(8)
///                     .netnum(range.value())
///                     .build()).applyValue(_invoke -> _invoke.result()))
///                 .tags(Map.of("Name", "Secondary"))
///                 .build());
///
///
/// }
///         var exampleServiceRegion = new ServiceRegion("exampleServiceRegion", ServiceRegionArgs.builder()
///             .directoryId(exampleDirectory.id())
///             .regionName(example.region())
///             .vpcSettings(ServiceRegionVpcSettingsArgs.builder()
///                 .vpcId(example_secondary.id())
///                 .subnetIds(example_secondarySubnet.stream().map(element -> element.id()).collect(toList()))
///                 .build())
///             .tags(Map.of("Name", "Secondary"))
///             .build());
///
///     }
/// }
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Replicated Regions using directory ID,Region name. For example:
///
/// ```sh
/// $ pulumi import aws:directoryservice/serviceRegion:ServiceRegion example d-9267651497,us-east-2
/// ```
class ServiceRegion extends pulumi.CustomResource {
  /// The number of domain controllers desired in the replicated directory. Minimum value of `2`.
  late final pulumi.Output<int> desiredNumberOfDomainControllers;
  /// The identifier of the directory to which you want to add Region replication.
  late final pulumi.Output<String> directoryId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The name of the Region where you want to add domain controllers for replication.
  late final pulumi.Output<String> regionName;
  /// Map of tags to assign to this resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// VPC information in the replicated Region. Detailed below.
  late final pulumi.Output<ServiceRegionVpcSettings> vpcSettings;

  /// Creates a new [ServiceRegion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceRegion]. {@macro pulumi_directoryservice_service_region_service_region_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceRegion(
    String name, {
    ServiceRegionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directoryservice/serviceRegion:ServiceRegion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    desiredNumberOfDomainControllers = registerOutput<int>('desiredNumberOfDomainControllers');
    directoryId = registerOutput<String>('directoryId');
    region = registerOutput<String>('region');
    regionName = registerOutput<String>('regionName');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    vpcSettings = registerOutput<ServiceRegionVpcSettings>('vpcSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceRegionVpcSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [ServiceRegion] resource's state with the given [name] and [id].
  static ServiceRegion get(
    String name,
    pulumi.Input<String> id, {
    ServiceRegionState? state,
  }) {
    return ServiceRegion._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServiceRegion._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directoryservice/serviceRegion:ServiceRegion',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    desiredNumberOfDomainControllers = registerOutput<int>('desiredNumberOfDomainControllers');
    directoryId = registerOutput<String>('directoryId');
    region = registerOutput<String>('region');
    regionName = registerOutput<String>('regionName');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    vpcSettings = registerOutput<ServiceRegionVpcSettings>('vpcSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceRegionVpcSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
