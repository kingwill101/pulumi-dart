import 'package:pulumi/pulumi.dart' as pulumi;
import 'arn_build_args.dart';
import 'arn_parse_args.dart';
import 'arn_parse_result.dart';
import 'get_arn_args.dart';
import 'get_arn_result.dart';
import 'get_availability_zone_args.dart';
import 'get_availability_zone_result.dart';
import 'get_availability_zones_args.dart';
import 'get_availability_zones_result.dart';
import 'get_billing_service_account_args.dart';
import 'get_billing_service_account_result.dart';
import 'get_caller_identity_args.dart';
import 'get_caller_identity_result.dart';
import 'get_default_tags_args.dart';
import 'get_default_tags_result.dart';
import 'get_ip_ranges_args.dart';
import 'get_ip_ranges_result.dart';
import 'get_partition_args.dart';
import 'get_partition_result.dart';
import 'get_region_args.dart';
import 'get_region_result.dart';
import 'get_regions_args.dart';
import 'get_regions_result.dart';
import 'get_service_args.dart';
import 'get_service_principal_args.dart';
import 'get_service_principal_result.dart';
import 'get_service_result.dart';
import 'trim_iam_role_path_args.dart';
import 'user_agent_args.dart';

/// Builds an ARN from its constituent parts.
///
/// See the [AWS documentation](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html) for additional information on ARNs.
///
/// ## Signature
///
/// ```text
/// arn_build(partition string, service string, region string, account_id string, resource string) string
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_arn_build_arn_build_args_doc}
/// [partition] Value for the `partition` invoke input.
/// [service] Value for the `service` invoke input.
/// [region] Value for the `region` invoke input.
/// [accountId] Value for the `accountId` invoke input.
/// [resource] Value for the `resource` invoke input.
/// [options] Invoke options controlling this call.
Future<String> arnBuild(
  pulumi.Input<String> partition,
  pulumi.Input<String> service,
  pulumi.Input<String> region,
  pulumi.Input<String> accountId,
  pulumi.Input<String> resource,
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final value = await deployment.invokeSingle<dynamic>(
    'aws:index/arnBuild:arnBuild',
    ArnBuildArgs(partition: partition, service: service, region: region, accountId: accountId, resource: resource, ).toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return value as String;
}

pulumi.Output<String> arnBuildOutput(
  pulumi.Input<String> partition,
  pulumi.Input<String> service,
  pulumi.Input<String> region,
  pulumi.Input<String> accountId,
  pulumi.Input<String> resource,
  {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeSingleOutput<dynamic>(
    'aws:index/arnBuild:arnBuild',
    pulumi.Input.mapToInputs(ArnBuildArgs(partition: partition, service: service, region: region, accountId: accountId, resource: resource, ).toMap()),
    options: options,
  ).apply<String>((value) => value as String);
}

/// Parses an ARN into its constituent parts.
///
/// See the [AWS documentation](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html) for additional information on ARNs.
///
/// ## Signature
///
/// ```text
/// arn_parse(arn string) object
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_arn_parse_arn_parse_args_doc}
/// [arn] Value for the `arn` invoke input.
/// [options] Invoke options controlling this call.
Future<ArnParseResult> arnParse(
  pulumi.Input<String> arn,
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:index/arnParse:arnParse',
    ArnParseArgs(arn: arn, ).toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ArnParseResult.fromMap(result);
}

pulumi.Output<ArnParseResult> arnParseOutput(
  pulumi.Input<String> arn,
  {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:index/arnParse:arnParse',
    pulumi.Input.mapToInputs(ArnParseArgs(arn: arn, ).toMap()),
    options: options,
  ).apply(ArnParseResult.fromMap);
}

/// Parses an ARN into its constituent parts.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const dbInstance = aws.getArn({
///     arn: "arn:aws:rds:eu-west-1:123456789012:db:mysql-db",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// db_instance = aws.get_arn(arn="arn:aws:rds:eu-west-1:123456789012:db:mysql-db")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dbInstance = Aws.GetArn.Invoke(new()
///     {
///         Arn = "arn:aws:rds:eu-west-1:123456789012:db:mysql-db",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := aws.GetArn(ctx, &aws.GetArnArgs{
/// 			Arn: "arn:aws:rds:eu-west-1:123456789012:db:mysql-db",
/// 		}, nil)
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
/// data "aws_getarn" "dbInstance" {
///   arn = "arn:aws:rds:eu-west-1:123456789012:db:mysql-db"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetArnArgs;
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
///         final var dbInstance = AwsFunctions.getArn(GetArnArgs.builder()
///             .arn("arn:aws:rds:eu-west-1:123456789012:db:mysql-db")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   dbInstance:
///     fn::invoke:
///       function: aws:getArn
///       arguments:
///         arn: arn:aws:rds:eu-west-1:123456789012:db:mysql-db
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_arn_get_arn_args_doc}
/// [options] Invoke options controlling this call.
Future<GetArnResult> getArn(
  GetArnArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:index/getArn:getArn',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetArnResult.fromMap(result);
}

pulumi.Output<GetArnResult> getArnOutput(
  GetArnArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:index/getArn:getArn',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetArnResult.fromMap);
}

