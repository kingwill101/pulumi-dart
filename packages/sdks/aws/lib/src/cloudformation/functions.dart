import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cloud_formation_type_args.dart';
import 'get_cloud_formation_type_result.dart';
import 'get_export_args.dart';
import 'get_export_result.dart';
import 'get_stack_args.dart';
import 'get_stack_result.dart';

/// Provides details about a CloudFormation Type.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.cloudformation.getCloudFormationType({
///     type: "RESOURCE",
///     typeName: "AWS::Athena::WorkGroup",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudformation.get_cloud_formation_type(type="RESOURCE",
///     type_name="AWS::Athena::WorkGroup")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.CloudFormation.GetCloudFormationType.Invoke(new()
///     {
///         Type = "RESOURCE",
///         TypeName = "AWS::Athena::WorkGroup",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudformation"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudformation.LookupCloudFormationType(ctx, &cloudformation.LookupCloudFormationTypeArgs{
/// 			Type:     pulumi.StringRef("RESOURCE"),
/// 			TypeName: pulumi.StringRef("AWS::Athena::WorkGroup"),
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
/// data "aws_cloudformation_getcloudformationtype" "example" {
///   type      = "RESOURCE"
///   type_name = "AWS::Athena::WorkGroup"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudformation.CloudformationFunctions;
/// import com.pulumi.aws.cloudformation.inputs.GetCloudFormationTypeArgs;
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
///         final var example = CloudformationFunctions.getCloudFormationType(GetCloudFormationTypeArgs.builder()
///             .type("RESOURCE")
///             .typeName("AWS::Athena::WorkGroup")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:cloudformation:getCloudFormationType
///       arguments:
///         type: RESOURCE
///         typeName: AWS::Athena::WorkGroup
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudformation_get_cloud_formation_type_get_cloud_formation_type_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCloudFormationTypeResult> getCloudFormationType(
  GetCloudFormationTypeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudformation/getCloudFormationType:getCloudFormationType',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCloudFormationTypeResult.fromMap(result);
}

/// The CloudFormation Export data source allows access to stack
/// exports specified in the [Output](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/outputs-section-structure.html) section of the Cloudformation Template using the optional Export Property.
///
/// &gt; Note: If you are trying to use a value from a Cloudformation Stack in the same deployment please use normal interpolation or Cloudformation Outputs.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const subnetId = aws.cloudformation.getExport({
///     name: "mySubnetIdExportName",
/// });
/// const web = new aws.ec2.Instance("web", {
///     ami: "ami-abb07bcb",
///     instanceType: aws.ec2.InstanceType.T2_Micro,
///     subnetId: subnetId.then(subnetId => subnetId.value),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// subnet_id = aws.cloudformation.get_export(name="mySubnetIdExportName")
/// web = aws.ec2.Instance("web",
///     ami="ami-abb07bcb",
///     instance_type=aws.ec2.InstanceType.T2_MICRO,
///     subnet_id=subnet_id.value)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var subnetId = Aws.CloudFormation.GetExport.Invoke(new()
///     {
///         Name = "mySubnetIdExportName",
///     });
///
///     var web = new Aws.Ec2.Instance("web", new()
///     {
///         Ami = "ami-abb07bcb",
///         InstanceType = Aws.Ec2.InstanceType.T2_Micro,
///         SubnetId = subnetId.Apply(getExportResult => getExportResult.Value),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudformation"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		subnetId, err := cloudformation.GetExport(ctx, &cloudformation.GetExportArgs{
/// 			Name: "mySubnetIdExportName",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewInstance(ctx, "web", &ec2.InstanceArgs{
/// 			Ami:          pulumi.String("ami-abb07bcb"),
/// 			InstanceType: pulumi.String(ec2.InstanceType_T2_Micro),
/// 			SubnetId:     pulumi.String(subnetId.Value),
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
/// data "aws_cloudformation_getexport" "subnetId" {
///   name = "mySubnetIdExportName"
/// }
///
/// resource "aws_ec2_instance" "web" {
///   ami           = "ami-abb07bcb"
///   instance_type = "t2.micro"
///   subnet_id     = data.aws_cloudformation_getexport.subnetId.value
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudformation.CloudformationFunctions;
/// import com.pulumi.aws.cloudformation.inputs.GetExportArgs;
/// import com.pulumi.aws.ec2.Instance;
/// import com.pulumi.aws.ec2.InstanceArgs;
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
///         final var subnetId = CloudformationFunctions.getExport(GetExportArgs.builder()
///             .name("mySubnetIdExportName")
///             .build());
///
///         var web = new Instance("web", InstanceArgs.builder()
///             .ami("ami-abb07bcb")
///             .instanceType("t2.micro")
///             .subnetId(subnetId.value())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   web:
///     type: aws:ec2:Instance
///     properties:
///       ami: ami-abb07bcb
///       instanceType: t2.micro
///       subnetId: ${subnetId.value}
/// variables:
///   subnetId:
///     fn::invoke:
///       function: aws:cloudformation:getExport
///       arguments:
///         name: mySubnetIdExportName
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudformation_get_export_get_export_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExportResult> getExport(
  GetExportArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudformation/getExport:getExport',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExportResult.fromMap(result);
}

