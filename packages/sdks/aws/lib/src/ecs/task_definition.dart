import 'package:pulumi/pulumi.dart' as pulumi;
import 'task_definition_args.dart';
import 'task_definition_ephemeral_storage.dart';
import 'task_definition_placement_constraint.dart';
import 'task_definition_proxy_configuration.dart';
import 'task_definition_runtime_platform.dart';
import 'task_definition_state.dart';
import 'task_definition_volume.dart';

/// Manages a revision of an ECS task definition to be used in `aws.ecs.Service`.
///
/// ## Example Usage
///
/// ### Basic Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const service = new aws.ecs.TaskDefinition("service", {
///     placementConstraints: [{
///         type: "memberOf",
///         expression: "attribute:ecs.availability-zone in [us-west-2a, us-west-2b]",
///     }],
///     volumes: [{
///         name: "service-storage",
///         hostPath: "/ecs/service-storage",
///     }],
///     family: "service",
///     containerDefinitions: JSON.stringify([
///         {
///             name: "first",
///             image: "service-first",
///             cpu: 10,
///             memory: 512,
///             essential: true,
///             portMappings: [{
///                 containerPort: 80,
///                 hostPort: 80,
///             }],
///         },
///         {
///             name: "second",
///             image: "service-second",
///             cpu: 10,
///             memory: 256,
///             essential: true,
///             portMappings: [{
///                 containerPort: 443,
///                 hostPort: 443,
///             }],
///         },
///     ]),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// service = aws.ecs.TaskDefinition("service",
///     placement_constraints=[{
///         "type": "memberOf",
///         "expression": "attribute:ecs.availability-zone in [us-west-2a, us-west-2b]",
///     }],
///     volumes=[{
///         "name": "service-storage",
///         "host_path": "/ecs/service-storage",
///     }],
///     family="service",
///     container_definitions=json.dumps([
///         {
///             "name": "first",
///             "image": "service-first",
///             "cpu": 10,
///             "memory": 512,
///             "essential": True,
///             "portMappings": [{
///                 "containerPort": 80,
///                 "hostPort": 80,
///             }],
///         },
///         {
///             "name": "second",
///             "image": "service-second",
///             "cpu": 10,
///             "memory": 256,
///             "essential": True,
///             "portMappings": [{
///                 "containerPort": 443,
///                 "hostPort": 443,
///             }],
///         },
///     ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var service = new Aws.Ecs.TaskDefinition("service", new()
///     {
///         PlacementConstraints = new[]
///         {
///             new Aws.Ecs.Inputs.TaskDefinitionPlacementConstraintArgs
///             {
///                 Type = "memberOf",
///                 Expression = "attribute:ecs.availability-zone in [us-west-2a, us-west-2b]",
///             },
///         },
///         Volumes = new[]
///         {
///             new Aws.Ecs.Inputs.TaskDefinitionVolumeArgs
///             {
///                 Name = "service-storage",
///                 HostPath = "/ecs/service-storage",
///             },
///         },
///         Family = "service",
///         ContainerDefinitions = JsonSerializer.Serialize(new[]
///         {
///             new Dictionary<string, object?>
///             {
///                 ["name"] = "first",
///                 ["image"] = "service-first",
///                 ["cpu"] = 10,
///                 ["memory"] = 512,
///                 ["essential"] = true,
///                 ["portMappings"] = new[]
///                 {
///                     new Dictionary<string, object?>
///                     {
///                         ["containerPort"] = 80,
///                         ["hostPort"] = 80,
///                     },
///                 },
///             },
///             new Dictionary<string, object?>
///             {
///                 ["name"] = "second",
///                 ["image"] = "service-second",
///                 ["cpu"] = 10,
///                 ["memory"] = 256,
///                 ["essential"] = true,
///                 ["portMappings"] = new[]
///                 {
///                     new Dictionary<string, object?>
///                     {
///                         ["containerPort"] = 443,
///                         ["hostPort"] = 443,
///                     },
///                 },
///             },
///         }),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal([]interface{}{
/// 			map[string]interface{}{
/// 				"name":      "first",
/// 				"image":     "service-first",
/// 				"cpu":       10,
/// 				"memory":    512,
/// 				"essential": true,
/// 				"portMappings": []map[string]int{
/// 					{
/// 						"containerPort": 80,
/// 						"hostPort":      80,
/// 					},
/// 				},
/// 			},
/// 			map[string]interface{}{
/// 				"name":      "second",
/// 				"image":     "service-second",
/// 				"cpu":       10,
/// 				"memory":    256,
/// 				"essential": true,
/// 				"portMappings": []map[string]int{
/// 					{
/// 						"containerPort": 443,
/// 						"hostPort":      443,
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = ecs.NewTaskDefinition(ctx, "service", &ecs.TaskDefinitionArgs{
/// 			PlacementConstraints: ecs.TaskDefinitionPlacementConstraintArray{
/// 				&ecs.TaskDefinitionPlacementConstraintArgs{
/// 					Type:       pulumi.String("memberOf"),
/// 					Expression: pulumi.String("attribute:ecs.availability-zone in [us-west-2a, us-west-2b]"),
/// 				},
/// 			},
/// 			Volumes: ecs.TaskDefinitionVolumeArray{
/// 				&ecs.TaskDefinitionVolumeArgs{
/// 					Name:     pulumi.String("service-storage"),
/// 					HostPath: pulumi.String("/ecs/service-storage"),
/// 				},
/// 			},
/// 			Family:               pulumi.String("service"),
/// 			ContainerDefinitions: pulumi.String(json0),
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
/// resource "aws_ecs_taskdefinition" "service" {
///   placement_constraints {
///     type       = "memberOf"
///     expression = "attribute:ecs.availability-zone in [us-west-2a, us-west-2b]"
///   }
///   volumes {
///     name      = "service-storage"
///     host_path = "/ecs/service-storage"
///   }
///   family = "service"
///   container_definitions = jsonencode([{
///     "name"      = "first"
///     "image"     = "service-first"
///     "cpu"       = 10
///     "memory"    = 512
///     "essential" = true
///     "portMappings" = [{
///       "containerPort" = 80
///       "hostPort"      = 80
///     }]
///     }, {
///     "name"      = "second"
///     "image"     = "service-second"
///     "cpu"       = 10
///     "memory"    = 256
///     "essential" = true
///     "portMappings" = [{
///       "containerPort" = 443
///       "hostPort"      = 443
///     }]
///   }])
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ecs.TaskDefinition;
/// import com.pulumi.aws.ecs.TaskDefinitionArgs;
/// import com.pulumi.aws.ecs.inputs.TaskDefinitionPlacementConstraintArgs;
/// import com.pulumi.aws.ecs.inputs.TaskDefinitionVolumeArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var service = new TaskDefinition("service", TaskDefinitionArgs.builder()
///             .placementConstraints(TaskDefinitionPlacementConstraintArgs.builder()
///                 .type("memberOf")
///                 .expression("attribute:ecs.availability-zone in [us-west-2a, us-west-2b]")
///                 .build())
///             .volumes(TaskDefinitionVolumeArgs.builder()
///                 .name("service-storage")
///                 .hostPath("/ecs/service-storage")
///                 .build())
///             .family("service")
///             .containerDefinitions(serializeJson(
///                 jsonArray(
///                     jsonObject(
///                         jsonProperty("name", "first"),
///                         jsonProperty("image", "service-first"),
///                         jsonProperty("cpu", 10),
///                         jsonProperty("memory", 512),
///                         jsonProperty("essential", true),
///                         jsonProperty("portMappings", jsonArray(jsonObject(
///                             jsonProperty("containerPort", 80),
///                             jsonProperty("hostPort", 80)
///                         )))
///                     ),
///                     jsonObject(
///                         jsonProperty("name", "second"),
///                         jsonProperty("image", "service-second"),
///                         jsonProperty("cpu", 10),
///                         jsonProperty("memory", 256),
///                         jsonProperty("essential", true),
///                         jsonProperty("portMappings", jsonArray(jsonObject(
///                             jsonProperty("containerPort", 443),
///                             jsonProperty("hostPort", 443)
///                         )))
///                     )
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   service:
///     type: aws:ecs:TaskDefinition
///     properties:
///       placementConstraints:
///         - type: memberOf
///           expression: attribute:ecs.availability-zone in [us-west-2a, us-west-2b]
///       volumes:
///         - name: service-storage
///           hostPath: /ecs/service-storage
///       family: service
///       containerDefinitions:
///         fn::toJSON:
///           - name: first
///             image: service-first
///             cpu: 10
///             memory: 512
///             essential: true
///             portMappings:
///               - containerPort: 80
///                 hostPort: 80
///           - name: second
///             image: service-second
///             cpu: 10
///             memory: 256
///             essential: true
///             portMappings:
///               - containerPort: 443
///                 hostPort: 443
/// ```
///
///
/// ### With AppMesh Proxy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const service = new aws.ecs.TaskDefinition("service", {
///     proxyConfiguration: {
///         type: "APPMESH",
///         containerName: "applicationContainerName",
///         properties: {
///             AppPorts: "8080",
///             EgressIgnoredIPs: "169.254.170.2,169.254.169.254",
///             IgnoredUID: "1337",
///             ProxyEgressPort: "15001",
///             ProxyIngressPort: "15000",
///         },
///     },
///     family: "service",
///     containerDefinitions: std.file({
///         input: "task-definitions/service.json",
///     }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// service = aws.ecs.TaskDefinition("service",
///     proxy_configuration={
///         "type": "APPMESH",
///         "container_name": "applicationContainerName",
///         "properties": {
///             "AppPorts": "8080",
///             "EgressIgnoredIPs": "169.254.170.2,169.254.169.254",
///             "IgnoredUID": "1337",
///             "ProxyEgressPort": "15001",
///             "ProxyIngressPort": "15000",
///         },
///     },
///     family="service",
///     container_definitions=std.file(input="task-definitions/service.json").result)
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
///     var service = new Aws.Ecs.TaskDefinition("service", new()
///     {
///         ProxyConfiguration = new Aws.Ecs.Inputs.TaskDefinitionProxyConfigurationArgs
///         {
///             Type = "APPMESH",
///             ContainerName = "applicationContainerName",
///             Properties =
///             {
///                 { "AppPorts", "8080" },
///                 { "EgressIgnoredIPs", "169.254.170.2,169.254.169.254" },
///                 { "IgnoredUID", "1337" },
///                 { "ProxyEgressPort", "15001" },
///                 { "ProxyIngressPort", "15000" },
///             },
///         },
///         Family = "service",
///         ContainerDefinitions = Std.File.Invoke(new()
///         {
///             Input = "task-definitions/service.json",
///         }).Apply(invoke => invoke.Result),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "task-definitions/service.json",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.NewTaskDefinition(ctx, "service", &ecs.TaskDefinitionArgs{
/// 			ProxyConfiguration: &ecs.TaskDefinitionProxyConfigurationArgs{
/// 				Type:          pulumi.String("APPMESH"),
/// 				ContainerName: pulumi.String("applicationContainerName"),
/// 				Properties: pulumi.StringMap{
/// 					"AppPorts":         pulumi.String("8080"),
/// 					"EgressIgnoredIPs": pulumi.String("169.254.170.2,169.254.169.254"),
/// 					"IgnoredUID":       pulumi.String("1337"),
/// 					"ProxyEgressPort":  pulumi.String("15001"),
/// 					"ProxyIngressPort": pulumi.String("15000"),
/// 				},
/// 			},
/// 			Family:               pulumi.String("service"),
/// 			ContainerDefinitions: pulumi.String(invokeFile.Result),
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
/// resource "aws_ecs_taskdefinition" "service" {
///   proxy_configuration = {
///     type           = "APPMESH"
///     container_name = "applicationContainerName"
///     properties = {
///       "AppPorts"         = "8080"
///       "EgressIgnoredIPs" = "169.254.170.2,169.254.169.254"
///       "IgnoredUID"       = "1337"
///       "ProxyEgressPort"  = 15001
///       "ProxyIngressPort" = 15000
///     }
///   }
///   family                = "service"
///   container_definitions = file("task-definitions/service.json")
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ecs.TaskDefinition;
/// import com.pulumi.aws.ecs.TaskDefinitionArgs;
/// import com.pulumi.aws.ecs.inputs.TaskDefinitionProxyConfigurationArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
///         var service = new TaskDefinition("service", TaskDefinitionArgs.builder()
///             .proxyConfiguration(TaskDefinitionProxyConfigurationArgs.builder()
///                 .type("APPMESH")
///                 .containerName("applicationContainerName")
///                 .properties(Map.ofEntries(
///                     Map.entry("AppPorts", "8080"),
///                     Map.entry("EgressIgnoredIPs", "169.254.170.2,169.254.169.254"),
///                     Map.entry("IgnoredUID", "1337"),
///                     Map.entry("ProxyEgressPort", "15001"),
///                     Map.entry("ProxyIngressPort", "15000")
///                 ))
///                 .build())
///             .family("service")
///             .containerDefinitions(StdFunctions.file(FileArgs.builder()
///                 .input("task-definitions/service.json")
///                 .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   service:
///     type: aws:ecs:TaskDefinition
///     properties:
///       proxyConfiguration:
///         type: APPMESH
///         containerName: applicationContainerName
///         properties:
///           AppPorts: '8080'
///           EgressIgnoredIPs: 169.254.170.2,169.254.169.254
///           IgnoredUID: '1337'
///           ProxyEgressPort: 15001
///           ProxyIngressPort: 15000
///       family: service
///       containerDefinitions:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: task-definitions/service.json
///           return: result
/// ```
///
///
/// ### Example Using `dockerVolumeConfiguration`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const service = new aws.ecs.TaskDefinition("service", {
///     volumes: [{
///         dockerVolumeConfiguration: {
///             scope: "shared",
///             autoprovision: true,
///             driver: "local",
///             driverOpts: {
///                 type: "nfs",
///                 device: `${fs.dnsName}:/`,
///                 o: `addr=${fs.dnsName},rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2,noresvport`,
///             },
///         },
///         name: "service-storage",
///     }],
///     family: "service",
///     containerDefinitions: std.file({
///         input: "task-definitions/service.json",
///     }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// service = aws.ecs.TaskDefinition("service",
///     volumes=[{
///         "docker_volume_configuration": {
///             "scope": "shared",
///             "autoprovision": True,
///             "driver": "local",
///             "driver_opts": {
///                 "type": "nfs",
///                 "device": f"{fs['dnsName']}:/",
///                 "o": f"addr={fs['dnsName']},rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2,noresvport",
///             },
///         },
///         "name": "service-storage",
///     }],
///     family="service",
///     container_definitions=std.file(input="task-definitions/service.json").result)
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
///     var service = new Aws.Ecs.TaskDefinition("service", new()
///     {
///         Volumes = new[]
///         {
///             new Aws.Ecs.Inputs.TaskDefinitionVolumeArgs
///             {
///                 DockerVolumeConfiguration = new Aws.Ecs.Inputs.TaskDefinitionVolumeDockerVolumeConfigurationArgs
///                 {
///                     Scope = "shared",
///                     Autoprovision = true,
///                     Driver = "local",
///                     DriverOpts =
///                     {
///                         { "type", "nfs" },
///                         { "device", $"{fs.DnsName}:/" },
///                         { "o", $"addr={fs.DnsName},rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2,noresvport" },
///                     },
///                 },
///                 Name = "service-storage",
///             },
///         },
///         Family = "service",
///         ContainerDefinitions = Std.File.Invoke(new()
///         {
///             Input = "task-definitions/service.json",
///         }).Apply(invoke => invoke.Result),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "task-definitions/service.json",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.NewTaskDefinition(ctx, "service", &ecs.TaskDefinitionArgs{
/// 			Volumes: ecs.TaskDefinitionVolumeArray{
/// 				&ecs.TaskDefinitionVolumeArgs{
/// 					DockerVolumeConfiguration: &ecs.TaskDefinitionVolumeDockerVolumeConfigurationArgs{
/// 						Scope:         pulumi.String("shared"),
/// 						Autoprovision: pulumi.Bool(true),
/// 						Driver:        pulumi.String("local"),
/// 						DriverOpts: pulumi.StringMap{
/// 							"type":   pulumi.String("nfs"),
/// 							"device": pulumi.Sprintf("%v:/", fs.DnsName),
/// 							"o":      pulumi.Sprintf("addr=%v,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2,noresvport", fs.DnsName),
/// 						},
/// 					},
/// 					Name: pulumi.String("service-storage"),
/// 				},
/// 			},
/// 			Family:               pulumi.String("service"),
/// 			ContainerDefinitions: pulumi.String(invokeFile.Result),
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
/// resource "aws_ecs_taskdefinition" "service" {
///   volumes {
///     docker_volume_configuration = {
///       scope         = "shared"
///       autoprovision = true
///       driver        = "local"
///       driver_opts = {
///         "type"   = "nfs"
///         "device" ="${fs.dnsName}:/"
///         "o"      ="addr=${fs.dnsName},rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2,noresvport"
///       }
///     }
///     name = "service-storage"
///   }
///   family                = "service"
///   container_definitions = file("task-definitions/service.json")
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ecs.TaskDefinition;
/// import com.pulumi.aws.ecs.TaskDefinitionArgs;
/// import com.pulumi.aws.ecs.inputs.TaskDefinitionVolumeArgs;
/// import com.pulumi.aws.ecs.inputs.TaskDefinitionVolumeDockerVolumeConfigurationArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
///         var service = new TaskDefinition("service", TaskDefinitionArgs.builder()
///             .volumes(TaskDefinitionVolumeArgs.builder()
///                 .dockerVolumeConfiguration(TaskDefinitionVolumeDockerVolumeConfigurationArgs.builder()
///                     .scope("shared")
///                     .autoprovision(true)
///                     .driver("local")
///                     .driverOpts(Map.ofEntries(
///                         Map.entry("type", "nfs"),
///                         Map.entry("device", String.format("%s:/", fs.dnsName())),
///                         Map.entry("o", String.format("addr=%s,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2,noresvport", fs.dnsName()))
///                     ))
///                     .build())
///                 .name("service-storage")
///                 .build())
///             .family("service")
///             .containerDefinitions(StdFunctions.file(FileArgs.builder()
///                 .input("task-definitions/service.json")
///                 .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   service:
///     type: aws:ecs:TaskDefinition
///     properties:
///       volumes:
///         - dockerVolumeConfiguration:
///             scope: shared
///             autoprovision: true
///             driver: local
///             driverOpts:
///               type: nfs
///               device: ${fs.dnsName}:/
///               o: addr=${fs.dnsName},rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2,noresvport
///           name: service-storage
///       family: service
///       containerDefinitions:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: task-definitions/service.json
///           return: result
/// ```
///
///
/// ### Example Using `efsVolumeConfiguration`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const service = new aws.ecs.TaskDefinition("service", {
///     volumes: [{
///         efsVolumeConfiguration: {
///             authorizationConfig: {
///                 accessPointId: test.id,
///                 iam: "ENABLED",
///             },
///             fileSystemId: fs.id,
///             rootDirectory: "/opt/data",
///             transitEncryption: "ENABLED",
///             transitEncryptionPort: 2999,
///         },
///         name: "service-storage",
///     }],
///     family: "service",
///     containerDefinitions: std.file({
///         input: "task-definitions/service.json",
///     }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// service = aws.ecs.TaskDefinition("service",
///     volumes=[{
///         "efs_volume_configuration": {
///             "authorization_config": {
///                 "access_point_id": test["id"],
///                 "iam": "ENABLED",
///             },
///             "file_system_id": fs["id"],
///             "root_directory": "/opt/data",
///             "transit_encryption": "ENABLED",
///             "transit_encryption_port": 2999,
///         },
///         "name": "service-storage",
///     }],
///     family="service",
///     container_definitions=std.file(input="task-definitions/service.json").result)
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
///     var service = new Aws.Ecs.TaskDefinition("service", new()
///     {
///         Volumes = new[]
///         {
///             new Aws.Ecs.Inputs.TaskDefinitionVolumeArgs
///             {
///                 EfsVolumeConfiguration = new Aws.Ecs.Inputs.TaskDefinitionVolumeEfsVolumeConfigurationArgs
///                 {
///                     AuthorizationConfig = new Aws.Ecs.Inputs.TaskDefinitionVolumeEfsVolumeConfigurationAuthorizationConfigArgs
///                     {
///                         AccessPointId = test.Id,
///                         Iam = "ENABLED",
///                     },
///                     FileSystemId = fs.Id,
///                     RootDirectory = "/opt/data",
///                     TransitEncryption = "ENABLED",
///                     TransitEncryptionPort = 2999,
///                 },
///                 Name = "service-storage",
///             },
///         },
///         Family = "service",
///         ContainerDefinitions = Std.File.Invoke(new()
///         {
///             Input = "task-definitions/service.json",
///         }).Apply(invoke => invoke.Result),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "task-definitions/service.json",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.NewTaskDefinition(ctx, "service", &ecs.TaskDefinitionArgs{
/// 			Volumes: ecs.TaskDefinitionVolumeArray{
/// 				&ecs.TaskDefinitionVolumeArgs{
/// 					EfsVolumeConfiguration: &ecs.TaskDefinitionVolumeEfsVolumeConfigurationArgs{
/// 						AuthorizationConfig: &ecs.TaskDefinitionVolumeEfsVolumeConfigurationAuthorizationConfigArgs{
/// 							AccessPointId: pulumi.Any(test.Id),
/// 							Iam:           pulumi.String("ENABLED"),
/// 						},
/// 						FileSystemId:          pulumi.Any(fs.Id),
/// 						RootDirectory:         pulumi.String("/opt/data"),
/// 						TransitEncryption:     pulumi.String("ENABLED"),
/// 						TransitEncryptionPort: pulumi.Int(2999),
/// 					},
/// 					Name: pulumi.String("service-storage"),
/// 				},
/// 			},
/// 			Family:               pulumi.String("service"),
/// 			ContainerDefinitions: pulumi.String(invokeFile.Result),
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
/// resource "aws_ecs_taskdefinition" "service" {
///   volumes {
///     efs_volume_configuration = {
///       authorization_config = {
///         access_point_id = test.id
///         iam             = "ENABLED"
///       }
///       file_system_id          = fs.id
///       root_directory          = "/opt/data"
///       transit_encryption      = "ENABLED"
///       transit_encryption_port = 2999
///     }
///     name = "service-storage"
///   }
///   family                = "service"
///   container_definitions = file("task-definitions/service.json")
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ecs.TaskDefinition;
/// import com.pulumi.aws.ecs.TaskDefinitionArgs;
/// import com.pulumi.aws.ecs.inputs.TaskDefinitionVolumeArgs;
/// import com.pulumi.aws.ecs.inputs.TaskDefinitionVolumeEfsVolumeConfigurationArgs;
/// import com.pulumi.aws.ecs.inputs.TaskDefinitionVolumeEfsVolumeConfigurationAuthorizationConfigArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
///         var service = new TaskDefinition("service", TaskDefinitionArgs.builder()
///             .volumes(TaskDefinitionVolumeArgs.builder()
///                 .efsVolumeConfiguration(TaskDefinitionVolumeEfsVolumeConfigurationArgs.builder()
///                     .authorizationConfig(TaskDefinitionVolumeEfsVolumeConfigurationAuthorizationConfigArgs.builder()
///                         .accessPointId(test.id())
///                         .iam("ENABLED")
///                         .build())
///                     .fileSystemId(fs.id())
///                     .rootDirectory("/opt/data")
///                     .transitEncryption("ENABLED")
///                     .transitEncryptionPort(2999)
///                     .build())
///                 .name("service-storage")
///                 .build())
///             .family("service")
///             .containerDefinitions(StdFunctions.file(FileArgs.builder()
///                 .input("task-definitions/service.json")
///                 .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   service:
///     type: aws:ecs:TaskDefinition
///     properties:
///       volumes:
///         - efsVolumeConfiguration:
///             authorizationConfig:
///               accessPointId: ${test.id}
///               iam: ENABLED
///             fileSystemId: ${fs.id}
///             rootDirectory: /opt/data
///             transitEncryption: ENABLED
///             transitEncryptionPort: 2999
///           name: service-storage
///       family: service
///       containerDefinitions:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: task-definitions/service.json
///           return: result
/// ```
///
///
/// ### Example Using `fsxWindowsFileServerVolumeConfiguration`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const test = new aws.secretsmanager.SecretVersion("test", {
///     secretId: testAwsSecretsmanagerSecret.id,
///     secretString: JSON.stringify({
///         username: "admin",
///         password: testAwsDirectoryServiceDirectory.password,
///     }),
/// });
/// const service = new aws.ecs.TaskDefinition("service", {
///     volumes: [{
///         fsxWindowsFileServerVolumeConfiguration: {
///             authorizationConfig: {
///                 credentialsParameter: test.arn,
///                 domain: testAwsDirectoryServiceDirectory.name,
///             },
///             fileSystemId: testAwsFsxWindowsFileSystem.id,
///             rootDirectory: "\\data",
///         },
///         name: "service-storage",
///     }],
///     family: "service",
///     containerDefinitions: std.file({
///         input: "task-definitions/service.json",
///     }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// test = aws.secretsmanager.SecretVersion("test",
///     secret_id=test_aws_secretsmanager_secret["id"],
///     secret_string=json.dumps({
///         "username": "admin",
///         "password": test_aws_directory_service_directory["password"],
///     }))
/// service = aws.ecs.TaskDefinition("service",
///     volumes=[{
///         "fsx_windows_file_server_volume_configuration": {
///             "authorization_config": {
///                 "credentials_parameter": test.arn,
///                 "domain": test_aws_directory_service_directory["name"],
///             },
///             "file_system_id": test_aws_fsx_windows_file_system["id"],
///             "root_directory": "\\data",
///         },
///         "name": "service-storage",
///     }],
///     family="service",
///     container_definitions=std.file(input="task-definitions/service.json").result)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.SecretsManager.SecretVersion("test", new()
///     {
///         SecretId = testAwsSecretsmanagerSecret.Id,
///         SecretString = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["username"] = "admin",
///             ["password"] = testAwsDirectoryServiceDirectory.Password,
///         }),
///     });
///
///     var service = new Aws.Ecs.TaskDefinition("service", new()
///     {
///         Volumes = new[]
///         {
///             new Aws.Ecs.Inputs.TaskDefinitionVolumeArgs
///             {
///                 FsxWindowsFileServerVolumeConfiguration = new Aws.Ecs.Inputs.TaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationArgs
///                 {
///                     AuthorizationConfig = new Aws.Ecs.Inputs.TaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationAuthorizationConfigArgs
///                     {
///                         CredentialsParameter = test.Arn,
///                         Domain = testAwsDirectoryServiceDirectory.Name,
///                     },
///                     FileSystemId = testAwsFsxWindowsFileSystem.Id,
///                     RootDirectory = "\\data",
///                 },
///                 Name = "service-storage",
///             },
///         },
///         Family = "service",
///         ContainerDefinitions = Std.File.Invoke(new()
///         {
///             Input = "task-definitions/service.json",
///         }).Apply(invoke => invoke.Result),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/secretsmanager"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"username": "admin",
/// 			"password": testAwsDirectoryServiceDirectory.Password,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		test, err := secretsmanager.NewSecretVersion(ctx, "test", &secretsmanager.SecretVersionArgs{
/// 			SecretId:     pulumi.Any(testAwsSecretsmanagerSecret.Id),
/// 			SecretString: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "task-definitions/service.json",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.NewTaskDefinition(ctx, "service", &ecs.TaskDefinitionArgs{
/// 			Volumes: ecs.TaskDefinitionVolumeArray{
/// 				&ecs.TaskDefinitionVolumeArgs{
/// 					FsxWindowsFileServerVolumeConfiguration: &ecs.TaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationArgs{
/// 						AuthorizationConfig: &ecs.TaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationAuthorizationConfigArgs{
/// 							CredentialsParameter: test.Arn,
/// 							Domain:               pulumi.Any(testAwsDirectoryServiceDirectory.Name),
/// 						},
/// 						FileSystemId:  pulumi.Any(testAwsFsxWindowsFileSystem.Id),
/// 						RootDirectory: pulumi.String("\\data"),
/// 					},
/// 					Name: pulumi.String("service-storage"),
/// 				},
/// 			},
/// 			Family:               pulumi.String("service"),
/// 			ContainerDefinitions: pulumi.String(invokeFile.Result),
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
/// resource "aws_ecs_taskdefinition" "service" {
///   volumes {
///     fsx_windows_file_server_volume_configuration = {
///       authorization_config = {
///         credentials_parameter = aws_secretsmanager_secretversion.test.arn
///         domain                = testAwsDirectoryServiceDirectory.name
///       }
///       file_system_id = testAwsFsxWindowsFileSystem.id
///       root_directory = "\\data"
///     }
///     name = "service-storage"
///   }
///   family                = "service"
///   container_definitions = file("task-definitions/service.json")
/// }
/// resource "aws_secretsmanager_secretversion" "test" {
///   secret_id = testAwsSecretsmanagerSecret.id
///   secret_string = jsonencode({
///     "username" = "admin"
///     "password" = testAwsDirectoryServiceDirectory.password
///   })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.secretsmanager.SecretVersion;
/// import com.pulumi.aws.secretsmanager.SecretVersionArgs;
/// import com.pulumi.aws.ecs.TaskDefinition;
/// import com.pulumi.aws.ecs.TaskDefinitionArgs;
/// import com.pulumi.aws.ecs.inputs.TaskDefinitionVolumeArgs;
/// import com.pulumi.aws.ecs.inputs.TaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationArgs;
/// import com.pulumi.aws.ecs.inputs.TaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationAuthorizationConfigArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var test = new SecretVersion("test", SecretVersionArgs.builder()
///             .secretId(testAwsSecretsmanagerSecret.id())
///             .secretString(serializeJson(
///                 jsonObject(
///                     jsonProperty("username", "admin"),
///                     jsonProperty("password", testAwsDirectoryServiceDirectory.password())
///                 )))
///             .build());
///
///         var service = new TaskDefinition("service", TaskDefinitionArgs.builder()
///             .volumes(TaskDefinitionVolumeArgs.builder()
///                 .fsxWindowsFileServerVolumeConfiguration(TaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationArgs.builder()
///                     .authorizationConfig(TaskDefinitionVolumeFsxWindowsFileServerVolumeConfigurationAuthorizationConfigArgs.builder()
///                         .credentialsParameter(test.arn())
///                         .domain(testAwsDirectoryServiceDirectory.name())
///                         .build())
///                     .fileSystemId(testAwsFsxWindowsFileSystem.id())
///                     .rootDirectory("\\data")
///                     .build())
///                 .name("service-storage")
///                 .build())
///             .family("service")
///             .containerDefinitions(StdFunctions.file(FileArgs.builder()
///                 .input("task-definitions/service.json")
///                 .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   service:
///     type: aws:ecs:TaskDefinition
///     properties:
///       volumes:
///         - fsxWindowsFileServerVolumeConfiguration:
///             authorizationConfig:
///               credentialsParameter: ${test.arn}
///               domain: ${testAwsDirectoryServiceDirectory.name}
///             fileSystemId: ${testAwsFsxWindowsFileSystem.id}
///             rootDirectory: \data
///           name: service-storage
///       family: service
///       containerDefinitions:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: task-definitions/service.json
///           return: result
///   test:
///     type: aws:secretsmanager:SecretVersion
///     properties:
///       secretId: ${testAwsSecretsmanagerSecret.id}
///       secretString:
///         fn::toJSON:
///           username: admin
///           password: ${testAwsDirectoryServiceDirectory.password}
/// ```
///
///
/// ### Example Using `containerDefinitions`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.ecs.TaskDefinition("test", {
///     family: "test",
///     containerDefinitions: `[
///   {
///     "cpu": 10,
///     "command": ["sleep", "10"],
///     "entryPoint": ["/"],
///     "environment": [
///       {"name": "VARNAME", "value": "VARVAL"}
///     ],
///     "essential": true,
///     "image": "jenkins",
///     "memory": 128,
///     "name": "jenkins",
///     "portMappings": [
///       {
///         "containerPort": 80,
///         "hostPort": 8080
///       }
///     ]
///   }
/// ]
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ecs.TaskDefinition("test",
///     family="test",
///     container_definitions="""[
///   {
///     "cpu": 10,
///     "command": ["sleep", "10"],
///     "entryPoint": ["/"],
///     "environment": [
///       {"name": "VARNAME", "value": "VARVAL"}
///     ],
///     "essential": true,
///     "image": "jenkins",
///     "memory": 128,
///     "name": "jenkins",
///     "portMappings": [
///       {
///         "containerPort": 80,
///         "hostPort": 8080
///       }
///     ]
///   }
/// ]
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Ecs.TaskDefinition("test", new()
///     {
///         Family = "test",
///         ContainerDefinitions = @"[
///   {
///     ""cpu"": 10,
///     ""command"": [""sleep"", ""10""],
///     ""entryPoint"": [""/""],
///     ""environment"": [
///       {""name"": ""VARNAME"", ""value"": ""VARVAL""}
///     ],
///     ""essential"": true,
///     ""image"": ""jenkins"",
///     ""memory"": 128,
///     ""name"": ""jenkins"",
///     ""portMappings"": [
///       {
///         ""containerPort"": 80,
///         ""hostPort"": 8080
///       }
///     ]
///   }
/// ]
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ecs.NewTaskDefinition(ctx, "test", &ecs.TaskDefinitionArgs{
/// 			Family: pulumi.String("test"),
/// 			ContainerDefinitions: pulumi.String(`[
///   {
///     "cpu": 10,
///     "command": ["sleep", "10"],
///     "entryPoint": ["/"],
///     "environment": [
///       {"name": "VARNAME", "value": "VARVAL"}
///     ],
///     "essential": true,
///     "image": "jenkins",
///     "memory": 128,
///     "name": "jenkins",
///     "portMappings": [
///       {
///         "containerPort": 80,
///         "hostPort": 8080
///       }
///     ]
///   }
/// ]
/// `),
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
/// resource "aws_ecs_taskdefinition" "test" {
///   family                = "test"
///   container_definitions = "[\n  {\n    \"cpu\": 10,\n    \"command\": [\"sleep\", \"10\"],\n    \"entryPoint\": [\"/\"],\n    \"environment\": [\n      {\"name\": \"VARNAME\", \"value\": \"VARVAL\"}\n    ],\n    \"essential\": true,\n    \"image\": \"jenkins\",\n    \"memory\": 128,\n    \"name\": \"jenkins\",\n    \"portMappings\": [\n      {\n        \"containerPort\": 80,\n        \"hostPort\": 8080\n      }\n    ]\n  }\n]\n"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ecs.TaskDefinition;
/// import com.pulumi.aws.ecs.TaskDefinitionArgs;
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
///         var test = new TaskDefinition("test", TaskDefinitionArgs.builder()
///             .family("test")
///             .containerDefinitions("""
/// [
///   {
///     "cpu": 10,
///     "command": ["sleep", "10"],
///     "entryPoint": ["/"],
///     "environment": [
///       {"name": "VARNAME", "value": "VARVAL"}
///     ],
///     "essential": true,
///     "image": "jenkins",
///     "memory": 128,
///     "name": "jenkins",
///     "portMappings": [
///       {
///         "containerPort": 80,
///         "hostPort": 8080
///       }
///     ]
///   }
/// ]
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:ecs:TaskDefinition
///     properties:
///       family: test
///       containerDefinitions: |
///         [
///           {
///             "cpu": 10,
///             "command": ["sleep", "10"],
///             "entryPoint": ["/"],
///             "environment": [
///               {"name": "VARNAME", "value": "VARVAL"}
///             ],
///             "essential": true,
///             "image": "jenkins",
///             "memory": 128,
///             "name": "jenkins",
///             "portMappings": [
///               {
///                 "containerPort": 80,
///                 "hostPort": 8080
///               }
///             ]
///           }
///         ]
/// ```
///
///
/// ### Example Using `runtimePlatform` and `fargate`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.ecs.TaskDefinition("test", {
///     runtimePlatform: {
///         operatingSystemFamily: "WINDOWS_SERVER_2019_CORE",
///         cpuArchitecture: "X86_64",
///     },
///     family: "test",
///     requiresCompatibilities: ["FARGATE"],
///     networkMode: "awsvpc",
///     cpu: "1024",
///     memory: "2048",
///     containerDefinitions: `[
///   {
///     "name": "iis",
///     "image": "mcr.microsoft.com/windows/servercore/iis",
///     "cpu": 1024,
///     "memory": 2048,
///     "essential": true
///   }
/// ]
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ecs.TaskDefinition("test",
///     runtime_platform={
///         "operating_system_family": "WINDOWS_SERVER_2019_CORE",
///         "cpu_architecture": "X86_64",
///     },
///     family="test",
///     requires_compatibilities=["FARGATE"],
///     network_mode="awsvpc",
///     cpu="1024",
///     memory="2048",
///     container_definitions="""[
///   {
///     "name": "iis",
///     "image": "mcr.microsoft.com/windows/servercore/iis",
///     "cpu": 1024,
///     "memory": 2048,
///     "essential": true
///   }
/// ]
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Ecs.TaskDefinition("test", new()
///     {
///         RuntimePlatform = new Aws.Ecs.Inputs.TaskDefinitionRuntimePlatformArgs
///         {
///             OperatingSystemFamily = "WINDOWS_SERVER_2019_CORE",
///             CpuArchitecture = "X86_64",
///         },
///         Family = "test",
///         RequiresCompatibilities = new[]
///         {
///             "FARGATE",
///         },
///         NetworkMode = "awsvpc",
///         Cpu = "1024",
///         Memory = "2048",
///         ContainerDefinitions = @"[
///   {
///     ""name"": ""iis"",
///     ""image"": ""mcr.microsoft.com/windows/servercore/iis"",
///     ""cpu"": 1024,
///     ""memory"": 2048,
///     ""essential"": true
///   }
/// ]
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ecs.NewTaskDefinition(ctx, "test", &ecs.TaskDefinitionArgs{
/// 			RuntimePlatform: &ecs.TaskDefinitionRuntimePlatformArgs{
/// 				OperatingSystemFamily: pulumi.String("WINDOWS_SERVER_2019_CORE"),
/// 				CpuArchitecture:       pulumi.String("X86_64"),
/// 			},
/// 			Family: pulumi.String("test"),
/// 			RequiresCompatibilities: pulumi.StringArray{
/// 				pulumi.String("FARGATE"),
/// 			},
/// 			NetworkMode: pulumi.String("awsvpc"),
/// 			Cpu:         pulumi.String("1024"),
/// 			Memory:      pulumi.String("2048"),
/// 			ContainerDefinitions: pulumi.String(`[
///   {
///     "name": "iis",
///     "image": "mcr.microsoft.com/windows/servercore/iis",
///     "cpu": 1024,
///     "memory": 2048,
///     "essential": true
///   }
/// ]
/// `),
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
/// resource "aws_ecs_taskdefinition" "test" {
///   runtime_platform = {
///     operating_system_family = "WINDOWS_SERVER_2019_CORE"
///     cpu_architecture        = "X86_64"
///   }
///   family                   = "test"
///   requires_compatibilities = ["FARGATE"]
///   network_mode             = "awsvpc"
///   cpu                      = 1024
///   memory                   = 2048
///   container_definitions    = "[\n  {\n    \"name\": \"iis\",\n    \"image\": \"mcr.microsoft.com/windows/servercore/iis\",\n    \"cpu\": 1024,\n    \"memory\": 2048,\n    \"essential\": true\n  }\n]\n"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ecs.TaskDefinition;
/// import com.pulumi.aws.ecs.TaskDefinitionArgs;
/// import com.pulumi.aws.ecs.inputs.TaskDefinitionRuntimePlatformArgs;
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
///         var test = new TaskDefinition("test", TaskDefinitionArgs.builder()
///             .runtimePlatform(TaskDefinitionRuntimePlatformArgs.builder()
///                 .operatingSystemFamily("WINDOWS_SERVER_2019_CORE")
///                 .cpuArchitecture("X86_64")
///                 .build())
///             .family("test")
///             .requiresCompatibilities("FARGATE")
///             .networkMode("awsvpc")
///             .cpu("1024")
///             .memory("2048")
///             .containerDefinitions("""
/// [
///   {
///     "name": "iis",
///     "image": "mcr.microsoft.com/windows/servercore/iis",
///     "cpu": 1024,
///     "memory": 2048,
///     "essential": true
///   }
/// ]
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:ecs:TaskDefinition
///     properties:
///       runtimePlatform:
///         operatingSystemFamily: WINDOWS_SERVER_2019_CORE
///         cpuArchitecture: X86_64
///       family: test
///       requiresCompatibilities:
///         - FARGATE
///       networkMode: awsvpc
///       cpu: 1024
///       memory: 2048
///       containerDefinitions: |
///         [
///           {
///             "name": "iis",
///             "image": "mcr.microsoft.com/windows/servercore/iis",
///             "cpu": 1024,
///             "memory": 2048,
///             "essential": true
///           }
///         ]
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `family` (String) The unique name for your task definition.
/// * `revision` (Integer) The revision of the task in a particular family.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import ECS Task Definitions using their ARNs. For example:
///
/// ```sh
/// $ pulumi import aws:ecs/taskDefinition:TaskDefinition example arn:aws:ecs:us-east-1:012345678910:task-definition/mytaskfamily:123
/// ```
class TaskDefinition extends pulumi.CustomResource {
  /// Full ARN of the Task Definition (including both `family` and `revision`).
  late final pulumi.Output<String> arn;
  /// ARN of the Task Definition with the trailing `revision` removed. This may be useful for situations where the latest task definition is always desired. If a revision isn't specified, the latest ACTIVE revision is used. See the [AWS documentation](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_StartTask.html#ECS-StartTask-request-taskDefinition) for details.
  late final pulumi.Output<String> arnWithoutRevision;
  /// List of valid [container definitions](http://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ContainerDefinition.html) provided as a single valid JSON document. Please note that you should only provide values that are part of the container definition document. For a detailed description of what parameters are available, see the [Task Definition Parameters](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html) section from the official [Developer Guide](https://docs.aws.amazon.com/AmazonECS/latest/developerguide).
  late final pulumi.Output<String> containerDefinitions;
  /// Number of cpu units used by the task. If the `requiresCompatibilities` is `FARGATE` this field is required.
  late final pulumi.Output<String?> cpu;
  /// Enables fault injection and allows for fault injection requests to be accepted from the task's containers. Default is `false`.
  late final pulumi.Output<bool> enableFaultInjection;
  /// Amount of ephemeral storage to allocate for the task. This parameter is used to expand the total amount of ephemeral storage available, beyond the default amount, for tasks hosted on AWS Fargate. See Ephemeral Storage.
  late final pulumi.Output<TaskDefinitionEphemeralStorage?> ephemeralStorage;
  /// ARN of the task execution role that the Amazon ECS container agent and the Docker daemon can assume.
  late final pulumi.Output<String?> executionRoleArn;
  /// Unique name for your task definition.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> family;
  /// IPC resource namespace to be used for the containers in the task. Valid values: `host`, `task`, `none`.
  late final pulumi.Output<String?> ipcMode;
  /// Amount (in MiB) of memory used by the task. If the `requiresCompatibilities` is `FARGATE` this field is required.
  late final pulumi.Output<String?> memory;
  /// Docker networking mode to use for the containers in the task. Valid values: `awsvpc`, `bridge`, `host`, and `none`.
  late final pulumi.Output<String> networkMode;
  /// Process namespace to use for the containers in the task. Valid values: host`, `task`.
  late final pulumi.Output<String?> pidMode;
  /// Configuration block for rules that are taken into consideration during task placement. Maximum number of `placementConstraints` is `10`. Detailed below.
  late final pulumi.Output<List<TaskDefinitionPlacementConstraint>?> placementConstraints;
  /// Configuration block for the App Mesh proxy. Detailed below.
  late final pulumi.Output<TaskDefinitionProxyConfiguration?> proxyConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Set of launch types required by the task. Valid values: `EC2`, `EXTERNAL`, `FARGATE`, `MANAGED_INSTANCES`.
  late final pulumi.Output<List<String>?> requiresCompatibilities;
  /// Revision of the task in a particular family.
  late final pulumi.Output<int> revision;
  /// Configuration block for runtimePlatform that containers in your task may use.
  late final pulumi.Output<TaskDefinitionRuntimePlatform?> runtimePlatform;
  /// Whether to retain the old revision when the resource is destroyed or replacement is necessary. Default is `false`.
  late final pulumi.Output<bool?> skipDestroy;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// ARN of IAM role that allows your Amazon ECS container task to make calls to other AWS services.
  late final pulumi.Output<String?> taskRoleArn;
  /// Whether should track latest `ACTIVE` task definition on AWS or the one created with the resource stored in state. Default is `false`. Useful in the event the task definition is modified outside of this resource.
  late final pulumi.Output<bool?> trackLatest;
  /// Repeatable configuration block for volumes that containers in your task may use. Detailed below.
  ///
  /// &gt; **NOTE:** Proper escaping is required for JSON field values containing quotes (`"`) such as `environment` values. If directly setting the JSON, they should be escaped as `\"` in the JSON,  e.g., `"value": "I \"love\" escaped quotes"`. If using a variable value, they should be escaped as `\\\"` in the variable, e.g., `value = "I \\\"love\\\" escaped quotes"` in the variable and `"value": "${var.myvariable}"` in the JSON.
  ///
  /// &gt; **Note:** Fault injection only works with tasks using the `awsvpc` or `host` network modes. Fault injection isn't available on Windows.
  late final pulumi.Output<List<TaskDefinitionVolume>?> volumes;

  /// Creates a new [TaskDefinition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TaskDefinition]. {@macro pulumi_ecs_task_definition_task_definition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TaskDefinition(
    String name, {
    TaskDefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ecs/taskDefinition:TaskDefinition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    arnWithoutRevision = registerOutput<String>('arnWithoutRevision');
    containerDefinitions = registerOutput<String>('containerDefinitions');
    cpu = registerOutput<String?>('cpu');
    enableFaultInjection = registerOutput<bool>('enableFaultInjection');
    ephemeralStorage = registerOutput<TaskDefinitionEphemeralStorage?>('ephemeralStorage', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TaskDefinitionEphemeralStorage.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    executionRoleArn = registerOutput<String?>('executionRoleArn');
    family = registerOutput<String>('family');
    ipcMode = registerOutput<String?>('ipcMode');
    memory = registerOutput<String?>('memory');
    networkMode = registerOutput<String>('networkMode');
    pidMode = registerOutput<String?>('pidMode');
    placementConstraints = registerOutput<List<TaskDefinitionPlacementConstraint>?>('placementConstraints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TaskDefinitionPlacementConstraint>(guardedValue, (value) => TaskDefinitionPlacementConstraint.fromMap((value as Map).cast<String, dynamic>())); });
    proxyConfiguration = registerOutput<TaskDefinitionProxyConfiguration?>('proxyConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TaskDefinitionProxyConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    requiresCompatibilities = registerOutput<List<String>?>('requiresCompatibilities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    revision = registerOutput<int>('revision');
    runtimePlatform = registerOutput<TaskDefinitionRuntimePlatform?>('runtimePlatform', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TaskDefinitionRuntimePlatform.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    skipDestroy = registerOutput<bool?>('skipDestroy');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    taskRoleArn = registerOutput<String?>('taskRoleArn');
    trackLatest = registerOutput<bool?>('trackLatest');
    volumes = registerOutput<List<TaskDefinitionVolume>?>('volumes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TaskDefinitionVolume>(guardedValue, (value) => TaskDefinitionVolume.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [TaskDefinition] resource's state with the given [name] and [id].
  static TaskDefinition get(
    String name,
    pulumi.Input<String> id, {
    TaskDefinitionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return TaskDefinition._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  TaskDefinition._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ecs/taskDefinition:TaskDefinition',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    arnWithoutRevision = registerOutput<String>('arnWithoutRevision');
    containerDefinitions = registerOutput<String>('containerDefinitions');
    cpu = registerOutput<String?>('cpu');
    enableFaultInjection = registerOutput<bool>('enableFaultInjection');
    ephemeralStorage = registerOutput<TaskDefinitionEphemeralStorage?>('ephemeralStorage', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TaskDefinitionEphemeralStorage.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    executionRoleArn = registerOutput<String?>('executionRoleArn');
    family = registerOutput<String>('family');
    ipcMode = registerOutput<String?>('ipcMode');
    memory = registerOutput<String?>('memory');
    networkMode = registerOutput<String>('networkMode');
    pidMode = registerOutput<String?>('pidMode');
    placementConstraints = registerOutput<List<TaskDefinitionPlacementConstraint>?>('placementConstraints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TaskDefinitionPlacementConstraint>(guardedValue, (value) => TaskDefinitionPlacementConstraint.fromMap((value as Map).cast<String, dynamic>())); });
    proxyConfiguration = registerOutput<TaskDefinitionProxyConfiguration?>('proxyConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TaskDefinitionProxyConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    requiresCompatibilities = registerOutput<List<String>?>('requiresCompatibilities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    revision = registerOutput<int>('revision');
    runtimePlatform = registerOutput<TaskDefinitionRuntimePlatform?>('runtimePlatform', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TaskDefinitionRuntimePlatform.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    skipDestroy = registerOutput<bool?>('skipDestroy');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    taskRoleArn = registerOutput<String?>('taskRoleArn');
    trackLatest = registerOutput<bool?>('trackLatest');
    volumes = registerOutput<List<TaskDefinitionVolume>?>('volumes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TaskDefinitionVolume>(guardedValue, (value) => TaskDefinitionVolume.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [TaskDefinition] resource.
  TaskDefinition.reference(String urn)
    : super(
        'aws:ecs/taskDefinition:TaskDefinition',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    arnWithoutRevision = registerOutput<String>('arnWithoutRevision');
    containerDefinitions = registerOutput<String>('containerDefinitions');
    cpu = registerOutput<String?>('cpu');
    enableFaultInjection = registerOutput<bool>('enableFaultInjection');
    ephemeralStorage = registerOutput<TaskDefinitionEphemeralStorage?>('ephemeralStorage', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TaskDefinitionEphemeralStorage.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    executionRoleArn = registerOutput<String?>('executionRoleArn');
    family = registerOutput<String>('family');
    ipcMode = registerOutput<String?>('ipcMode');
    memory = registerOutput<String?>('memory');
    networkMode = registerOutput<String>('networkMode');
    pidMode = registerOutput<String?>('pidMode');
    placementConstraints = registerOutput<List<TaskDefinitionPlacementConstraint>?>('placementConstraints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TaskDefinitionPlacementConstraint>(guardedValue, (value) => TaskDefinitionPlacementConstraint.fromMap((value as Map).cast<String, dynamic>())); });
    proxyConfiguration = registerOutput<TaskDefinitionProxyConfiguration?>('proxyConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TaskDefinitionProxyConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    requiresCompatibilities = registerOutput<List<String>?>('requiresCompatibilities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    revision = registerOutput<int>('revision');
    runtimePlatform = registerOutput<TaskDefinitionRuntimePlatform?>('runtimePlatform', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TaskDefinitionRuntimePlatform.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    skipDestroy = registerOutput<bool?>('skipDestroy');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    taskRoleArn = registerOutput<String?>('taskRoleArn');
    trackLatest = registerOutput<bool?>('trackLatest');
    volumes = registerOutput<List<TaskDefinitionVolume>?>('volumes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TaskDefinitionVolume>(guardedValue, (value) => TaskDefinitionVolume.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