/// `aws.getAvailabilityZone` provides details about a specific availability zone (AZ)
/// in the current Region.
///
/// This can be used both to validate an availability zone given in a variable
/// and to split the AZ name into its component parts of an AWS Region and an
/// AZ identifier letter. The latter may be useful e.g., for implementing a
/// consistent subnet numbering scheme across several regions by mapping both
/// the region and the subnet letter to network numbers.
///
/// This is different from the `aws.getAvailabilityZones` (plural) data source,
/// which provides a list of the available zones.
///
/// ## Example Usage
///
/// The following example shows how this data source might be used to derive
/// VPC and subnet CIDR prefixes systematically for an availability zone.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const regionNumber = config.getObject<any>("regionNumber") || {
///     "ap-northeast-1": 5,
///     "eu-central-1": 4,
///     "us-east-1": 1,
///     "us-west-1": 2,
///     "us-west-2": 3,
/// };
/// const azNumber = config.getObject<any>("azNumber") || {
///     a: 1,
///     b: 2,
///     c: 3,
///     d: 4,
///     e: 5,
///     f: 6,
/// };
/// // Retrieve the AZ where we want to create network resources
/// // This must be in the region selected on the AWS provider.
/// const example = aws.getAvailabilityZone({
///     name: "eu-central-1a",
/// });
/// // Create a VPC for the region associated with the AZ
/// const exampleVpc = new aws.ec2.Vpc("example", {cidrBlock: example.then(example => std.cidrsubnet({
///     input: "10.0.0.0/8",
///     newbits: 4,
///     netnum: Number(regionNumber[example.region]),
/// })).then(invoke => invoke.result)});
/// // Create a subnet for the AZ within the regional VPC
/// const exampleSubnet = new aws.ec2.Subnet("example", {
///     vpcId: exampleVpc.id,
///     cidrBlock: std.cidrsubnetOutput({
///         input: exampleVpc.cidrBlock,
///         newbits: 4,
///         netnum: output(example.then(example => azNumber[example.nameSuffix])).apply(x =>Number(x)),
///     }).result,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// region_number = config.get_object("regionNumber")
/// if region_number is None:
///     region_number = {
///         "ap-northeast-1": 5,
///         "eu-central-1": 4,
///         "us-east-1": 1,
///         "us-west-1": 2,
///         "us-west-2": 3,
///     }
/// az_number = config.get_object("azNumber")
/// if az_number is None:
///     az_number = {
///         "a": 1,
///         "b": 2,
///         "c": 3,
///         "d": 4,
///         "e": 5,
///         "f": 6,
///     }
/// # Retrieve the AZ where we want to create network resources
/// # This must be in the region selected on the AWS provider.
/// example = aws.get_availability_zone(name="eu-central-1a")
/// # Create a VPC for the region associated with the AZ
/// example_vpc = aws.ec2.Vpc("example", cidr_block=std.cidrsubnet(input="10.0.0.0/8",
///     newbits=4,
///     netnum=region_number[example.region]).result)
/// # Create a subnet for the AZ within the regional VPC
/// example_subnet = aws.ec2.Subnet("example",
///     vpc_id=example_vpc.id,
///     cidr_block=std.cidrsubnet_output(input=example_vpc.cidr_block,
///         newbits=4,
///         netnum=az_number[example.name_suffix]).result)
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
///     var config = new Config();
///     var regionNumber = config.GetObject<dynamic>("regionNumber") ??
///     {
///         { "ap-northeast-1", 5 },
///         { "eu-central-1", 4 },
///         { "us-east-1", 1 },
///         { "us-west-1", 2 },
///         { "us-west-2", 3 },
///     };
///     var azNumber = config.GetObject<dynamic>("azNumber") ??
///     {
///         { "a", 1 },
///         { "b", 2 },
///         { "c", 3 },
///         { "d", 4 },
///         { "e", 5 },
///         { "f", 6 },
///     };
///     // Retrieve the AZ where we want to create network resources
///     // This must be in the region selected on the AWS provider.
///     var example = Aws.GetAvailabilityZone.Invoke(new()
///     {
///         Name = "eu-central-1a",
///     });
///
///     // Create a VPC for the region associated with the AZ
///     var exampleVpc = new Aws.Ec2.Vpc("example", new()
///     {
///         CidrBlock = Std.Cidrsubnet.Invoke(new()
///         {
///             Input = "10.0.0.0/8",
///             Newbits = 4,
///             Netnum = regionNumber[example.Apply(getAvailabilityZoneResult => getAvailabilityZoneResult.Region)],
///         }).Apply(invoke => invoke.Result),
///     });
///
///     // Create a subnet for the AZ within the regional VPC
///     var exampleSubnet = new Aws.Ec2.Subnet("example", new()
///     {
///         VpcId = exampleVpc.Id,
///         CidrBlock = Std.Cidrsubnet.Invoke(new()
///         {
///             Input = exampleVpc.CidrBlock,
///             Newbits = 4,
///             Netnum = azNumber[example.Apply(getAvailabilityZoneResult => getAvailabilityZoneResult.NameSuffix)],
///         }).Apply(invoke => invoke.Result),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		regionNumber := map[string]int{
/// 			"ap-northeast-1": 5,
/// 			"eu-central-1":   4,
/// 			"us-east-1":      1,
/// 			"us-west-1":      2,
/// 			"us-west-2":      3,
/// 		}
/// 		if param := cfg.GetObject("regionNumber"); param != nil {
/// 			regionNumber = param
/// 		}
/// 		azNumber := map[string]int{
/// 			"a": 1,
/// 			"b": 2,
/// 			"c": 3,
/// 			"d": 4,
/// 			"e": 5,
/// 			"f": 6,
/// 		}
/// 		if param := cfg.GetObject("azNumber"); param != nil {
/// 			azNumber = param
/// 		}
/// 		// Retrieve the AZ where we want to create network resources
/// 		// This must be in the region selected on the AWS provider.
/// 		example, err := aws.GetAvailabilityZone(ctx, &aws.GetAvailabilityZoneArgs{
/// 			Name: pulumi.StringRef("eu-central-1a"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeCidrsubnet, err := std.Cidrsubnet(ctx, &std.CidrsubnetArgs{
/// 			Input:   "10.0.0.0/8",
/// 			Newbits: 4,
/// 			Netnum:  regionNumber[example.Region],
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create a VPC for the region associated with the AZ
/// 		exampleVpc, err := ec2.NewVpc(ctx, "example", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String(invokeCidrsubnet.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create a subnet for the AZ within the regional VPC
/// 		_, err = ec2.NewSubnet(ctx, "example", &ec2.SubnetArgs{
/// 			VpcId: exampleVpc.ID().ToIDOutput().ToStringOutput(),
/// 			CidrBlock: std.CidrsubnetOutput(ctx, std.CidrsubnetOutputArgs{
/// 				Input:   exampleVpc.CidrBlock,
/// 				Newbits: pulumi.Int(4),
/// 				Netnum:  azNumber[example.NameSuffix].(pulumi.Int),
/// 			}, nil).Result(),
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// data "aws_getavailabilityzone" "example" {
///   name = "eu-central-1a"
/// }
///
/// # Create a VPC for the region associated with the AZ
/// resource "aws_ec2_vpc" "example" {
///   cidr_block = cidrsubnet("10.0.0.0/8", 4, var.regionNumber[data.aws_getavailabilityzone.example.region])
/// }
/// # Create a subnet for the AZ within the regional VPC
/// resource "aws_ec2_subnet" "example" {
///   vpc_id     = aws_ec2_vpc.example.id
///   cidr_block = cidrsubnet(aws_ec2_vpc.example.cidr_block, 4, var.azNumber[data.aws_getavailabilityzone.example.name_suffix])
/// }
/// variable "regionNumber" {
///   default = {
///     "ap-northeast-1" = 5
///     "eu-central-1"   = 4
///     "us-east-1"      = 1
///     "us-west-1"      = 2
///     "us-west-2"      = 3
///   }
/// }
/// variable "azNumber" {
///   default = {
///     "a" = 1
///     "b" = 2
///     "c" = 3
///     "d" = 4
///     "e" = 5
///     "f" = 6
///   }
/// }
/// # Retrieve the AZ where we want to create network resources
/// # This must be in the region selected on the AWS provider.
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetAvailabilityZoneArgs;
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.CidrsubnetArgs;
/// import com.pulumi.aws.ec2.Subnet;
/// import com.pulumi.aws.ec2.SubnetArgs;
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
///         final var config = ctx.config();
///         final var regionNumber = config.get("regionNumber").orElse(Map.ofEntries(
///             Map.entry("ap-northeast-1", 5),
///             Map.entry("eu-central-1", 4),
///             Map.entry("us-east-1", 1),
///             Map.entry("us-west-1", 2),
///             Map.entry("us-west-2", 3)
///         ));
///         final var azNumber = config.get("azNumber").orElse(Map.ofEntries(
///             Map.entry("a", 1),
///             Map.entry("b", 2),
///             Map.entry("c", 3),
///             Map.entry("d", 4),
///             Map.entry("e", 5),
///             Map.entry("f", 6)
///         ));
///         // Retrieve the AZ where we want to create network resources
///         // This must be in the region selected on the AWS provider.
///         final var example = AwsFunctions.getAvailabilityZone(GetAvailabilityZoneArgs.builder()
///             .name("eu-central-1a")
///             .build());
///
///         // Create a VPC for the region associated with the AZ
///         var exampleVpc = new Vpc("exampleVpc", VpcArgs.builder()
///             .cidrBlock(StdFunctions.cidrsubnet(CidrsubnetArgs.builder()
///                 .input("10.0.0.0/8")
///                 .newbits(4)
///                 .netnum(regionNumber[example.region()])
///                 .build()).result())
///             .build());
///
///         // Create a subnet for the AZ within the regional VPC
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .vpcId(exampleVpc.id())
///             .cidrBlock(StdFunctions.cidrsubnet(CidrsubnetArgs.builder()
///                 .input(exampleVpc.cidrBlock())
///                 .newbits(4)
///                 .netnum(azNumber[example.nameSuffix()])
///                 .build()).applyValue(_invoke -> _invoke.result()))
///             .build());
///
///     }
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_availability_zone_get_availability_zone_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAvailabilityZoneResult> getAvailabilityZone(
  GetAvailabilityZoneArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:index/getAvailabilityZone:getAvailabilityZone',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAvailabilityZoneResult.fromMap(result);
}