/// The CloudFormation Stack data source allows access to stack
/// outputs and other useful data including the template body.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const network = aws.cloudformation.getStack({
///     name: "my-network-stack",
/// });
/// const web = new aws.ec2.Instance("web", {
///     ami: "ami-abb07bcb",
///     instanceType: aws.ec2.InstanceType.T2_Micro,
///     subnetId: network.then(network => network.outputs?.SubnetId),
///     tags: {
///         Name: "HelloWorld",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// network = aws.cloudformation.get_stack(name="my-network-stack")
/// web = aws.ec2.Instance("web",
///     ami="ami-abb07bcb",
///     instance_type=aws.ec2.InstanceType.T2_MICRO,
///     subnet_id=network.outputs["SubnetId"],
///     tags={
///         "Name": "HelloWorld",
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
///     var network = Aws.CloudFormation.GetStack.Invoke(new()
///     {
///         Name = "my-network-stack",
///     });
///
///     var web = new Aws.Ec2.Instance("web", new()
///     {
///         Ami = "ami-abb07bcb",
///         InstanceType = Aws.Ec2.InstanceType.T2_Micro,
///         SubnetId = network.Apply(getStackResult => getStackResult.Outputs?.SubnetId),
///         Tags =
///         {
///             { "Name", "HelloWorld" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudformation"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		network, err := cloudformation.LookupStack(ctx, &cloudformation.LookupStackArgs{
/// 			Name: "my-network-stack",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewInstance(ctx, "web", &ec2.InstanceArgs{
/// 			Ami:          pulumi.String("ami-abb07bcb"),
/// 			InstanceType: pulumi.String(ec2.InstanceType_T2_Micro),
/// 			SubnetId:     pulumi.String(network.Outputs.SubnetId),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("HelloWorld"),
/// 			},
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
/// data "aws_cloudformation_getstack" "network" {
///   name = "my-network-stack"
/// }
///
/// resource "aws_ec2_instance" "web" {
///   ami           = "ami-abb07bcb"
///   instance_type = "t2.micro"
///   subnet_id     = data.aws_cloudformation_getstack.network.outputs["SubnetId"]
///   tags = {
///     "Name" = "HelloWorld"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudformation.CloudformationFunctions;
/// import com.pulumi.aws.cloudformation.inputs.GetStackArgs;
/// import com.pulumi.aws.ec2.Instance;
/// import com.pulumi.aws.ec2.InstanceArgs;
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
///         final var network = CloudformationFunctions.getStack(GetStackArgs.builder()
///             .name("my-network-stack")
///             .build());
///
///         var web = new Instance("web", InstanceArgs.builder()
///             .ami("ami-abb07bcb")
///             .instanceType("t2.micro")
///             .subnetId(network.outputs().SubnetId())
///             .tags(Map.of("Name", "HelloWorld"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   web:
///     type: aws:ec2:Instance
///     properties:
///       ami: ami-abb07bcb
///       instanceType: t2.micro
///       subnetId: ${network.outputs.SubnetId}
///       tags:
///         Name: HelloWorld
/// variables:
///   network:
///     fn::invoke:
///       function: aws:cloudformation:getStack
///       arguments:
///         name: my-network-stack
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudformation_get_stack_get_stack_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStackResult> getStack(
  GetStackArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudformation/getStack:getStack',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStackResult.fromMap(result);
}
