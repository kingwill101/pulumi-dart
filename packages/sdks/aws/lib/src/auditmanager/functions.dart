import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_args.dart';
import 'get_control_result.dart';
import 'get_framework_args.dart';
import 'get_framework_result.dart';

/// Data source for managing an AWS Audit Manager Control.
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
/// const example = aws.auditmanager.getControl({
///     name: "1. Risk Management",
///     type: "Standard",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.auditmanager.get_control(name="1. Risk Management",
///     type="Standard")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Auditmanager.GetControl.Invoke(new()
///     {
///         Name = "1. Risk Management",
///         Type = "Standard",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/auditmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := auditmanager.LookupControl(ctx, &auditmanager.LookupControlArgs{
/// 			Name: "1. Risk Management",
/// 			Type: "Standard",
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
/// data "aws_auditmanager_getcontrol" "example" {
///   name = "1. Risk Management"
///   type = "Standard"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.auditmanager.AuditmanagerFunctions;
/// import com.pulumi.aws.auditmanager.inputs.GetControlArgs;
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
///         final var example = AuditmanagerFunctions.getControl(GetControlArgs.builder()
///             .name("1. Risk Management")
///             .type("Standard")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:auditmanager:getControl
///       arguments:
///         name: 1. Risk Management
///         type: Standard
/// ```
///
///
/// ### With Framework Resource
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.auditmanager.getControl({
///     name: "1. Risk Management",
///     type: "Standard",
/// });
/// const example2 = aws.auditmanager.getControl({
///     name: "2. Personnel",
///     type: "Standard",
/// });
/// const exampleFramework = new aws.auditmanager.Framework("example", {
///     name: "example",
///     controlSets: [
///         {
///             name: "example",
///             controls: [{
///                 id: example.then(example => example.id),
///             }],
///         },
///         {
///             name: "example2",
///             controls: [{
///                 id: example2.then(example2 => example2.id),
///             }],
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.auditmanager.get_control(name="1. Risk Management",
///     type="Standard")
/// example2 = aws.auditmanager.get_control(name="2. Personnel",
///     type="Standard")
/// example_framework = aws.auditmanager.Framework("example",
///     name="example",
///     control_sets=[
///         {
///             "name": "example",
///             "controls": [{
///                 "id": example.id,
///             }],
///         },
///         {
///             "name": "example2",
///             "controls": [{
///                 "id": example2.id,
///             }],
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Auditmanager.GetControl.Invoke(new()
///     {
///         Name = "1. Risk Management",
///         Type = "Standard",
///     });
///
///     var example2 = Aws.Auditmanager.GetControl.Invoke(new()
///     {
///         Name = "2. Personnel",
///         Type = "Standard",
///     });
///
///     var exampleFramework = new Aws.Auditmanager.Framework("example", new()
///     {
///         Name = "example",
///         ControlSets = new[]
///         {
///             new Aws.Auditmanager.Inputs.FrameworkControlSetArgs
///             {
///                 Name = "example",
///                 Controls = new[]
///                 {
///                     new Aws.Auditmanager.Inputs.FrameworkControlSetControlArgs
///                     {
///                         Id = example.Apply(getControlResult => getControlResult.Id),
///                     },
///                 },
///             },
///             new Aws.Auditmanager.Inputs.FrameworkControlSetArgs
///             {
///                 Name = "example2",
///                 Controls = new[]
///                 {
///                     new Aws.Auditmanager.Inputs.FrameworkControlSetControlArgs
///                     {
///                         Id = example2.Apply(getControlResult => getControlResult.Id),
///                     },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/auditmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := auditmanager.LookupControl(ctx, &auditmanager.LookupControlArgs{
/// 			Name: "1. Risk Management",
/// 			Type: "Standard",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example2, err := auditmanager.LookupControl(ctx, &auditmanager.LookupControlArgs{
/// 			Name: "2. Personnel",
/// 			Type: "Standard",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = auditmanager.NewFramework(ctx, "example", &auditmanager.FrameworkArgs{
/// 			Name: pulumi.String("example"),
/// 			ControlSets: auditmanager.FrameworkControlSetArray{
/// 				&auditmanager.FrameworkControlSetArgs{
/// 					Name: pulumi.String("example"),
/// 					Controls: auditmanager.FrameworkControlSetControlArray{
/// 						&auditmanager.FrameworkControlSetControlArgs{
/// 							Id: pulumi.String(example.Id),
/// 						},
/// 					},
/// 				},
/// 				&auditmanager.FrameworkControlSetArgs{
/// 					Name: pulumi.String("example2"),
/// 					Controls: auditmanager.FrameworkControlSetControlArray{
/// 						&auditmanager.FrameworkControlSetControlArgs{
/// 							Id: pulumi.String(example2.Id),
/// 						},
/// 					},
/// 				},
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
/// data "aws_auditmanager_getcontrol" "example" {
///   name = "1. Risk Management"
///   type = "Standard"
/// }
/// data "aws_auditmanager_getcontrol" "example2" {
///   name = "2. Personnel"
///   type = "Standard"
/// }
///
/// resource "aws_auditmanager_framework" "example" {
///   name = "example"
///   control_sets {
///     name = "example"
///     controls {
///       id = data.aws_auditmanager_getcontrol.example.id
///     }
///   }
///   control_sets {
///     name = "example2"
///     controls {
///       id = data.aws_auditmanager_getcontrol.example2.id
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.auditmanager.AuditmanagerFunctions;
/// import com.pulumi.aws.auditmanager.inputs.GetControlArgs;
/// import com.pulumi.aws.auditmanager.Framework;
/// import com.pulumi.aws.auditmanager.FrameworkArgs;
/// import com.pulumi.aws.auditmanager.inputs.FrameworkControlSetArgs;
/// import com.pulumi.aws.auditmanager.inputs.FrameworkControlSetControlArgs;
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
///         final var example = AuditmanagerFunctions.getControl(GetControlArgs.builder()
///             .name("1. Risk Management")
///             .type("Standard")
///             .build());
///
///         final var example2 = AuditmanagerFunctions.getControl(GetControlArgs.builder()
///             .name("2. Personnel")
///             .type("Standard")
///             .build());
///
///         var exampleFramework = new Framework("exampleFramework", FrameworkArgs.builder()
///             .name("example")
///             .controlSets(
///                 FrameworkControlSetArgs.builder()
///                     .name("example")
///                     .controls(FrameworkControlSetControlArgs.builder()
///                         .id(example.id())
///                         .build())
///                     .build(),
///                 FrameworkControlSetArgs.builder()
///                     .name("example2")
///                     .controls(FrameworkControlSetControlArgs.builder()
///                         .id(example2.id())
///                         .build())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleFramework:
///     type: aws:auditmanager:Framework
///     name: example
///     properties:
///       name: example
///       controlSets:
///         - name: example
///           controls:
///             - id: ${example.id}
///         - name: example2
///           controls:
///             - id: ${example2.id}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:auditmanager:getControl
///       arguments:
///         name: 1. Risk Management
///         type: Standard
///   example2:
///     fn::invoke:
///       function: aws:auditmanager:getControl
///       arguments:
///         name: 2. Personnel
///         type: Standard
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_auditmanager_get_control_get_control_args_doc}
/// [options] Invoke options controlling this call.
Future<GetControlResult> getControl(
  GetControlArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:auditmanager/getControl:getControl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetControlResult.fromMap(result);
}

/// Data source for managing an AWS Audit Manager Framework.
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
/// const example = aws.auditmanager.getFramework({
///     name: "Essential Eight",
///     frameworkType: "Standard",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.auditmanager.get_framework(name="Essential Eight",
///     framework_type="Standard")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Auditmanager.GetFramework.Invoke(new()
///     {
///         Name = "Essential Eight",
///         FrameworkType = "Standard",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/auditmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := auditmanager.LookupFramework(ctx, &auditmanager.LookupFrameworkArgs{
/// 			Name:          "Essential Eight",
/// 			FrameworkType: "Standard",
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
/// data "aws_auditmanager_getframework" "example" {
///   name           = "Essential Eight"
///   framework_type = "Standard"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.auditmanager.AuditmanagerFunctions;
/// import com.pulumi.aws.auditmanager.inputs.GetFrameworkArgs;
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
///         final var example = AuditmanagerFunctions.getFramework(GetFrameworkArgs.builder()
///             .name("Essential Eight")
///             .frameworkType("Standard")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:auditmanager:getFramework
///       arguments:
///         name: Essential Eight
///         frameworkType: Standard
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_auditmanager_get_framework_get_framework_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFrameworkResult> getFramework(
  GetFrameworkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:auditmanager/getFramework:getFramework',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFrameworkResult.fromMap(result);
}
