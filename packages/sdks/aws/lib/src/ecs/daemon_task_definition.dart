import 'package:pulumi/pulumi.dart' as pulumi;
import 'daemon_task_definition_args.dart';
import 'daemon_task_definition_container_definition.dart';
import 'daemon_task_definition_state.dart';
import 'daemon_task_definition_volume.dart';

/// Manages a revision of an ECS daemon task definition for use with daemon scheduling strategy.
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
/// const example = new aws.ecs.DaemonTaskDefinition("example", {
///     containerDefinitions: [{
///         name: "app",
///         image: "nginx:latest",
///         cpu: 256,
///         memory: 512,
///         essential: true,
///     }],
///     family: "my-daemon-service",
///     cpu: "512",
///     memory: "1024",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecs.DaemonTaskDefinition("example",
///     container_definitions=[{
///         "name": "app",
///         "image": "nginx:latest",
///         "cpu": 256,
///         "memory": 512,
///         "essential": True,
///     }],
///     family="my-daemon-service",
///     cpu="512",
///     memory="1024")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ecs.DaemonTaskDefinition("example", new()
///     {
///         ContainerDefinitions = new[]
///         {
///             new Aws.Ecs.Inputs.DaemonTaskDefinitionContainerDefinitionArgs
///             {
///                 Name = "app",
///                 Image = "nginx:latest",
///                 Cpu = 256,
///                 Memory = 512,
///                 Essential = true,
///             },
///         },
///         Family = "my-daemon-service",
///         Cpu = "512",
///         Memory = "1024",
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
/// 		_, err := ecs.NewDaemonTaskDefinition(ctx, "example", &ecs.DaemonTaskDefinitionArgs{
/// 			ContainerDefinitions: ecs.DaemonTaskDefinitionContainerDefinitionArray{
/// 				&ecs.DaemonTaskDefinitionContainerDefinitionArgs{
/// 					Name:      pulumi.String("app"),
/// 					Image:     pulumi.String("nginx:latest"),
/// 					Cpu:       pulumi.Int(256),
/// 					Memory:    pulumi.Int(512),
/// 					Essential: pulumi.Bool(true),
/// 				},
/// 			},
/// 			Family: pulumi.String("my-daemon-service"),
/// 			Cpu:    pulumi.String("512"),
/// 			Memory: pulumi.String("1024"),
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
/// resource "aws_ecs_daemontaskdefinition" "example" {
///   container_definitions {
///     name      = "app"
///     image     = "nginx:latest"
///     cpu       = 256
///     memory    = 512
///     essential = true
///   }
///   family = "my-daemon-service"
///   cpu    = "512"
///   memory = "1024"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ecs.DaemonTaskDefinition;
/// import com.pulumi.aws.ecs.DaemonTaskDefinitionArgs;
/// import com.pulumi.aws.ecs.inputs.DaemonTaskDefinitionContainerDefinitionArgs;
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
///         var example = new DaemonTaskDefinition("example", DaemonTaskDefinitionArgs.builder()
///             .containerDefinitions(DaemonTaskDefinitionContainerDefinitionArgs.builder()
///                 .name("app")
///                 .image("nginx:latest")
///                 .cpu(256)
///                 .memory(512)
///                 .essential(true)
///                 .build())
///             .family("my-daemon-service")
///             .cpu("512")
///             .memory("1024")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ecs:DaemonTaskDefinition
///     properties:
///       containerDefinitions:
///         - name: app
///           image: nginx:latest
///           cpu: 256
///           memory: 512
///           essential: true
///       family: my-daemon-service
///       cpu: '512'
///       memory: '1024'
/// ```
///
///
/// ### With IAM Roles
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const taskExecution = new aws.iam.Role("task_execution", {
///     name: "daemon-task-execution-role",
///     assumeRolePolicy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Action: "sts:AssumeRole",
///             Effect: "Allow",
///             Principal: {
///                 Service: "ecs-tasks.amazonaws.com",
///             },
///         }],
///     }),
/// });
/// const task = new aws.iam.Role("task", {
///     name: "daemon-task-role",
///     assumeRolePolicy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Action: "sts:AssumeRole",
///             Effect: "Allow",
///             Principal: {
///                 Service: "ecs-tasks.amazonaws.com",
///             },
///         }],
///     }),
/// });
/// const example = new aws.ecs.DaemonTaskDefinition("example", {
///     containerDefinitions: [{
///         name: "app",
///         image: "nginx:latest",
///         cpu: 256,
///         memory: 512,
///         essential: true,
///     }],
///     family: "my-daemon-service",
///     executionRoleArn: taskExecution.arn,
///     taskRoleArn: task.arn,
///     cpu: "512",
///     memory: "1024",
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// task_execution = aws.iam.Role("task_execution",
///     name="daemon-task-execution-role",
///     assume_role_policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Action": "sts:AssumeRole",
///             "Effect": "Allow",
///             "Principal": {
///                 "Service": "ecs-tasks.amazonaws.com",
///             },
///         }],
///     }))
/// task = aws.iam.Role("task",
///     name="daemon-task-role",
///     assume_role_policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Action": "sts:AssumeRole",
///             "Effect": "Allow",
///             "Principal": {
///                 "Service": "ecs-tasks.amazonaws.com",
///             },
///         }],
///     }))
/// example = aws.ecs.DaemonTaskDefinition("example",
///     container_definitions=[{
///         "name": "app",
///         "image": "nginx:latest",
///         "cpu": 256,
///         "memory": 512,
///         "essential": True,
///     }],
///     family="my-daemon-service",
///     execution_role_arn=task_execution.arn,
///     task_role_arn=task.arn,
///     cpu="512",
///     memory="1024")
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
///     var taskExecution = new Aws.Iam.Role("task_execution", new()
///     {
///         Name = "daemon-task-execution-role",
///         AssumeRolePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = "sts:AssumeRole",
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["Service"] = "ecs-tasks.amazonaws.com",
///                     },
///                 },
///             },
///         }),
///     });
///
///     var task = new Aws.Iam.Role("task", new()
///     {
///         Name = "daemon-task-role",
///         AssumeRolePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = "sts:AssumeRole",
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["Service"] = "ecs-tasks.amazonaws.com",
///                     },
///                 },
///             },
///         }),
///     });
///
///     var example = new Aws.Ecs.DaemonTaskDefinition("example", new()
///     {
///         ContainerDefinitions = new[]
///         {
///             new Aws.Ecs.Inputs.DaemonTaskDefinitionContainerDefinitionArgs
///             {
///                 Name = "app",
///                 Image = "nginx:latest",
///                 Cpu = 256,
///                 Memory = 512,
///                 Essential = true,
///             },
///         },
///         Family = "my-daemon-service",
///         ExecutionRoleArn = taskExecution.Arn,
///         TaskRoleArn = task.Arn,
///         Cpu = "512",
///         Memory = "1024",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Action": "sts:AssumeRole",
/// 					"Effect": "Allow",
/// 					"Principal": map[string]string{
/// 						"Service": "ecs-tasks.amazonaws.com",
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		taskExecution, err := iam.NewRole(ctx, "task_execution", &iam.RoleArgs{
/// 			Name:             pulumi.String("daemon-task-execution-role"),
/// 			AssumeRolePolicy: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON1, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Action": "sts:AssumeRole",
/// 					"Effect": "Allow",
/// 					"Principal": map[string]string{
/// 						"Service": "ecs-tasks.amazonaws.com",
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json1 := string(tmpJSON1)
/// 		task, err := iam.NewRole(ctx, "task", &iam.RoleArgs{
/// 			Name:             pulumi.String("daemon-task-role"),
/// 			AssumeRolePolicy: pulumi.String(json1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.NewDaemonTaskDefinition(ctx, "example", &ecs.DaemonTaskDefinitionArgs{
/// 			ContainerDefinitions: ecs.DaemonTaskDefinitionContainerDefinitionArray{
/// 				&ecs.DaemonTaskDefinitionContainerDefinitionArgs{
/// 					Name:      pulumi.String("app"),
/// 					Image:     pulumi.String("nginx:latest"),
/// 					Cpu:       pulumi.Int(256),
/// 					Memory:    pulumi.Int(512),
/// 					Essential: pulumi.Bool(true),
/// 				},
/// 			},
/// 			Family:           pulumi.String("my-daemon-service"),
/// 			ExecutionRoleArn: taskExecution.Arn,
/// 			TaskRoleArn:      task.Arn,
/// 			Cpu:              pulumi.String("512"),
/// 			Memory:           pulumi.String("1024"),
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
/// resource "aws_iam_role" "task_execution" {
///   name = "daemon-task-execution-role"
///   assume_role_policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Action" = "sts:AssumeRole"
///       "Effect" = "Allow"
///       "Principal" = {
///         "Service" = "ecs-tasks.amazonaws.com"
///       }
///     }]
///   })
/// }
/// resource "aws_iam_role" "task" {
///   name = "daemon-task-role"
///   assume_role_policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Action" = "sts:AssumeRole"
///       "Effect" = "Allow"
///       "Principal" = {
///         "Service" = "ecs-tasks.amazonaws.com"
///       }
///     }]
///   })
/// }
/// resource "aws_ecs_daemontaskdefinition" "example" {
///   container_definitions {
///     name      = "app"
///     image     = "nginx:latest"
///     cpu       = 256
///     memory    = 512
///     essential = true
///   }
///   family             = "my-daemon-service"
///   execution_role_arn = aws_iam_role.task_execution.arn
///   task_role_arn      = aws_iam_role.task.arn
///   cpu                = "512"
///   memory             = "1024"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.ecs.DaemonTaskDefinition;
/// import com.pulumi.aws.ecs.DaemonTaskDefinitionArgs;
/// import com.pulumi.aws.ecs.inputs.DaemonTaskDefinitionContainerDefinitionArgs;
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
///         var taskExecution = new Role("taskExecution", RoleArgs.builder()
///             .name("daemon-task-execution-role")
///             .assumeRolePolicy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Action", "sts:AssumeRole"),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("Service", "ecs-tasks.amazonaws.com")
///                         ))
///                     )))
///                 )))
///             .build());
///
///         var task = new Role("task", RoleArgs.builder()
///             .name("daemon-task-role")
///             .assumeRolePolicy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Action", "sts:AssumeRole"),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("Service", "ecs-tasks.amazonaws.com")
///                         ))
///                     )))
///                 )))
///             .build());
///
///         var example = new DaemonTaskDefinition("example", DaemonTaskDefinitionArgs.builder()
///             .containerDefinitions(DaemonTaskDefinitionContainerDefinitionArgs.builder()
///                 .name("app")
///                 .image("nginx:latest")
///                 .cpu(256)
///                 .memory(512)
///                 .essential(true)
///                 .build())
///             .family("my-daemon-service")
///             .executionRoleArn(taskExecution.arn())
///             .taskRoleArn(task.arn())
///             .cpu("512")
///             .memory("1024")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   taskExecution:
///     type: aws:iam:Role
///     name: task_execution
///     properties:
///       name: daemon-task-execution-role
///       assumeRolePolicy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Action: sts:AssumeRole
///               Effect: Allow
///               Principal:
///                 Service: ecs-tasks.amazonaws.com
///   task:
///     type: aws:iam:Role
///     properties:
///       name: daemon-task-role
///       assumeRolePolicy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Action: sts:AssumeRole
///               Effect: Allow
///               Principal:
///                 Service: ecs-tasks.amazonaws.com
///   example:
///     type: aws:ecs:DaemonTaskDefinition
///     properties:
///       containerDefinitions:
///         - name: app
///           image: nginx:latest
///           cpu: 256
///           memory: 512
///           essential: true
///       family: my-daemon-service
///       executionRoleArn: ${taskExecution.arn}
///       taskRoleArn: ${task.arn}
///       cpu: '512'
///       memory: '1024'
/// ```
///
///
/// ### With Volumes
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ecs.DaemonTaskDefinition("example", {
///     containerDefinitions: [{
///         name: "app",
///         image: "nginx:latest",
///         cpu: 256,
///         memory: 512,
///         essential: true,
///     }],
///     volumes: [
///         {
///             hosts: [{
///                 sourcePath: "/data",
///             }],
///             name: "data-volume",
///         },
///         {
///             hosts: [{
///                 sourcePath: "/var/log",
///             }],
///             name: "logs-volume",
///         },
///     ],
///     family: "my-daemon-service",
///     cpu: "512",
///     memory: "1024",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecs.DaemonTaskDefinition("example",
///     container_definitions=[{
///         "name": "app",
///         "image": "nginx:latest",
///         "cpu": 256,
///         "memory": 512,
///         "essential": True,
///     }],
///     volumes=[
///         {
///             "hosts": [{
///                 "source_path": "/data",
///             }],
///             "name": "data-volume",
///         },
///         {
///             "hosts": [{
///                 "source_path": "/var/log",
///             }],
///             "name": "logs-volume",
///         },
///     ],
///     family="my-daemon-service",
///     cpu="512",
///     memory="1024")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ecs.DaemonTaskDefinition("example", new()
///     {
///         ContainerDefinitions = new[]
///         {
///             new Aws.Ecs.Inputs.DaemonTaskDefinitionContainerDefinitionArgs
///             {
///                 Name = "app",
///                 Image = "nginx:latest",
///                 Cpu = 256,
///                 Memory = 512,
///                 Essential = true,
///             },
///         },
///         Volumes = new[]
///         {
///             new Aws.Ecs.Inputs.DaemonTaskDefinitionVolumeArgs
///             {
///                 Hosts = new[]
///                 {
///                     new Aws.Ecs.Inputs.DaemonTaskDefinitionVolumeHostArgs
///                     {
///                         SourcePath = "/data",
///                     },
///                 },
///                 Name = "data-volume",
///             },
///             new Aws.Ecs.Inputs.DaemonTaskDefinitionVolumeArgs
///             {
///                 Hosts = new[]
///                 {
///                     new Aws.Ecs.Inputs.DaemonTaskDefinitionVolumeHostArgs
///                     {
///                         SourcePath = "/var/log",
///                     },
///                 },
///                 Name = "logs-volume",
///             },
///         },
///         Family = "my-daemon-service",
///         Cpu = "512",
///         Memory = "1024",
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
/// 		_, err := ecs.NewDaemonTaskDefinition(ctx, "example", &ecs.DaemonTaskDefinitionArgs{
/// 			ContainerDefinitions: ecs.DaemonTaskDefinitionContainerDefinitionArray{
/// 				&ecs.DaemonTaskDefinitionContainerDefinitionArgs{
/// 					Name:      pulumi.String("app"),
/// 					Image:     pulumi.String("nginx:latest"),
/// 					Cpu:       pulumi.Int(256),
/// 					Memory:    pulumi.Int(512),
/// 					Essential: pulumi.Bool(true),
/// 				},
/// 			},
/// 			Volumes: ecs.DaemonTaskDefinitionVolumeArray{
/// 				&ecs.DaemonTaskDefinitionVolumeArgs{
/// 					Hosts: ecs.DaemonTaskDefinitionVolumeHostArray{
/// 						&ecs.DaemonTaskDefinitionVolumeHostArgs{
/// 							SourcePath: pulumi.String("/data"),
/// 						},
/// 					},
/// 					Name: pulumi.String("data-volume"),
/// 				},
/// 				&ecs.DaemonTaskDefinitionVolumeArgs{
/// 					Hosts: ecs.DaemonTaskDefinitionVolumeHostArray{
/// 						&ecs.DaemonTaskDefinitionVolumeHostArgs{
/// 							SourcePath: pulumi.String("/var/log"),
/// 						},
/// 					},
/// 					Name: pulumi.String("logs-volume"),
/// 				},
/// 			},
/// 			Family: pulumi.String("my-daemon-service"),
/// 			Cpu:    pulumi.String("512"),
/// 			Memory: pulumi.String("1024"),
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
/// resource "aws_ecs_daemontaskdefinition" "example" {
///   container_definitions {
///     name      = "app"
///     image     = "nginx:latest"
///     cpu       = 256
///     memory    = 512
///     essential = true
///   }
///   volumes {
///     hosts {
///       source_path = "/data"
///     }
///     name = "data-volume"
///   }
///   volumes {
///     hosts {
///       source_path = "/var/log"
///     }
///     name = "logs-volume"
///   }
///   family = "my-daemon-service"
///   cpu    = "512"
///   memory = "1024"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ecs.DaemonTaskDefinition;
/// import com.pulumi.aws.ecs.DaemonTaskDefinitionArgs;
/// import com.pulumi.aws.ecs.inputs.DaemonTaskDefinitionContainerDefinitionArgs;
/// import com.pulumi.aws.ecs.inputs.DaemonTaskDefinitionVolumeArgs;
/// import com.pulumi.aws.ecs.inputs.DaemonTaskDefinitionVolumeHostArgs;
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
///         var example = new DaemonTaskDefinition("example", DaemonTaskDefinitionArgs.builder()
///             .containerDefinitions(DaemonTaskDefinitionContainerDefinitionArgs.builder()
///                 .name("app")
///                 .image("nginx:latest")
///                 .cpu(256)
///                 .memory(512)
///                 .essential(true)
///                 .build())
///             .volumes(
///                 DaemonTaskDefinitionVolumeArgs.builder()
///                     .hosts(DaemonTaskDefinitionVolumeHostArgs.builder()
///                         .sourcePath("/data")
///                         .build())
///                     .name("data-volume")
///                     .build(),
///                 DaemonTaskDefinitionVolumeArgs.builder()
///                     .hosts(DaemonTaskDefinitionVolumeHostArgs.builder()
///                         .sourcePath("/var/log")
///                         .build())
///                     .name("logs-volume")
///                     .build())
///             .family("my-daemon-service")
///             .cpu("512")
///             .memory("1024")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ecs:DaemonTaskDefinition
///     properties:
///       containerDefinitions:
///         - name: app
///           image: nginx:latest
///           cpu: 256
///           memory: 512
///           essential: true
///       volumes:
///         - hosts:
///             - sourcePath: /data
///           name: data-volume
///         - hosts:
///             - sourcePath: /var/log
///           name: logs-volume
///       family: my-daemon-service
///       cpu: '512'
///       memory: '1024'
/// ```
///
///
/// ### With Multiple Containers
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ecs.DaemonTaskDefinition("example", {
///     containerDefinitions: [
///         {
///             name: "app",
///             image: "my-app:latest",
///             cpu: 256,
///             memory: 512,
///             essential: true,
///         },
///         {
///             name: "sidecar",
///             image: "datadog/agent:latest",
///             cpu: 128,
///             memory: 256,
///             essential: false,
///         },
///     ],
///     family: "my-daemon-service",
///     cpu: "512",
///     memory: "1024",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecs.DaemonTaskDefinition("example",
///     container_definitions=[
///         {
///             "name": "app",
///             "image": "my-app:latest",
///             "cpu": 256,
///             "memory": 512,
///             "essential": True,
///         },
///         {
///             "name": "sidecar",
///             "image": "datadog/agent:latest",
///             "cpu": 128,
///             "memory": 256,
///             "essential": False,
///         },
///     ],
///     family="my-daemon-service",
///     cpu="512",
///     memory="1024")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ecs.DaemonTaskDefinition("example", new()
///     {
///         ContainerDefinitions = new[]
///         {
///             new Aws.Ecs.Inputs.DaemonTaskDefinitionContainerDefinitionArgs
///             {
///                 Name = "app",
///                 Image = "my-app:latest",
///                 Cpu = 256,
///                 Memory = 512,
///                 Essential = true,
///             },
///             new Aws.Ecs.Inputs.DaemonTaskDefinitionContainerDefinitionArgs
///             {
///                 Name = "sidecar",
///                 Image = "datadog/agent:latest",
///                 Cpu = 128,
///                 Memory = 256,
///                 Essential = false,
///             },
///         },
///         Family = "my-daemon-service",
///         Cpu = "512",
///         Memory = "1024",
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
/// 		_, err := ecs.NewDaemonTaskDefinition(ctx, "example", &ecs.DaemonTaskDefinitionArgs{
/// 			ContainerDefinitions: ecs.DaemonTaskDefinitionContainerDefinitionArray{
/// 				&ecs.DaemonTaskDefinitionContainerDefinitionArgs{
/// 					Name:      pulumi.String("app"),
/// 					Image:     pulumi.String("my-app:latest"),
/// 					Cpu:       pulumi.Int(256),
/// 					Memory:    pulumi.Int(512),
/// 					Essential: pulumi.Bool(true),
/// 				},
/// 				&ecs.DaemonTaskDefinitionContainerDefinitionArgs{
/// 					Name:      pulumi.String("sidecar"),
/// 					Image:     pulumi.String("datadog/agent:latest"),
/// 					Cpu:       pulumi.Int(128),
/// 					Memory:    pulumi.Int(256),
/// 					Essential: pulumi.Bool(false),
/// 				},
/// 			},
/// 			Family: pulumi.String("my-daemon-service"),
/// 			Cpu:    pulumi.String("512"),
/// 			Memory: pulumi.String("1024"),
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
/// resource "aws_ecs_daemontaskdefinition" "example" {
///   container_definitions {
///     name      = "app"
///     image     = "my-app:latest"
///     cpu       = 256
///     memory    = 512
///     essential = true
///   }
///   container_definitions {
///     name      = "sidecar"
///     image     = "datadog/agent:latest"
///     cpu       = 128
///     memory    = 256
///     essential = false
///   }
///   family = "my-daemon-service"
///   cpu    = "512"
///   memory = "1024"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ecs.DaemonTaskDefinition;
/// import com.pulumi.aws.ecs.DaemonTaskDefinitionArgs;
/// import com.pulumi.aws.ecs.inputs.DaemonTaskDefinitionContainerDefinitionArgs;
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
///         var example = new DaemonTaskDefinition("example", DaemonTaskDefinitionArgs.builder()
///             .containerDefinitions(
///                 DaemonTaskDefinitionContainerDefinitionArgs.builder()
///                     .name("app")
///                     .image("my-app:latest")
///                     .cpu(256)
///                     .memory(512)
///                     .essential(true)
///                     .build(),
///                 DaemonTaskDefinitionContainerDefinitionArgs.builder()
///                     .name("sidecar")
///                     .image("datadog/agent:latest")
///                     .cpu(128)
///                     .memory(256)
///                     .essential(false)
///                     .build())
///             .family("my-daemon-service")
///             .cpu("512")
///             .memory("1024")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ecs:DaemonTaskDefinition
///     properties:
///       containerDefinitions:
///         - name: app
///           image: my-app:latest
///           cpu: 256
///           memory: 512
///           essential: true
///         - name: sidecar
///           image: datadog/agent:latest
///           cpu: 128
///           memory: 256
///           essential: false
///       family: my-daemon-service
///       cpu: '512'
///       memory: '1024'
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `arn` (String) ARN of the ECS Daemon Task Definition.
///
///
/// Using `pulumi import`, import ECS Daemon Task Definitions using their ARNs. For example:
///
/// ```sh
/// $ pulumi import aws:ecs/daemonTaskDefinition:DaemonTaskDefinition example arn:aws:ecs:us-east-1:012345678910:daemon-task-definition/mydaemonfamily:123
/// ```
class DaemonTaskDefinition extends pulumi.CustomResource {
  /// Full ARN of the Daemon Task Definition (including both `family` and `revision`).
  late final pulumi.Output<String> arn;
  /// One or more container definition blocks. Detailed below.
  late final pulumi.Output<List<DaemonTaskDefinitionContainerDefinition>> containerDefinitions;
  /// Number of CPU units used by the task.
  late final pulumi.Output<String?> cpu;
  /// ARN of the task execution role that the Amazon ECS container agent and the Docker daemon can assume.
  late final pulumi.Output<String?> executionRoleArn;
  /// Unique name for your daemon task definition.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> family;
  /// Amount (in MiB) of memory used by the task.
  late final pulumi.Output<String?> memory;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Revision of the task in a particular family.
  late final pulumi.Output<int> revision;
  /// Status of the daemon task definition.
  late final pulumi.Output<String> status;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// ARN of IAM role that allows your Amazon ECS container task to make calls to other AWS services.
  late final pulumi.Output<String?> taskRoleArn;
  /// Repeatable configuration block for volumes that containers in your task may use. Detailed below.
  late final pulumi.Output<List<DaemonTaskDefinitionVolume>?> volumes;

  /// Creates a new [DaemonTaskDefinition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DaemonTaskDefinition]. {@macro pulumi_ecs_daemon_task_definition_daemon_task_definition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DaemonTaskDefinition(
    String name, {
    DaemonTaskDefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ecs/daemonTaskDefinition:DaemonTaskDefinition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    containerDefinitions = registerOutput<List<DaemonTaskDefinitionContainerDefinition>>('containerDefinitions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DaemonTaskDefinitionContainerDefinition>(guardedValue, (value) => DaemonTaskDefinitionContainerDefinition.fromMap((value as Map).cast<String, dynamic>())); });
    cpu = registerOutput<String?>('cpu');
    executionRoleArn = registerOutput<String?>('executionRoleArn');
    family = registerOutput<String>('family');
    memory = registerOutput<String?>('memory');
    region = registerOutput<String>('region');
    revision = registerOutput<int>('revision');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    taskRoleArn = registerOutput<String?>('taskRoleArn');
    volumes = registerOutput<List<DaemonTaskDefinitionVolume>?>('volumes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DaemonTaskDefinitionVolume>(guardedValue, (value) => DaemonTaskDefinitionVolume.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [DaemonTaskDefinition] resource's state with the given [name] and [id].
  static DaemonTaskDefinition get(
    String name,
    pulumi.Input<String> id, {
    DaemonTaskDefinitionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DaemonTaskDefinition._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DaemonTaskDefinition._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ecs/daemonTaskDefinition:DaemonTaskDefinition',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    containerDefinitions = registerOutput<List<DaemonTaskDefinitionContainerDefinition>>('containerDefinitions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DaemonTaskDefinitionContainerDefinition>(guardedValue, (value) => DaemonTaskDefinitionContainerDefinition.fromMap((value as Map).cast<String, dynamic>())); });
    cpu = registerOutput<String?>('cpu');
    executionRoleArn = registerOutput<String?>('executionRoleArn');
    family = registerOutput<String>('family');
    memory = registerOutput<String?>('memory');
    region = registerOutput<String>('region');
    revision = registerOutput<int>('revision');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    taskRoleArn = registerOutput<String?>('taskRoleArn');
    volumes = registerOutput<List<DaemonTaskDefinitionVolume>?>('volumes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DaemonTaskDefinitionVolume>(guardedValue, (value) => DaemonTaskDefinitionVolume.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [DaemonTaskDefinition] resource.
  DaemonTaskDefinition.reference(String urn)
    : super(
        'aws:ecs/daemonTaskDefinition:DaemonTaskDefinition',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    containerDefinitions = registerOutput<List<DaemonTaskDefinitionContainerDefinition>>('containerDefinitions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DaemonTaskDefinitionContainerDefinition>(guardedValue, (value) => DaemonTaskDefinitionContainerDefinition.fromMap((value as Map).cast<String, dynamic>())); });
    cpu = registerOutput<String?>('cpu');
    executionRoleArn = registerOutput<String?>('executionRoleArn');
    family = registerOutput<String>('family');
    memory = registerOutput<String?>('memory');
    region = registerOutput<String>('region');
    revision = registerOutput<int>('revision');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    taskRoleArn = registerOutput<String?>('taskRoleArn');
    volumes = registerOutput<List<DaemonTaskDefinitionVolume>?>('volumes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DaemonTaskDefinitionVolume>(guardedValue, (value) => DaemonTaskDefinitionVolume.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