pulumi.Output<GetAvailabilityZoneResult> getAvailabilityZoneOutput(
  GetAvailabilityZoneArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:index/getAvailabilityZone:getAvailabilityZone',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAvailabilityZoneResult.fromMap);
}

/// The Availability Zones data source allows access to the list of AWS
/// Availability Zones which can be accessed by an AWS account within the region
/// configured in the provider.
///
/// This is different from the `aws.getAvailabilityZone` (singular) data source,
/// which provides some details about a specific availability zone.
///
/// &gt; When [Local Zones](https://aws.amazon.com/about-aws/global-infrastructure/localzones/) are enabled in a region, by default the API and this data source include both Local Zones and Availability Zones. To return only Availability Zones, see the example section below.
///
/// ## Example Usage
///
/// ### By State
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Declare the data source
/// const available = aws.getAvailabilityZones({
///     state: "available",
/// });
/// // e.g., Create subnets in the first two available availability zones
/// const primary = new aws.ec2.Subnet("primary", {availabilityZone: available.then(available => available.names?.[0])});
/// const secondary = new aws.ec2.Subnet("secondary", {availabilityZone: available.then(available => available.names?.[1])});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Declare the data source
/// available = aws.get_availability_zones(state="available")
/// # e.g., Create subnets in the first two available availability zones
/// primary = aws.ec2.Subnet("primary", availability_zone=available.names[0])
/// secondary = aws.ec2.Subnet("secondary", availability_zone=available.names[1])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Declare the data source
///     var available = Aws.GetAvailabilityZones.Invoke(new()
///     {
///         State = "available",
///     });
///
///     // e.g., Create subnets in the first two available availability zones
///     var primary = new Aws.Ec2.Subnet("primary", new()
///     {
///         AvailabilityZone = available.Apply(getAvailabilityZonesResult => getAvailabilityZonesResult.Names[0]),
///     });
///
///     var secondary = new Aws.Ec2.Subnet("secondary", new()
///     {
///         AvailabilityZone = available.Apply(getAvailabilityZonesResult => getAvailabilityZonesResult.Names[1]),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Declare the data source
/// 		available, err := aws.GetAvailabilityZones(ctx, &aws.GetAvailabilityZonesArgs{
/// 			State: pulumi.StringRef("available"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// e.g., Create subnets in the first two available availability zones
/// 		_, err = ec2.NewSubnet(ctx, "primary", &ec2.SubnetArgs{
/// 			AvailabilityZone: pulumi.String(available.Names[0]),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewSubnet(ctx, "secondary", &ec2.SubnetArgs{
/// 			AvailabilityZone: pulumi.String(available.Names[1]),
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
/// data "aws_getavailabilityzones" "available" {
///   state = "available"
/// }
///
/// # e.g., Create subnets in the first two available availability zones
/// resource "aws_ec2_subnet" "primary" {
///   availability_zone = data.aws_getavailabilityzones.available.names[0]
/// }
/// resource "aws_ec2_subnet" "secondary" {
///   availability_zone = data.aws_getavailabilityzones.available.names[1]
/// }
/// # Declare the data source
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetAvailabilityZonesArgs;
/// import com.pulumi.aws.ec2.Subnet;
/// import com.pulumi.aws.ec2.SubnetArgs;
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
///         // Declare the data source
///         final var available = AwsFunctions.getAvailabilityZones(GetAvailabilityZonesArgs.builder()
///             .state("available")
///             .build());
///
///         // e.g., Create subnets in the first two available availability zones
///         var primary = new Subnet("primary", SubnetArgs.builder()
///             .availabilityZone(available.names()[0])
///             .build());
///
///         var secondary = new Subnet("secondary", SubnetArgs.builder()
///             .availabilityZone(available.names()[1])
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # e.g., Create subnets in the first two available availability zones
///   primary:
///     type: aws:ec2:Subnet
///     properties:
///       availabilityZone: ${available.names[0]}
///   secondary:
///     type: aws:ec2:Subnet
///     properties:
///       availabilityZone: ${available.names[1]}
/// variables:
///   # Declare the data source
///   available:
///     fn::invoke:
///       function: aws:getAvailabilityZones
///       arguments:
///         state: available
/// ```
///
///
/// ### By Filter
///
/// All Local Zones (regardless of opt-in status):
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.getAvailabilityZones({
///     filters: [{
///         name: "opt-in-status",
///         values: [
///             "not-opted-in",
///             "opted-in",
///         ],
///     }],
///     allAvailabilityZones: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.get_availability_zones(filters=[{
///         "name": "opt-in-status",
///         "values": [
///             "not-opted-in",
///             "opted-in",
///         ],
///     }],
///     all_availability_zones=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.GetAvailabilityZones.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Inputs.GetAvailabilityZonesFilterInputArgs
///             {
///                 Name = "opt-in-status",
///                 Values = new[]
///                 {
///                     "not-opted-in",
///                     "opted-in",
///                 },
///             },
///         },
///         AllAvailabilityZones = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := aws.GetAvailabilityZones(ctx, &aws.GetAvailabilityZonesArgs{
/// 			Filters: []aws.GetAvailabilityZonesFilter{
/// 				{
/// 					Name: "opt-in-status",
/// 					Values: []string{
/// 						"not-opted-in",
/// 						"opted-in",
/// 					},
/// 				},
/// 			},
/// 			AllAvailabilityZones: pulumi.BoolRef(true),
/// 		}, nil)
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
/// data "aws_getavailabilityzones" "example" {
///   filters {
///     name   = "opt-in-status"
///     values = ["not-opted-in", "opted-in"]
///   }
///   all_availability_zones = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetAvailabilityZonesArgs;
/// import com.pulumi.aws.inputs.GetAvailabilityZonesFilterArgs;
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
///         final var example = AwsFunctions.getAvailabilityZones(GetAvailabilityZonesArgs.builder()
///             .filters(GetAvailabilityZonesFilterArgs.builder()
///                 .name("opt-in-status")
///                 .values(
///                     "not-opted-in",
///                     "opted-in")
///                 .build())
///             .allAvailabilityZones(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:getAvailabilityZones
///       arguments:
///         filters:
///           - name: opt-in-status
///             values:
///               - not-opted-in
///               - opted-in
///         allAvailabilityZones: true
/// ```
///
///
/// Only Availability Zones (no Local Zones):
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.getAvailabilityZones({
///     filters: [{
///         name: "opt-in-status",
///         values: ["opt-in-not-required"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.get_availability_zones(filters=[{
///     "name": "opt-in-status",
///     "values": ["opt-in-not-required"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.GetAvailabilityZones.Invoke(new()
///     {
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
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := aws.GetAvailabilityZones(ctx, &aws.GetAvailabilityZonesArgs{
/// 			Filters: []aws.GetAvailabilityZonesFilter{
/// 				{
/// 					Name: "opt-in-status",
/// 					Values: []string{
/// 						"opt-in-not-required",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
/// data "aws_getavailabilityzones" "example" {
///   filters {
///     name   = "opt-in-status"
///     values = ["opt-in-not-required"]
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
/// import com.pulumi.aws.inputs.GetAvailabilityZonesArgs;
/// import com.pulumi.aws.inputs.GetAvailabilityZonesFilterArgs;
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
///         final var example = AwsFunctions.getAvailabilityZones(GetAvailabilityZonesArgs.builder()
///             .filters(GetAvailabilityZonesFilterArgs.builder()
///                 .name("opt-in-status")
///                 .values("opt-in-not-required")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:getAvailabilityZones
///       arguments:
///         filters:
///           - name: opt-in-status
///             values:
///               - opt-in-not-required
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_availability_zones_get_availability_zones_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAvailabilityZonesResult> getAvailabilityZones(
  GetAvailabilityZonesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:index/getAvailabilityZones:getAvailabilityZones',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAvailabilityZonesResult.fromMap(result);
}

pulumi.Output<GetAvailabilityZonesResult> getAvailabilityZonesOutput(
  GetAvailabilityZonesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:index/getAvailabilityZones:getAvailabilityZones',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAvailabilityZonesResult.fromMap);
}

/// Use this data source to get the Account ID of the [AWS Billing and Cost Management Service Account](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-getting-started.html#step-2) for the purpose of permitting in S3 bucket policy.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const main = aws.getBillingServiceAccount({});
/// const billingLogs = new aws.s3.Bucket("billing_logs", {bucket: "my-billing-tf-test-bucket"});
/// const billingLogsAcl = new aws.s3.BucketAcl("billing_logs_acl", {
///     bucket: billingLogs.id,
///     acl: "private",
/// });
/// const allowBillingLogging = aws.iam.getPolicyDocumentOutput({
///     statements: [
///         {
///             principals: [{
///                 type: "AWS",
///                 identifiers: [main.then(main => main.arn)],
///             }],
///             effect: "Allow",
///             actions: [
///                 "s3:GetBucketAcl",
///                 "s3:GetBucketPolicy",
///             ],
///             resources: [billingLogs.arn],
///         },
///         {
///             principals: [{
///                 type: "AWS",
///                 identifiers: [main.then(main => main.arn)],
///             }],
///             effect: "Allow",
///             actions: ["s3:PutObject"],
///             resources: [pulumi.interpolate`${billingLogs.arn}/*`],
///         },
///     ],
/// });
/// const allowBillingLoggingBucketPolicy = new aws.s3.BucketPolicy("allow_billing_logging", {
///     bucket: billingLogs.id,
///     policy: allowBillingLogging.json,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// main = aws.get_billing_service_account()
/// billing_logs = aws.s3.Bucket("billing_logs", bucket="my-billing-tf-test-bucket")
/// billing_logs_acl = aws.s3.BucketAcl("billing_logs_acl",
///     bucket=billing_logs.id,
///     acl="private")
/// allow_billing_logging = aws.iam.get_policy_document_output(statements=[
///     {
///         "principals": [{
///             "type": "AWS",
///             "identifiers": [main.arn],
///         }],
///         "effect": "Allow",
///         "actions": [
///             "s3:GetBucketAcl",
///             "s3:GetBucketPolicy",
///         ],
///         "resources": [billing_logs.arn],
///     },
///     {
///         "principals": [{
///             "type": "AWS",
///             "identifiers": [main.arn],
///         }],
///         "effect": "Allow",
///         "actions": ["s3:PutObject"],
///         "resources": [billing_logs.arn.apply(lambda arn: f"{arn}/*")],
///     },
/// ])
/// allow_billing_logging_bucket_policy = aws.s3.BucketPolicy("allow_billing_logging",
///     bucket=billing_logs.id,
///     policy=allow_billing_logging.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var main = Aws.GetBillingServiceAccount.Invoke();
///
///     var billingLogs = new Aws.S3.Bucket("billing_logs", new()
///     {
///         BucketName = "my-billing-tf-test-bucket",
///     });
///
///     var billingLogsAcl = new Aws.S3.BucketAcl("billing_logs_acl", new()
///     {
///         Bucket = billingLogs.Id,
///         Acl = "private",
///     });
///
///     var allowBillingLogging = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "AWS",
///                         Identifiers = new[]
///                         {
///                             main.Apply(getBillingServiceAccountResult => getBillingServiceAccountResult.Arn),
///                         },
///                     },
///                 },
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "s3:GetBucketAcl",
///                     "s3:GetBucketPolicy",
///                 },
///                 Resources = new[]
///                 {
///                     billingLogs.Arn,
///                 },
///             },
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "AWS",
///                         Identifiers = new[]
///                         {
///                             main.Apply(getBillingServiceAccountResult => getBillingServiceAccountResult.Arn),
///                         },
///                     },
///                 },
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "s3:PutObject",
///                 },
///                 Resources = new[]
///                 {
///                     $"{billingLogs.Arn}/*",
///                 },
///             },
///         },
///     });
///
///     var allowBillingLoggingBucketPolicy = new Aws.S3.BucketPolicy("allow_billing_logging", new()
///     {
///         Bucket = billingLogs.Id,
///         Policy = allowBillingLogging.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		main, err := aws.GetBillingServiceAccount(ctx, &aws.GetBillingServiceAccountArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		billingLogs, err := s3.NewBucket(ctx, "billing_logs", &s3.BucketArgs{
/// 			Bucket: pulumi.String("my-billing-tf-test-bucket"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketAcl(ctx, "billing_logs_acl", &s3.BucketAclArgs{
/// 			Bucket: billingLogs.ID().ToIDOutput().ToStringOutput(),
/// 			Acl:    pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		allowBillingLogging := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// 			Statements: iam.GetPolicyDocumentStatementArray{
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// 						&iam.GetPolicyDocumentStatementPrincipalArgs{
/// 							Type: pulumi.String("AWS"),
/// 							Identifiers: pulumi.StringArray{
/// 								pulumi.String(main.Arn),
/// 							},
/// 						},
/// 					},
/// 					Effect: pulumi.String("Allow"),
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("s3:GetBucketAcl"),
/// 						pulumi.String("s3:GetBucketPolicy"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						billingLogs.Arn,
/// 					},
/// 				},
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// 						&iam.GetPolicyDocumentStatementPrincipalArgs{
/// 							Type: pulumi.String("AWS"),
/// 							Identifiers: pulumi.StringArray{
/// 								pulumi.String(main.Arn),
/// 							},
/// 						},
/// 					},
/// 					Effect: pulumi.String("Allow"),
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("s3:PutObject"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						billingLogs.Arn.ApplyT(func(arn string) (string, error) {
/// 							return fmt.Sprintf("%v/*", arn), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		_, err = s3.NewBucketPolicy(ctx, "allow_billing_logging", &s3.BucketPolicyArgs{
/// 			Bucket: billingLogs.ID().ToIDOutput().ToStringOutput(),
/// 			Policy: allowBillingLogging.Json(),
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
/// data "aws_getbillingserviceaccount" "main" {
/// }
/// data "aws_iam_getpolicydocument" "allowBillingLogging" {
///   statements {
///     principals {
///       type        = "AWS"
///       identifiers = [data.aws_getbillingserviceaccount.main.arn]
///     }
///     effect    = "Allow"
///     actions   = ["s3:GetBucketAcl", "s3:GetBucketPolicy"]
///     resources = [aws_s3_bucket.billing_logs.arn]
///   }
///   statements {
///     principals {
///       type        = "AWS"
///       identifiers = [data.aws_getbillingserviceaccount.main.arn]
///     }
///     effect    = "Allow"
///     actions   = ["s3:PutObject"]
///     resources = ["${aws_s3_bucket.billing_logs.arn}/*"]
///   }
/// }
///
/// resource "aws_s3_bucket" "billing_logs" {
///   bucket = "my-billing-tf-test-bucket"
/// }
/// resource "aws_s3_bucketacl" "billing_logs_acl" {
///   bucket = aws_s3_bucket.billing_logs.id
///   acl    = "private"
/// }
/// resource "aws_s3_bucketpolicy" "allow_billing_logging" {
///   bucket = aws_s3_bucket.billing_logs.id
///   policy = data.aws_iam_getpolicydocument.allowBillingLogging.json
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetBillingServiceAccountArgs;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.s3.BucketAcl;
/// import com.pulumi.aws.s3.BucketAclArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.s3.BucketPolicy;
/// import com.pulumi.aws.s3.BucketPolicyArgs;
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
///         final var main = AwsFunctions.getBillingServiceAccount(GetBillingServiceAccountArgs.builder()
///             .build());
///
///         var billingLogs = new Bucket("billingLogs", BucketArgs.builder()
///             .bucket("my-billing-tf-test-bucket")
///             .build());
///
///         var billingLogsAcl = new BucketAcl("billingLogsAcl", BucketAclArgs.builder()
///             .bucket(billingLogs.id())
///             .acl("private")
///             .build());
///
///         final var allowBillingLogging = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(
///                 GetPolicyDocumentStatementArgs.builder()
///                     .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                         .type("AWS")
///                         .identifiers(main.arn())
///                         .build())
///                     .effect("Allow")
///                     .actions(
///                         "s3:GetBucketAcl",
///                         "s3:GetBucketPolicy")
///                     .resources(billingLogs.arn())
///                     .build(),
///                 GetPolicyDocumentStatementArgs.builder()
///                     .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                         .type("AWS")
///                         .identifiers(main.arn())
///                         .build())
///                     .effect("Allow")
///                     .actions("s3:PutObject")
///                     .resources(billingLogs.arn().applyValue(_arn -> String.format("%s/*", _arn)))
///                     .build())
///             .build());
///
///         var allowBillingLoggingBucketPolicy = new BucketPolicy("allowBillingLoggingBucketPolicy", BucketPolicyArgs.builder()
///             .bucket(billingLogs.id())
///             .policy(allowBillingLogging.applyValue(_allowBillingLogging -> _allowBillingLogging.json()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   billingLogs:
///     type: aws:s3:Bucket
///     name: billing_logs
///     properties:
///       bucket: my-billing-tf-test-bucket
///   billingLogsAcl:
///     type: aws:s3:BucketAcl
///     name: billing_logs_acl
///     properties:
///       bucket: ${billingLogs.id}
///       acl: private
///   allowBillingLoggingBucketPolicy:
///     type: aws:s3:BucketPolicy
///     name: allow_billing_logging
///     properties:
///       bucket: ${billingLogs.id}
///       policy: ${allowBillingLogging.json}
/// variables:
///   main:
///     fn::invoke:
///       function: aws:getBillingServiceAccount
///       arguments: {}
///   allowBillingLogging:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - type: AWS
///                 identifiers:
///                   - ${main.arn}
///             effect: Allow
///             actions:
///               - s3:GetBucketAcl
///               - s3:GetBucketPolicy
///             resources:
///               - ${billingLogs.arn}
///           - principals:
///               - type: AWS
///                 identifiers:
///                   - ${main.arn}
///             effect: Allow
///             actions:
///               - s3:PutObject
///             resources:
///               - ${billingLogs.arn}/*
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_billing_service_account_get_billing_service_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBillingServiceAccountResult> getBillingServiceAccount(
  GetBillingServiceAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:index/getBillingServiceAccount:getBillingServiceAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBillingServiceAccountResult.fromMap(result);
}

pulumi.Output<GetBillingServiceAccountResult> getBillingServiceAccountOutput(
  GetBillingServiceAccountArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:index/getBillingServiceAccount:getBillingServiceAccount',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBillingServiceAccountResult.fromMap);
}

/// Use this data source to get the access to the effective Account ID, User ID, and ARN in
/// which this provider is authorized.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// export const accountId = current.then(current => current.accountId);
/// export const callerArn = current.then(current => current.arn);
/// export const callerUser = current.then(current => current.userId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// pulumi.export("accountId", current.account_id)
/// pulumi.export("callerArn", current.arn)
/// pulumi.export("callerUser", current.user_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetCallerIdentity.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["accountId"] = current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
///         ["callerArn"] = current.Apply(getCallerIdentityResult => getCallerIdentityResult.Arn),
///         ["callerUser"] = current.Apply(getCallerIdentityResult => getCallerIdentityResult.UserId),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("accountId", current.AccountId)
/// 		ctx.Export("callerArn", current.Arn)
/// 		ctx.Export("callerUser", current.UserId)
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
/// data "aws_getcalleridentity" "current" {
/// }
///
/// output "accountId" {
///   value = data.aws_getcalleridentity.current.account_id
/// }
/// output "callerArn" {
///   value = data.aws_getcalleridentity.current.arn
/// }
/// output "callerUser" {
///   value = data.aws_getcalleridentity.current.user_id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
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
///         final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         ctx.export("accountId", current.accountId());
///         ctx.export("callerArn", current.arn());
///         ctx.export("callerUser", current.userId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
/// outputs:
///   accountId: ${current.accountId}
///   callerArn: ${current.arn}
///   callerUser: ${current.userId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_caller_identity_get_caller_identity_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCallerIdentityResult> getCallerIdentity(
  GetCallerIdentityArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:index/getCallerIdentity:getCallerIdentity',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCallerIdentityResult.fromMap(result);
}

pulumi.Output<GetCallerIdentityResult> getCallerIdentityOutput(
  GetCallerIdentityArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:index/getCallerIdentity:getCallerIdentity',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCallerIdentityResult.fromMap);
}

/// Use this data source to get the default tags configured on the provider.
///
/// With this data source, you can apply default tags to resources not _directly_ managed by a resource, such as the instances underneath an Auto Scaling group or the volumes created for an EC2 instance.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.getDefaultTags({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.get_default_tags()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.GetDefaultTags.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := aws.GetDefaultTags(ctx, &aws.GetDefaultTagsArgs{}, nil)
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
/// data "aws_getdefaulttags" "example" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetDefaultTagsArgs;
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
///         final var example = AwsFunctions.getDefaultTags(GetDefaultTagsArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:getDefaultTags
///       arguments: {}
/// ```
///
///
/// ### Dynamically Apply Default Tags to Auto Scaling Group
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.getDefaultTags({});
/// const exampleGroup = new aws.autoscaling.Group("example", {tags: example.then(example => .map(([key, entry]) => ({
///     key: key,
///     value: entry,
///     propagateAtLaunch: true,
/// })))});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.get_default_tags()
/// example_group = aws.autoscaling.Group("example", tags=[{
///     "key": key,
///     "value": entry,
///     "propagate_at_launch": True,
/// } for key, entry in sorted(example.tags.items())])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.GetDefaultTags.Invoke();
///
///     var exampleGroup = new Aws.AutoScaling.Group("example", new()
///     {
///         Tags = .Select(entry =>
///         {
///             return
///             {
///                 { "key", key },
///                 { "value", entry },
///                 { "propagateAtLaunch", true },
///             };
///         }).ToList(),
///     });
///
/// });
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
/// data "aws_getdefaulttags" "example" {
/// }
///
/// resource "aws_autoscaling_group" "example" {
///   dynamic "tags" {
///     for_each = data.aws_getdefaulttags.example.tags
///     content {
///       key                 = tags.key
///       value               = tags.value
///       propagate_at_launch = true
///     }
///   }
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_default_tags_get_default_tags_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDefaultTagsResult> getDefaultTags(
  GetDefaultTagsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:index/getDefaultTags:getDefaultTags',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDefaultTagsResult.fromMap(result);
}

pulumi.Output<GetDefaultTagsResult> getDefaultTagsOutput(
  GetDefaultTagsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:index/getDefaultTags:getDefaultTags',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDefaultTagsResult.fromMap);
}

/// Use this data source to get the IP ranges of various AWS products and services. For more information about the contents of this data source and required JSON syntax if referencing a custom URL, see the [AWS IP Address Ranges documentation](https://docs.aws.amazon.com/general/latest/gr/aws-ip-ranges.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const europeanEc2 = aws.getIpRanges({
///     regions: [
///         "eu-west-1",
///         "eu-central-1",
///     ],
///     services: ["ec2"],
/// });
/// const fromEurope = new aws.ec2.SecurityGroup("from_europe", {
///     ingress: [{
///         fromPort: 443,
///         toPort: 443,
///         protocol: "tcp",
///         cidrBlocks: europeanEc2.then(europeanEc2 => europeanEc2.cidrBlocks),
///         ipv6CidrBlocks: europeanEc2.then(europeanEc2 => europeanEc2.ipv6CidrBlocks),
///     }],
///     name: "from_europe",
///     tags: {
///         CreateDate: europeanEc2.then(europeanEc2 => europeanEc2.createDate),
///         SyncToken: output(europeanEc2.then(europeanEc2 => europeanEc2.syncToken)).apply(x =>String(x)),
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// european_ec2 = aws.get_ip_ranges(regions=[
///         "eu-west-1",
///         "eu-central-1",
///     ],
///     services=["ec2"])
/// from_europe = aws.ec2.SecurityGroup("from_europe",
///     ingress=[{
///         "from_port": 443,
///         "to_port": 443,
///         "protocol": "tcp",
///         "cidr_blocks": european_ec2.cidr_blocks,
///         "ipv6_cidr_blocks": european_ec2.ipv6_cidr_blocks,
///     }],
///     name="from_europe",
///     tags={
///         "CreateDate": european_ec2.create_date,
///         "SyncToken": output(european_ec2.sync_token).apply(lambda x: str(x)),
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
///     var europeanEc2 = Aws.GetIpRanges.Invoke(new()
///     {
///         Regions = new[]
///         {
///             "eu-west-1",
///             "eu-central-1",
///         },
///         Services = new[]
///         {
///             "ec2",
///         },
///     });
///
///     var fromEurope = new Aws.Ec2.SecurityGroup("from_europe", new()
///     {
///         Ingress = new[]
///         {
///             new Aws.Ec2.Inputs.SecurityGroupIngressArgs
///             {
///                 FromPort = 443,
///                 ToPort = 443,
///                 Protocol = "tcp",
///                 CidrBlocks = europeanEc2.Apply(getIpRangesResult => getIpRangesResult.CidrBlocks),
///                 Ipv6CidrBlocks = europeanEc2.Apply(getIpRangesResult => getIpRangesResult.Ipv6CidrBlocks),
///             },
///         },
///         Name = "from_europe",
///         Tags =
///         {
///             { "CreateDate", europeanEc2.Apply(getIpRangesResult => getIpRangesResult.CreateDate) },
///             { "SyncToken", europeanEc2.Apply(getIpRangesResult => getIpRangesResult.SyncToken) },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		europeanEc2, err := aws.GetIpRanges(ctx, &aws.GetIpRangesArgs{
/// 			Regions: []string{
/// 				"eu-west-1",
/// 				"eu-central-1",
/// 			},
/// 			Services: []string{
/// 				"ec2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewSecurityGroup(ctx, "from_europe", &ec2.SecurityGroupArgs{
/// 			Ingress: ec2.SecurityGroupIngressArray{
/// 				&ec2.SecurityGroupIngressArgs{
/// 					FromPort:       pulumi.Int(443),
/// 					ToPort:         pulumi.Int(443),
/// 					Protocol:       pulumi.String("tcp"),
/// 					CidrBlocks:     toPulumiStringArray(europeanEc2.CidrBlocks),
/// 					Ipv6CidrBlocks: toPulumiStringArray(europeanEc2.Ipv6CidrBlocks),
/// 				},
/// 			},
/// 			Name: pulumi.String("from_europe"),
/// 			Tags: pulumi.StringMap{
/// 				"CreateDate": pulumi.String(europeanEc2.CreateDate),
/// 				"SyncToken":  pulumi.Int(europeanEc2.SyncToken),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// func toPulumiStringArray(arr []string) pulumi.StringArray {
/// 	var pulumiArr pulumi.StringArray
/// 	for _, v := range arr {
/// 		pulumiArr = append(pulumiArr, pulumi.String(v))
/// 	}
/// 	return pulumiArr
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
/// data "aws_getipranges" "europeanEc2" {
///   regions  = ["eu-west-1", "eu-central-1"]
///   services = ["ec2"]
/// }
///
/// resource "aws_ec2_securitygroup" "from_europe" {
///   ingress {
///     from_port        = "443"
///     to_port          = "443"
///     protocol         = "tcp"
///     cidr_blocks      = data.aws_getipranges.europeanEc2.cidr_blocks
///     ipv6_cidr_blocks = data.aws_getipranges.europeanEc2.ipv6_cidr_blocks
///   }
///   name = "from_europe"
///   tags = {
///     "CreateDate" = data.aws_getipranges.europeanEc2.create_date
///     "SyncToken"  = data.aws_getipranges.europeanEc2.sync_token
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
/// import com.pulumi.aws.inputs.GetIpRangesArgs;
/// import com.pulumi.aws.ec2.SecurityGroup;
/// import com.pulumi.aws.ec2.SecurityGroupArgs;
/// import com.pulumi.aws.ec2.inputs.SecurityGroupIngressArgs;
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
///         final var europeanEc2 = AwsFunctions.getIpRanges(GetIpRangesArgs.builder()
///             .regions(
///                 "eu-west-1",
///                 "eu-central-1")
///             .services("ec2")
///             .build());
///
///         var fromEurope = new SecurityGroup("fromEurope", SecurityGroupArgs.builder()
///             .ingress(SecurityGroupIngressArgs.builder()
///                 .fromPort(443)
///                 .toPort(443)
///                 .protocol("tcp")
///                 .cidrBlocks(europeanEc2.cidrBlocks())
///                 .ipv6CidrBlocks(europeanEc2.ipv6CidrBlocks())
///                 .build())
///             .name("from_europe")
///             .tags(Map.ofEntries(
///                 Map.entry("CreateDate", europeanEc2.createDate()),
///                 Map.entry("SyncToken", europeanEc2.syncToken())
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   fromEurope:
///     type: aws:ec2:SecurityGroup
///     name: from_europe
///     properties:
///       ingress:
///         - fromPort: '443'
///           toPort: '443'
///           protocol: tcp
///           cidrBlocks: ${europeanEc2.cidrBlocks}
///           ipv6CidrBlocks: ${europeanEc2.ipv6CidrBlocks}
///       name: from_europe
///       tags:
///         CreateDate: ${europeanEc2.createDate}
///         SyncToken: ${europeanEc2.syncToken}
/// variables:
///   europeanEc2:
///     fn::invoke:
///       function: aws:getIpRanges
///       arguments:
///         regions:
///           - eu-west-1
///           - eu-central-1
///         services:
///           - ec2
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_ip_ranges_get_ip_ranges_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIpRangesResult> getIpRanges(
  GetIpRangesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:index/getIpRanges:getIpRanges',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIpRangesResult.fromMap(result);
}

pulumi.Output<GetIpRangesResult> getIpRangesOutput(
  GetIpRangesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:index/getIpRanges:getIpRanges',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIpRangesResult.fromMap);
}

/// Use this data source to lookup information about the current AWS partition in
/// which the provider is working.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getPartition({});
/// const s3Policy = current.then(current => aws.iam.getPolicyDocument({
///     statements: [{
///         sid: "1",
///         actions: ["s3:ListBucket"],
///         resources: [`arn:${current.partition}:s3:::my-bucket`],
///     }],
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_partition()
/// s3_policy = aws.iam.get_policy_document(statements=[{
///     "sid": "1",
///     "actions": ["s3:ListBucket"],
///     "resources": [f"arn:{current.partition}:s3:::my-bucket"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetPartition.Invoke();
///
///     var s3Policy = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Sid = "1",
///                 Actions = new[]
///                 {
///                     "s3:ListBucket",
///                 },
///                 Resources = new[]
///                 {
///                     $"arn:{current.Apply(getPartitionResult => getPartitionResult.Partition)}:s3:::my-bucket",
///                 },
///             },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetPartition(ctx, &aws.GetPartitionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Sid: pulumi.StringRef("1"),
/// 					Actions: []string{
/// 						"s3:ListBucket",
/// 					},
/// 					Resources: []string{
/// 						fmt.Sprintf("arn:%v:s3:::my-bucket", current.Partition),
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
/// data "aws_getpartition" "current" {
/// }
/// data "aws_iam_getpolicydocument" "s3Policy" {
///   statements {
///     sid       = "1"
///     actions   = ["s3:ListBucket"]
///     resources = ["arn:${data.aws_getpartition.current.partition}:s3:::my-bucket"]
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
/// import com.pulumi.aws.inputs.GetPartitionArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
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
///         final var current = AwsFunctions.getPartition(GetPartitionArgs.builder()
///             .build());
///
///         final var s3Policy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .sid("1")
///                 .actions("s3:ListBucket")
///                 .resources(String.format("arn:%s:s3:::my-bucket", current.partition()))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getPartition
///       arguments: {}
///   s3Policy:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - sid: '1'
///             actions:
///               - s3:ListBucket
///             resources:
///               - arn:${current.partition}:s3:::my-bucket
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_partition_get_partition_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPartitionResult> getPartition(
  GetPartitionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:index/getPartition:getPartition',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPartitionResult.fromMap(result);
}

pulumi.Output<GetPartitionResult> getPartitionOutput(
  GetPartitionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:index/getPartition:getPartition',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPartitionResult.fromMap);
}

/// `aws.getRegion` provides details about a specific AWS Region.
///
/// As well as validating a given Region name this resource can be used to
/// discover the name of the Region configured within the provider. The latter
/// can be useful in a child module which is inheriting an AWS provider
/// configuration from its parent module.
///
/// ## Example Usage
///
/// The following example shows how the resource might be used to obtain
/// the name of the AWS Region configured on the provider.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getRegion({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_region()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetRegion.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := aws.GetRegion(ctx, &aws.GetRegionArgs{}, nil)
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
/// data "aws_getregion" "current" {
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
///         final var current = AwsFunctions.getRegion(GetRegionArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getRegion
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_region_get_region_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionResult> getRegion(
  GetRegionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:index/getRegion:getRegion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionResult.fromMap(result);
}

pulumi.Output<GetRegionResult> getRegionOutput(
  GetRegionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:index/getRegion:getRegion',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRegionResult.fromMap);
}

/// Provides information about AWS Regions. Can be used to filter regions i.e., by Opt-In status or only regions enabled for current account. To get details like endpoint and description of each region the data source can be combined with the `aws.getRegion` data source.
///
/// ## Example Usage
///
/// Enabled AWS Regions:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getRegions({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_regions()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetRegions.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := aws.GetRegions(ctx, &aws.GetRegionsArgs{}, nil)
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
/// data "aws_getregions" "current" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetRegionsArgs;
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
///         final var current = AwsFunctions.getRegions(GetRegionsArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getRegions
///       arguments: {}
/// ```
///
///
/// All the regions regardless of the availability
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getRegions({
///     allRegions: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_regions(all_regions=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetRegions.Invoke(new()
///     {
///         AllRegions = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := aws.GetRegions(ctx, &aws.GetRegionsArgs{
/// 			AllRegions: pulumi.BoolRef(true),
/// 		}, nil)
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
/// data "aws_getregions" "current" {
///   all_regions = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetRegionsArgs;
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
///         final var current = AwsFunctions.getRegions(GetRegionsArgs.builder()
///             .allRegions(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getRegions
///       arguments:
///         allRegions: true
/// ```
///
///
/// To see regions that are filtered by `"not-opted-in"`, the `allRegions` argument needs to be set to `true` or no results will be returned.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getRegions({
///     filters: [{
///         name: "opt-in-status",
///         values: ["not-opted-in"],
///     }],
///     allRegions: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_regions(filters=[{
///         "name": "opt-in-status",
///         "values": ["not-opted-in"],
///     }],
///     all_regions=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetRegions.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Inputs.GetRegionsFilterInputArgs
///             {
///                 Name = "opt-in-status",
///                 Values = new[]
///                 {
///                     "not-opted-in",
///                 },
///             },
///         },
///         AllRegions = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := aws.GetRegions(ctx, &aws.GetRegionsArgs{
/// 			Filters: []aws.GetRegionsFilter{
/// 				{
/// 					Name: "opt-in-status",
/// 					Values: []string{
/// 						"not-opted-in",
/// 					},
/// 				},
/// 			},
/// 			AllRegions: pulumi.BoolRef(true),
/// 		}, nil)
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
/// data "aws_getregions" "current" {
///   filters {
///     name   = "opt-in-status"
///     values = ["not-opted-in"]
///   }
///   all_regions = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetRegionsArgs;
/// import com.pulumi.aws.inputs.GetRegionsFilterArgs;
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
///         final var current = AwsFunctions.getRegions(GetRegionsArgs.builder()
///             .filters(GetRegionsFilterArgs.builder()
///                 .name("opt-in-status")
///                 .values("not-opted-in")
///                 .build())
///             .allRegions(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getRegions
///       arguments:
///         filters:
///           - name: opt-in-status
///             values:
///               - not-opted-in
///         allRegions: true
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_regions_get_regions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionsResult> getRegions(
  GetRegionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:index/getRegions:getRegions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionsResult.fromMap(result);
}

pulumi.Output<GetRegionsResult> getRegionsOutput(
  GetRegionsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:index/getRegions:getRegions',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRegionsResult.fromMap);
}

/// Use this data source to compose and decompose AWS service DNS names.
///
/// ## Example Usage
///
/// ### Get Service DNS Name
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getRegion({});
/// const test = current.then(current => aws.getService({
///     region: current.region,
///     serviceId: "ec2",
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_region()
/// test = aws.get_service(region=current.region,
///     service_id="ec2")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetRegion.Invoke();
///
///     var test = Aws.GetService.Invoke(new()
///     {
///         Region = current.Apply(getRegionResult => getRegionResult.Region),
///         ServiceId = "ec2",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetRegion(ctx, &aws.GetRegionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = aws.GetService(ctx, &aws.GetServiceArgs{
/// 			Region:    pulumi.StringRef(current.Region),
/// 			ServiceId: pulumi.StringRef("ec2"),
/// 		}, nil)
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
/// data "aws_getregion" "current" {
/// }
/// data "aws_getservice" "test" {
///   region     = data.aws_getregion.current.region
///   service_id = "ec2"
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
/// import com.pulumi.aws.inputs.GetServiceArgs;
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
///         final var current = AwsFunctions.getRegion(GetRegionArgs.builder()
///             .build());
///
///         final var test = AwsFunctions.getService(GetServiceArgs.builder()
///             .region(current.region())
///             .serviceId("ec2")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getRegion
///       arguments: {}
///   test:
///     fn::invoke:
///       function: aws:getService
///       arguments:
///         region: ${current.region}
///         serviceId: ec2
/// ```
///
///
/// ### Use Service Reverse DNS Name to Get Components
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const s3 = aws.getService({
///     reverseDnsName: "cn.com.amazonaws.cn-north-1.s3",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// s3 = aws.get_service(reverse_dns_name="cn.com.amazonaws.cn-north-1.s3")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var s3 = Aws.GetService.Invoke(new()
///     {
///         ReverseDnsName = "cn.com.amazonaws.cn-north-1.s3",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := aws.GetService(ctx, &aws.GetServiceArgs{
/// 			ReverseDnsName: pulumi.StringRef("cn.com.amazonaws.cn-north-1.s3"),
/// 		}, nil)
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
/// data "aws_getservice" "s3" {
///   reverse_dns_name = "cn.com.amazonaws.cn-north-1.s3"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetServiceArgs;
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
///         final var s3 = AwsFunctions.getService(GetServiceArgs.builder()
///             .reverseDnsName("cn.com.amazonaws.cn-north-1.s3")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   s3:
///     fn::invoke:
///       function: aws:getService
///       arguments:
///         reverseDnsName: cn.com.amazonaws.cn-north-1.s3
/// ```
///
///
/// ### Determine Regional Support for a Service
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const s3 = aws.getService({
///     reverseDnsName: "com.amazonaws.us-gov-west-1.waf",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// s3 = aws.get_service(reverse_dns_name="com.amazonaws.us-gov-west-1.waf")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var s3 = Aws.GetService.Invoke(new()
///     {
///         ReverseDnsName = "com.amazonaws.us-gov-west-1.waf",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := aws.GetService(ctx, &aws.GetServiceArgs{
/// 			ReverseDnsName: pulumi.StringRef("com.amazonaws.us-gov-west-1.waf"),
/// 		}, nil)
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
/// data "aws_getservice" "s3" {
///   reverse_dns_name = "com.amazonaws.us-gov-west-1.waf"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetServiceArgs;
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
///         final var s3 = AwsFunctions.getService(GetServiceArgs.builder()
///             .reverseDnsName("com.amazonaws.us-gov-west-1.waf")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   s3:
///     fn::invoke:
///       function: aws:getService
///       arguments:
///         reverseDnsName: com.amazonaws.us-gov-west-1.waf
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_service_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:index/getService:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}

pulumi.Output<GetServiceResult> getServiceOutput(
  GetServiceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:index/getService:getService',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServiceResult.fromMap);
}

/// Use this data source to create a Service Principal Name for a service in a given region. Service Principal Names should always end in the standard global format: `{servicename}.amazonaws.com`. However, in some AWS partitions, AWS may expect a different format.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getServicePrincipal({
///     serviceName: "s3",
/// });
/// const test = aws.getServicePrincipal({
///     serviceName: "s3",
///     region: "us-iso-east-1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_service_principal(service_name="s3")
/// test = aws.get_service_principal(service_name="s3",
///     region="us-iso-east-1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetServicePrincipal.Invoke(new()
///     {
///         ServiceName = "s3",
///     });
///
///     var test = Aws.GetServicePrincipal.Invoke(new()
///     {
///         ServiceName = "s3",
///         Region = "us-iso-east-1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := aws.GetServicePrincipal(ctx, &aws.GetServicePrincipalArgs{
/// 			ServiceName: "s3",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = aws.GetServicePrincipal(ctx, &aws.GetServicePrincipalArgs{
/// 			ServiceName: "s3",
/// 			Region:      pulumi.StringRef("us-iso-east-1"),
/// 		}, nil)
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
/// data "aws_getserviceprincipal" "current" {
///   service_name = "s3"
/// }
/// data "aws_getserviceprincipal" "test" {
///   service_name = "s3"
///   region       = "us-iso-east-1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetServicePrincipalArgs;
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
///         final var current = AwsFunctions.getServicePrincipal(GetServicePrincipalArgs.builder()
///             .serviceName("s3")
///             .build());
///
///         final var test = AwsFunctions.getServicePrincipal(GetServicePrincipalArgs.builder()
///             .serviceName("s3")
///             .region("us-iso-east-1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getServicePrincipal
///       arguments:
///         serviceName: s3
///   test:
///     fn::invoke:
///       function: aws:getServicePrincipal
///       arguments:
///         serviceName: s3
///         region: us-iso-east-1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_service_principal_get_service_principal_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServicePrincipalResult> getServicePrincipal(
  GetServicePrincipalArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:index/getServicePrincipal:getServicePrincipal',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServicePrincipalResult.fromMap(result);
}

pulumi.Output<GetServicePrincipalResult> getServicePrincipalOutput(
  GetServicePrincipalArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:index/getServicePrincipal:getServicePrincipal',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServicePrincipalResult.fromMap);
}

/// Trims the path prefix from an IAM role ARN.
/// This function can be used when services require role ARNs to be passed without a path.
///
/// See the [AWS IAM documentation](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awsidentityandaccessmanagementiam.html#awsidentityandaccessmanagementiam-resources-for-iam-policies) for additional information on IAM role ARNs.
///
/// ## Signature
///
/// ```text
/// trim_iam_role_path(arn string) string
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_trim_iam_role_path_trim_iam_role_path_args_doc}
/// [arn] Value for the `arn` invoke input.
/// [options] Invoke options controlling this call.
Future<String> trimIamRolePath(
  pulumi.Input<String> arn,
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final value = await deployment.invokeSingle<dynamic>(
    'aws:index/trimIamRolePath:trimIamRolePath',
    TrimIamRolePathArgs(arn: arn, ).toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return value as String;
}

pulumi.Output<String> trimIamRolePathOutput(
  pulumi.Input<String> arn,
  {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeSingleOutput<dynamic>(
    'aws:index/trimIamRolePath:trimIamRolePath',
    pulumi.Input.mapToInputs(TrimIamRolePathArgs(arn: arn, ).toMap()),
    options: options,
  ).apply<String>((value) => value as String);
}

/// Formats a User-Agent product for use with the `userAgent` argument in the `provider` block.
///
/// &gt; Functions cannot be used in the `terraform` block, meaning this utility cannot be used with the `providerMeta` `userAgent` argument.
///
/// ## Signature
///
/// ```text
/// user_agent(product_name string, product_version string, comment string) string
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_user_agent_user_agent_args_doc}
/// [productName] Value for the `productName` invoke input.
/// [productVersion] Value for the `productVersion` invoke input.
/// [comment] Value for the `comment` invoke input.
/// [options] Invoke options controlling this call.
Future<String> userAgent(
  pulumi.Input<String> productName,
  pulumi.Input<String> productVersion,
  pulumi.Input<String> comment,
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final value = await deployment.invokeSingle<dynamic>(
    'aws:index/userAgent:userAgent',
    UserAgentArgs(productName: productName, productVersion: productVersion, comment: comment, ).toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return value as String;
}

pulumi.Output<String> userAgentOutput(
  pulumi.Input<String> productName,
  pulumi.Input<String> productVersion,
  pulumi.Input<String> comment,
  {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeSingleOutput<dynamic>(
    'aws:index/userAgent:userAgent',
    pulumi.Input.mapToInputs(UserAgentArgs(productName: productName, productVersion: productVersion, comment: comment, ).toMap()),
    options: options,
  ).apply<String>((value) => value as String);
}
