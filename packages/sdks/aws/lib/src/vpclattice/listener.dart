import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_args.dart';
import 'listener_default_action.dart';
import 'listener_state.dart';

/// Resource for managing an AWS VPC Lattice Listener.
///
/// ## Example Usage
///
/// ### Fixed response action
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.vpclattice.Service("example", {name: "example"});
/// const exampleListener = new aws.vpclattice.Listener("example", {
///     defaultAction: {
///         fixedResponse: {
///             statusCode: 404,
///         },
///     },
///     name: "example",
///     protocol: "HTTPS",
///     serviceIdentifier: example.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpclattice.Service("example", name="example")
/// example_listener = aws.vpclattice.Listener("example",
///     default_action={
///         "fixed_response": {
///             "status_code": 404,
///         },
///     },
///     name="example",
///     protocol="HTTPS",
///     service_identifier=example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.VpcLattice.Service("example", new()
///     {
///         Name = "example",
///     });
///
///     var exampleListener = new Aws.VpcLattice.Listener("example", new()
///     {
///         DefaultAction = new Aws.VpcLattice.Inputs.ListenerDefaultActionArgs
///         {
///             FixedResponse = new Aws.VpcLattice.Inputs.ListenerDefaultActionFixedResponseArgs
///             {
///                 StatusCode = 404,
///             },
///         },
///         Name = "example",
///         Protocol = "HTTPS",
///         ServiceIdentifier = example.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpclattice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := vpclattice.NewService(ctx, "example", &vpclattice.ServiceArgs{
/// 			Name: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpclattice.NewListener(ctx, "example", &vpclattice.ListenerArgs{
/// 			DefaultAction: &vpclattice.ListenerDefaultActionArgs{
/// 				FixedResponse: &vpclattice.ListenerDefaultActionFixedResponseArgs{
/// 					StatusCode: pulumi.Int(404),
/// 				},
/// 			},
/// 			Name:              pulumi.String("example"),
/// 			Protocol:          pulumi.String("HTTPS"),
/// 			ServiceIdentifier: example.ID().ToIDOutput().ToStringOutput(),
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
/// resource "aws_vpclattice_service" "example" {
///   name = "example"
/// }
/// resource "aws_vpclattice_listener" "example" {
///   default_action = {
///     fixed_response = {
///       status_code = 404
///     }
///   }
///   name               = "example"
///   protocol           = "HTTPS"
///   service_identifier = aws_vpclattice_service.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.vpclattice.Service;
/// import com.pulumi.aws.vpclattice.ServiceArgs;
/// import com.pulumi.aws.vpclattice.Listener;
/// import com.pulumi.aws.vpclattice.ListenerArgs;
/// import com.pulumi.aws.vpclattice.inputs.ListenerDefaultActionArgs;
/// import com.pulumi.aws.vpclattice.inputs.ListenerDefaultActionFixedResponseArgs;
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
///         var example = new Service("example", ServiceArgs.builder()
///             .name("example")
///             .build());
///
///         var exampleListener = new Listener("exampleListener", ListenerArgs.builder()
///             .defaultAction(ListenerDefaultActionArgs.builder()
///                 .fixedResponse(ListenerDefaultActionFixedResponseArgs.builder()
///                     .statusCode(404)
///                     .build())
///                 .build())
///             .name("example")
///             .protocol("HTTPS")
///             .serviceIdentifier(example.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:vpclattice:Service
///     properties:
///       name: example
///   exampleListener:
///     type: aws:vpclattice:Listener
///     name: example
///     properties:
///       defaultAction:
///         fixedResponse:
///           statusCode: 404
///       name: example
///       protocol: HTTPS
///       serviceIdentifier: ${example.id}
/// ```
///
///
/// ### Forward action
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.vpclattice.Service("example", {name: "example"});
/// const exampleTargetGroup = new aws.vpclattice.TargetGroup("example", {
///     config: {
///         port: 80,
///         protocol: "HTTP",
///         vpcIdentifier: exampleAwsVpc.id,
///     },
///     name: "example-target-group-1",
///     type: "INSTANCE",
/// });
/// const exampleListener = new aws.vpclattice.Listener("example", {
///     defaultAction: {
///         forwards: [{
///             targetGroups: [{
///                 targetGroupIdentifier: exampleTargetGroup.id,
///             }],
///         }],
///     },
///     name: "example",
///     protocol: "HTTP",
///     serviceIdentifier: example.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpclattice.Service("example", name="example")
/// example_target_group = aws.vpclattice.TargetGroup("example",
///     config={
///         "port": 80,
///         "protocol": "HTTP",
///         "vpc_identifier": example_aws_vpc["id"],
///     },
///     name="example-target-group-1",
///     type="INSTANCE")
/// example_listener = aws.vpclattice.Listener("example",
///     default_action={
///         "forwards": [{
///             "target_groups": [{
///                 "target_group_identifier": example_target_group.id,
///             }],
///         }],
///     },
///     name="example",
///     protocol="HTTP",
///     service_identifier=example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.VpcLattice.Service("example", new()
///     {
///         Name = "example",
///     });
///
///     var exampleTargetGroup = new Aws.VpcLattice.TargetGroup("example", new()
///     {
///         Config = new Aws.VpcLattice.Inputs.TargetGroupConfigArgs
///         {
///             Port = 80,
///             Protocol = "HTTP",
///             VpcIdentifier = exampleAwsVpc.Id,
///         },
///         Name = "example-target-group-1",
///         Type = "INSTANCE",
///     });
///
///     var exampleListener = new Aws.VpcLattice.Listener("example", new()
///     {
///         DefaultAction = new Aws.VpcLattice.Inputs.ListenerDefaultActionArgs
///         {
///             Forwards = new[]
///             {
///                 new Aws.VpcLattice.Inputs.ListenerDefaultActionForwardArgs
///                 {
///                     TargetGroups = new[]
///                     {
///                         new Aws.VpcLattice.Inputs.ListenerDefaultActionForwardTargetGroupArgs
///                         {
///                             TargetGroupIdentifier = exampleTargetGroup.Id,
///                         },
///                     },
///                 },
///             },
///         },
///         Name = "example",
///         Protocol = "HTTP",
///         ServiceIdentifier = example.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpclattice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := vpclattice.NewService(ctx, "example", &vpclattice.ServiceArgs{
/// 			Name: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleTargetGroup, err := vpclattice.NewTargetGroup(ctx, "example", &vpclattice.TargetGroupArgs{
/// 			Config: &vpclattice.TargetGroupConfigArgs{
/// 				Port:          pulumi.Int(80),
/// 				Protocol:      pulumi.String("HTTP"),
/// 				VpcIdentifier: pulumi.Any(exampleAwsVpc.Id),
/// 			},
/// 			Name: pulumi.String("example-target-group-1"),
/// 			Type: pulumi.String("INSTANCE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpclattice.NewListener(ctx, "example", &vpclattice.ListenerArgs{
/// 			DefaultAction: &vpclattice.ListenerDefaultActionArgs{
/// 				Forwards: vpclattice.ListenerDefaultActionForwardArray{
/// 					&vpclattice.ListenerDefaultActionForwardArgs{
/// 						TargetGroups: vpclattice.ListenerDefaultActionForwardTargetGroupArray{
/// 							&vpclattice.ListenerDefaultActionForwardTargetGroupArgs{
/// 								TargetGroupIdentifier: exampleTargetGroup.ID().ToIDOutput().ToStringOutput(),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Name:              pulumi.String("example"),
/// 			Protocol:          pulumi.String("HTTP"),
/// 			ServiceIdentifier: example.ID().ToIDOutput().ToStringOutput(),
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
/// resource "aws_vpclattice_service" "example" {
///   name = "example"
/// }
/// resource "aws_vpclattice_targetgroup" "example" {
///   config = {
///     port           = 80
///     protocol       = "HTTP"
///     vpc_identifier = exampleAwsVpc.id
///   }
///   name = "example-target-group-1"
///   type = "INSTANCE"
/// }
/// resource "aws_vpclattice_listener" "example" {
///   default_action = {
///     forwards = [{
///       "targetGroups" = [{
///         "targetGroupIdentifier" = aws_vpclattice_targetgroup.example.id
///       }]
///     }]
///   }
///   name               = "example"
///   protocol           = "HTTP"
///   service_identifier = aws_vpclattice_service.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.vpclattice.Service;
/// import com.pulumi.aws.vpclattice.ServiceArgs;
/// import com.pulumi.aws.vpclattice.TargetGroup;
/// import com.pulumi.aws.vpclattice.TargetGroupArgs;
/// import com.pulumi.aws.vpclattice.inputs.TargetGroupConfigArgs;
/// import com.pulumi.aws.vpclattice.Listener;
/// import com.pulumi.aws.vpclattice.ListenerArgs;
/// import com.pulumi.aws.vpclattice.inputs.ListenerDefaultActionArgs;
/// import com.pulumi.aws.vpclattice.inputs.ListenerDefaultActionForwardArgs;
/// import com.pulumi.aws.vpclattice.inputs.ListenerDefaultActionForwardTargetGroupArgs;
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
///         var example = new Service("example", ServiceArgs.builder()
///             .name("example")
///             .build());
///
///         var exampleTargetGroup = new TargetGroup("exampleTargetGroup", TargetGroupArgs.builder()
///             .config(TargetGroupConfigArgs.builder()
///                 .port(80)
///                 .protocol("HTTP")
///                 .vpcIdentifier(exampleAwsVpc.id())
///                 .build())
///             .name("example-target-group-1")
///             .type("INSTANCE")
///             .build());
///
///         var exampleListener = new Listener("exampleListener", ListenerArgs.builder()
///             .defaultAction(ListenerDefaultActionArgs.builder()
///                 .forwards(ListenerDefaultActionForwardArgs.builder()
///                     .targetGroups(ListenerDefaultActionForwardTargetGroupArgs.builder()
///                         .targetGroupIdentifier(exampleTargetGroup.id())
///                         .build())
///                     .build())
///                 .build())
///             .name("example")
///             .protocol("HTTP")
///             .serviceIdentifier(example.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:vpclattice:Service
///     properties:
///       name: example
///   exampleTargetGroup:
///     type: aws:vpclattice:TargetGroup
///     name: example
///     properties:
///       config:
///         port: 80
///         protocol: HTTP
///         vpcIdentifier: ${exampleAwsVpc.id}
///       name: example-target-group-1
///       type: INSTANCE
///   exampleListener:
///     type: aws:vpclattice:Listener
///     name: example
///     properties:
///       defaultAction:
///         forwards:
///           - targetGroups:
///               - targetGroupIdentifier: ${exampleTargetGroup.id}
///       name: example
///       protocol: HTTP
///       serviceIdentifier: ${example.id}
/// ```
///
///
/// ### Forward action with weighted target groups
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.vpclattice.Service("example", {name: "example"});
/// const example1 = new aws.vpclattice.TargetGroup("example1", {
///     config: {
///         port: 80,
///         protocol: "HTTP",
///         vpcIdentifier: exampleAwsVpc.id,
///     },
///     name: "example-target-group-1",
///     type: "INSTANCE",
/// });
/// const example2 = new aws.vpclattice.TargetGroup("example2", {
///     config: {
///         port: 8080,
///         protocol: "HTTP",
///         vpcIdentifier: exampleAwsVpc.id,
///     },
///     name: "example-target-group-2",
///     type: "INSTANCE",
/// });
/// const exampleListener = new aws.vpclattice.Listener("example", {
///     defaultAction: {
///         forwards: [{
///             targetGroups: [
///                 {
///                     targetGroupIdentifier: example1.id,
///                     weight: 80,
///                 },
///                 {
///                     targetGroupIdentifier: example2.id,
///                     weight: 20,
///                 },
///             ],
///         }],
///     },
///     name: "example",
///     protocol: "HTTP",
///     serviceIdentifier: example.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpclattice.Service("example", name="example")
/// example1 = aws.vpclattice.TargetGroup("example1",
///     config={
///         "port": 80,
///         "protocol": "HTTP",
///         "vpc_identifier": example_aws_vpc["id"],
///     },
///     name="example-target-group-1",
///     type="INSTANCE")
/// example2 = aws.vpclattice.TargetGroup("example2",
///     config={
///         "port": 8080,
///         "protocol": "HTTP",
///         "vpc_identifier": example_aws_vpc["id"],
///     },
///     name="example-target-group-2",
///     type="INSTANCE")
/// example_listener = aws.vpclattice.Listener("example",
///     default_action={
///         "forwards": [{
///             "target_groups": [
///                 {
///                     "target_group_identifier": example1.id,
///                     "weight": 80,
///                 },
///                 {
///                     "target_group_identifier": example2.id,
///                     "weight": 20,
///                 },
///             ],
///         }],
///     },
///     name="example",
///     protocol="HTTP",
///     service_identifier=example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.VpcLattice.Service("example", new()
///     {
///         Name = "example",
///     });
///
///     var example1 = new Aws.VpcLattice.TargetGroup("example1", new()
///     {
///         Config = new Aws.VpcLattice.Inputs.TargetGroupConfigArgs
///         {
///             Port = 80,
///             Protocol = "HTTP",
///             VpcIdentifier = exampleAwsVpc.Id,
///         },
///         Name = "example-target-group-1",
///         Type = "INSTANCE",
///     });
///
///     var example2 = new Aws.VpcLattice.TargetGroup("example2", new()
///     {
///         Config = new Aws.VpcLattice.Inputs.TargetGroupConfigArgs
///         {
///             Port = 8080,
///             Protocol = "HTTP",
///             VpcIdentifier = exampleAwsVpc.Id,
///         },
///         Name = "example-target-group-2",
///         Type = "INSTANCE",
///     });
///
///     var exampleListener = new Aws.VpcLattice.Listener("example", new()
///     {
///         DefaultAction = new Aws.VpcLattice.Inputs.ListenerDefaultActionArgs
///         {
///             Forwards = new[]
///             {
///                 new Aws.VpcLattice.Inputs.ListenerDefaultActionForwardArgs
///                 {
///                     TargetGroups = new[]
///                     {
///                         new Aws.VpcLattice.Inputs.ListenerDefaultActionForwardTargetGroupArgs
///                         {
///                             TargetGroupIdentifier = example1.Id,
///                             Weight = 80,
///                         },
///                         new Aws.VpcLattice.Inputs.ListenerDefaultActionForwardTargetGroupArgs
///                         {
///                             TargetGroupIdentifier = example2.Id,
///                             Weight = 20,
///                         },
///                     },
///                 },
///             },
///         },
///         Name = "example",
///         Protocol = "HTTP",
///         ServiceIdentifier = example.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpclattice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := vpclattice.NewService(ctx, "example", &vpclattice.ServiceArgs{
/// 			Name: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example1, err := vpclattice.NewTargetGroup(ctx, "example1", &vpclattice.TargetGroupArgs{
/// 			Config: &vpclattice.TargetGroupConfigArgs{
/// 				Port:          pulumi.Int(80),
/// 				Protocol:      pulumi.String("HTTP"),
/// 				VpcIdentifier: pulumi.Any(exampleAwsVpc.Id),
/// 			},
/// 			Name: pulumi.String("example-target-group-1"),
/// 			Type: pulumi.String("INSTANCE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example2, err := vpclattice.NewTargetGroup(ctx, "example2", &vpclattice.TargetGroupArgs{
/// 			Config: &vpclattice.TargetGroupConfigArgs{
/// 				Port:          pulumi.Int(8080),
/// 				Protocol:      pulumi.String("HTTP"),
/// 				VpcIdentifier: pulumi.Any(exampleAwsVpc.Id),
/// 			},
/// 			Name: pulumi.String("example-target-group-2"),
/// 			Type: pulumi.String("INSTANCE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpclattice.NewListener(ctx, "example", &vpclattice.ListenerArgs{
/// 			DefaultAction: &vpclattice.ListenerDefaultActionArgs{
/// 				Forwards: vpclattice.ListenerDefaultActionForwardArray{
/// 					&vpclattice.ListenerDefaultActionForwardArgs{
/// 						TargetGroups: vpclattice.ListenerDefaultActionForwardTargetGroupArray{
/// 							&vpclattice.ListenerDefaultActionForwardTargetGroupArgs{
/// 								TargetGroupIdentifier: example1.ID().ToIDOutput().ToStringOutput(),
/// 								Weight:                pulumi.Int(80),
/// 							},
/// 							&vpclattice.ListenerDefaultActionForwardTargetGroupArgs{
/// 								TargetGroupIdentifier: example2.ID().ToIDOutput().ToStringOutput(),
/// 								Weight:                pulumi.Int(20),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Name:              pulumi.String("example"),
/// 			Protocol:          pulumi.String("HTTP"),
/// 			ServiceIdentifier: example.ID().ToIDOutput().ToStringOutput(),
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
/// resource "aws_vpclattice_service" "example" {
///   name = "example"
/// }
/// resource "aws_vpclattice_targetgroup" "example1" {
///   config = {
///     port           = 80
///     protocol       = "HTTP"
///     vpc_identifier = exampleAwsVpc.id
///   }
///   name = "example-target-group-1"
///   type = "INSTANCE"
/// }
/// resource "aws_vpclattice_targetgroup" "example2" {
///   config = {
///     port           = 8080
///     protocol       = "HTTP"
///     vpc_identifier = exampleAwsVpc.id
///   }
///   name = "example-target-group-2"
///   type = "INSTANCE"
/// }
/// resource "aws_vpclattice_listener" "example" {
///   default_action = {
///     forwards = [{
///       "targetGroups" = [{
///         "targetGroupIdentifier" = aws_vpclattice_targetgroup.example1.id
///         "weight"                = 80
///         }, {
///         "targetGroupIdentifier" = aws_vpclattice_targetgroup.example2.id
///         "weight"                = 20
///       }]
///     }]
///   }
///   name               = "example"
///   protocol           = "HTTP"
///   service_identifier = aws_vpclattice_service.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.vpclattice.Service;
/// import com.pulumi.aws.vpclattice.ServiceArgs;
/// import com.pulumi.aws.vpclattice.TargetGroup;
/// import com.pulumi.aws.vpclattice.TargetGroupArgs;
/// import com.pulumi.aws.vpclattice.inputs.TargetGroupConfigArgs;
/// import com.pulumi.aws.vpclattice.Listener;
/// import com.pulumi.aws.vpclattice.ListenerArgs;
/// import com.pulumi.aws.vpclattice.inputs.ListenerDefaultActionArgs;
/// import com.pulumi.aws.vpclattice.inputs.ListenerDefaultActionForwardArgs;
/// import com.pulumi.aws.vpclattice.inputs.ListenerDefaultActionForwardTargetGroupArgs;
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
///         var example = new Service("example", ServiceArgs.builder()
///             .name("example")
///             .build());
///
///         var example1 = new TargetGroup("example1", TargetGroupArgs.builder()
///             .config(TargetGroupConfigArgs.builder()
///                 .port(80)
///                 .protocol("HTTP")
///                 .vpcIdentifier(exampleAwsVpc.id())
///                 .build())
///             .name("example-target-group-1")
///             .type("INSTANCE")
///             .build());
///
///         var example2 = new TargetGroup("example2", TargetGroupArgs.builder()
///             .config(TargetGroupConfigArgs.builder()
///                 .port(8080)
///                 .protocol("HTTP")
///                 .vpcIdentifier(exampleAwsVpc.id())
///                 .build())
///             .name("example-target-group-2")
///             .type("INSTANCE")
///             .build());
///
///         var exampleListener = new Listener("exampleListener", ListenerArgs.builder()
///             .defaultAction(ListenerDefaultActionArgs.builder()
///                 .forwards(ListenerDefaultActionForwardArgs.builder()
///                     .targetGroups(
///                         ListenerDefaultActionForwardTargetGroupArgs.builder()
///                             .targetGroupIdentifier(example1.id())
///                             .weight(80)
///                             .build(),
///                         ListenerDefaultActionForwardTargetGroupArgs.builder()
///                             .targetGroupIdentifier(example2.id())
///                             .weight(20)
///                             .build())
///                     .build())
///                 .build())
///             .name("example")
///             .protocol("HTTP")
///             .serviceIdentifier(example.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:vpclattice:Service
///     properties:
///       name: example
///   example1:
///     type: aws:vpclattice:TargetGroup
///     properties:
///       config:
///         port: 80
///         protocol: HTTP
///         vpcIdentifier: ${exampleAwsVpc.id}
///       name: example-target-group-1
///       type: INSTANCE
///   example2:
///     type: aws:vpclattice:TargetGroup
///     properties:
///       config:
///         port: 8080
///         protocol: HTTP
///         vpcIdentifier: ${exampleAwsVpc.id}
///       name: example-target-group-2
///       type: INSTANCE
///   exampleListener:
///     type: aws:vpclattice:Listener
///     name: example
///     properties:
///       defaultAction:
///         forwards:
///           - targetGroups:
///               - targetGroupIdentifier: ${example1.id}
///                 weight: 80
///               - targetGroupIdentifier: ${example2.id}
///                 weight: 20
///       name: example
///       protocol: HTTP
///       serviceIdentifier: ${example.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC Lattice Listener using the `listenerId` of the listener and the `id` of the VPC Lattice service combined with a `/` character. For example:
///
/// ```sh
/// $ pulumi import aws:vpclattice/listener:Listener example svc-1a2b3c4d/listener-987654321
/// ```
class Listener extends pulumi.CustomResource {
  /// ARN of the listener.
  late final pulumi.Output<String> arn;
  /// Date and time that the listener was created, specified in ISO-8601 format.
  late final pulumi.Output<String> createdAt;
  /// Default action block for the default listener rule. Default action blocks are defined below.
  late final pulumi.Output<ListenerDefaultAction> defaultAction;
  /// Date and time that the listener was last updated, specified in ISO-8601 format.
  late final pulumi.Output<String> lastUpdatedAt;
  /// Standalone ID of the listener, e.g. `listener-0a1b2c3d4e5f6g`.
  late final pulumi.Output<String> listenerId;
  /// Name of the listener. A listener name must be unique within a service. Valid characters are a-z, 0-9, and hyphens (-). You can't use a hyphen as the first or last character, or immediately after another hyphen.
  late final pulumi.Output<String> name;
  /// Listener port. You can specify a value from 1 to 65535. If `port` is not specified and `protocol` is HTTP, the value will default to 80. If `port` is not specified and `protocol` is HTTPS, the value will default to 443.
  late final pulumi.Output<int> port;
  /// Protocol for the listener. Supported values are `HTTP`, `HTTPS` or `TLS_PASSTHROUGH`
  late final pulumi.Output<String> protocol;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of the VPC Lattice service. You must include either the `serviceArn` or `serviceIdentifier` arguments.
  late final pulumi.Output<String> serviceArn;
  /// ID of the VPC Lattice service. You must include either the `serviceArn` or `serviceIdentifier` arguments.
  /// &gt; **NOTE:** You must specify one of the following arguments: `serviceArn` or `serviceIdentifier`.
  late final pulumi.Output<String> serviceIdentifier;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Listener].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Listener]. {@macro pulumi_vpclattice_listener_listener_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Listener(
    String name, {
    ListenerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:vpclattice/listener:Listener',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    createdAt = registerOutput<String>('createdAt');
    defaultAction = registerOutput<ListenerDefaultAction>('defaultAction', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListenerDefaultAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lastUpdatedAt = registerOutput<String>('lastUpdatedAt');
    listenerId = registerOutput<String>('listenerId');
    this.name = registerOutput<String>('name');
    port = registerOutput<int>('port');
    protocol = registerOutput<String>('protocol');
    region = registerOutput<String>('region');
    serviceArn = registerOutput<String>('serviceArn');
    serviceIdentifier = registerOutput<String>('serviceIdentifier');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [Listener] resource's state with the given [name] and [id].
  static Listener get(
    String name,
    pulumi.Input<String> id, {
    ListenerState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Listener._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Listener._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:vpclattice/listener:Listener',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    createdAt = registerOutput<String>('createdAt');
    defaultAction = registerOutput<ListenerDefaultAction>('defaultAction', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListenerDefaultAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lastUpdatedAt = registerOutput<String>('lastUpdatedAt');
    listenerId = registerOutput<String>('listenerId');
    this.name = registerOutput<String>('name');
    port = registerOutput<int>('port');
    protocol = registerOutput<String>('protocol');
    region = registerOutput<String>('region');
    serviceArn = registerOutput<String>('serviceArn');
    serviceIdentifier = registerOutput<String>('serviceIdentifier');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [Listener] resource.
  Listener.reference(String urn)
    : super(
        'aws:vpclattice/listener:Listener',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    createdAt = registerOutput<String>('createdAt');
    defaultAction = registerOutput<ListenerDefaultAction>('defaultAction', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListenerDefaultAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lastUpdatedAt = registerOutput<String>('lastUpdatedAt');
    listenerId = registerOutput<String>('listenerId');
    this.name = registerOutput<String>('name');
    port = registerOutput<int>('port');
    protocol = registerOutput<String>('protocol');
    region = registerOutput<String>('region');
    serviceArn = registerOutput<String>('serviceArn');
    serviceIdentifier = registerOutput<String>('serviceIdentifier');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
