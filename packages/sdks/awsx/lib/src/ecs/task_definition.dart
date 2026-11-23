import 'package:pulumi/pulumi.dart' as pulumi;
import 'task_definition_args.dart';
import 'package:pulumi_aws/cloudwatch.dart' as pulumi_aws_cloudwatch;

/// # Task definitions
///
/// A task definition is a blueprint for your application. It describes the parameters and one or more containers that form your application.
///
/// ## Example Usage
///
/// ### Basic example
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as awsx from "@pulumi/awsx";
///
/// const task = new awsx.ecs.TaskDefinition("task", {containers: {
///     app: {
///         image: "nginx:stable",
///         portMappings: [{
///             containerPort: 80,
///         }],
///     },
/// }});
/// export const taskDefinitionArn = task.taskDefinitionArn;
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_awsx as awsx
///
/// task = awsx.ecs.TaskDefinition("task", containers={
///     "app": {
///         "image": "nginx:stable",
///         "port_mappings": [{
///             "container_port": float(80),
///         }],
///     },
/// })
/// pulumi.export("taskDefinitionArn", task.task_definition_arn)
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-awsx/sdk/v3/go/awsx/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		task, err := ecs.NewTaskDefinition(ctx, "task", &ecs.TaskDefinitionArgs{
/// 			Containers: map[string]*ecs.ContainerDefinitionArgs{
/// 				"app": ecs.ContainerDefinitionArgs{
/// 					Image: pulumi.String("nginx:stable"),
/// 					PortMappings: []ecs.AwsvpcPortMappingArgs{
/// 						{
/// 							ContainerPort: 80,
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("taskDefinitionArn", task.TaskDefinitionArn)
/// 		return nil
/// 	})
/// }
/// ```
///
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Awsx = Pulumi.Awsx;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var task = new Awsx.Ecs.TaskDefinition("task", new()
///     {
///         Containers =
///         {
///             { "app", new Awsx.Ecs.Inputs.ContainerDefinitionArgs
///             {
///                 Image = "nginx:stable",
///                 PortMappings = new()
///                 {
///                     new Awsx.Ecs.Inputs.AwsvpcPortMappingArgs
///                     {
///                         ContainerPort = 80.0,
///                     },
///                 },
///             } },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["taskDefinitionArn"] = task.TaskDefinitionArn,
///     };
/// });
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.awsx.ecs.TaskDefinition;
/// import com.pulumi.awsx.ecs.TaskDefinitionArgs;
/// import com.pulumi.awsx.ecs.inputs.ContainerDefinitionArgs;
/// import com.pulumi.awsx.ecs.inputs.AwsvpcPortMappingArgs;
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
///         var task = new TaskDefinition("task", TaskDefinitionArgs.builder()
///             .containers(Map.of("app", ContainerDefinitionArgs.builder()
///                 .image("nginx:stable")
///                 .portMappings(AwsvpcPortMappingArgs.builder()
///                     .containerPort(80.0)
///                     .build())
///                 .build()))
///             .build());
///
///         ctx.export("taskDefinitionArn", task.taskDefinitionArn());
///     }
/// }
/// ```
///
/// ```yaml
/// name: ecs-task-definition
/// runtime: yaml
/// resources:
///   task:
///     type: awsx:ecs:TaskDefinition
///     properties:
///       containers:
///         app:
///           image: nginx:stable
///           portMappings:
///             - containerPort: 80
/// outputs:
///   taskDefinitionArn: ${task.taskDefinitionArn}
/// ```
///
///
///
/// ### Capacity compatibility
///
/// Task compatibility defines which compute environments the task can run on:
///
/// 1. **Fargate**
/// 2. **EC2**
/// 3. **Managed Instances**
///
/// Compatibility defaults to `FARGATE`. To support multiple environments, list them in `compatibilities`. AWSX validates the configuration against all selected environments. This does not select _where_ the task runs or provision capacity, it only declares where it _can_ run.
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as awsx from "@pulumi/awsx";
///
/// const task = new awsx.ecs.TaskDefinition("task", {
///     compatibilities: [
///         awsx.ecs.TaskCompatibility.FARGATE,
///         awsx.ecs.TaskCompatibility.MANAGED_INSTANCES,
///         awsx.ecs.TaskCompatibility.EC2,
///     ],
///     containers: {
///         app: {
///             image: "nginx:stable",
///             portMappings: [{
///                 containerPort: 80,
///             }],
///         },
///     },
/// });
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_awsx as awsx
///
/// task = awsx.ecs.TaskDefinition("task",
///     compatibilities=[
///         awsx.ecs.TaskCompatibility.FARGATE,
///         awsx.ecs.TaskCompatibility.MANAGE_D_INSTANCES,
///         awsx.ecs.TaskCompatibility.EC2,
///     ],
///     containers={
///         "app": {
///             "image": "nginx:stable",
///             "port_mappings": [{
///                 "container_port": float(80),
///             }],
///         },
///     })
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-awsx/sdk/v3/go/awsx/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ecs.NewTaskDefinition(ctx, "task", &ecs.TaskDefinitionArgs{
/// 			Compatibilities: []ecs.TaskCompatibility{
/// 				ecs.TaskCompatibilityFARGATE,
/// 				ecs.TaskCompatibility_MANAGED_INSTANCES,
/// 				ecs.TaskCompatibilityEC2,
/// 			},
/// 			Containers: map[string]*ecs.ContainerDefinitionArgs{
/// 				"app": ecs.ContainerDefinitionArgs{
/// 					Image: pulumi.String("nginx:stable"),
/// 					PortMappings: []ecs.AwsvpcPortMappingArgs{
/// 						{
/// 							ContainerPort: 80,
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
///
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Awsx = Pulumi.Awsx;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var task = new Awsx.Ecs.TaskDefinition("task", new()
///     {
///         Compatibilities = new()
///         {
///             Awsx.Ecs.TaskCompatibility.FARGATE,
///             Awsx.Ecs.TaskCompatibility.MANAGED_INSTANCES,
///             Awsx.Ecs.TaskCompatibility.EC2,
///         },
///         Containers =
///         {
///             { "app", new Awsx.Ecs.Inputs.ContainerDefinitionArgs
///             {
///                 Image = "nginx:stable",
///                 PortMappings = new()
///                 {
///                     new Awsx.Ecs.Inputs.AwsvpcPortMappingArgs
///                     {
///                         ContainerPort = 80.0,
///                     },
///                 },
///             } },
///         },
///     });
///
/// });
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.awsx.ecs.TaskDefinition;
/// import com.pulumi.awsx.ecs.TaskDefinitionArgs;
/// import com.pulumi.awsx.ecs.inputs.ContainerDefinitionArgs;
/// import com.pulumi.awsx.ecs.inputs.AwsvpcPortMappingArgs;
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
///         var task = new TaskDefinition("task", TaskDefinitionArgs.builder()
///             .compatibilities(
///                 "FARGATE",
///                 "MANAGED_INSTANCES",
///                 "EC2")
///             .containers(Map.of("app", ContainerDefinitionArgs.builder()
///                 .image("nginx:stable")
///                 .portMappings(AwsvpcPortMappingArgs.builder()
///                     .containerPort(80.0)
///                     .build())
///                 .build()))
///             .build());
///
///     }
/// }
/// ```
///
/// ```yaml
/// name: ecs-task-definition
/// runtime: yaml
/// resources:
///   task:
///     type: awsx:ecs:TaskDefinition
///     properties:
///       compatibilities:
///         - FARGATE
///         - MANAGED_INSTANCES
///         - EC2
///       containers:
///         app:
///           image: nginx:stable
///           portMappings:
///             - containerPort: 80
/// output:
///   taskDefinitionArn: ${task.taskDefinitionArn}
/// ```
///
///
///
/// ### Managed Instances compatibility
///
/// When `FARGATE` is included, AWSX selects a valid Fargate task size from the container requirements unless you provide explicit CPU and memory values. To use a task size outside the supported Fargate combinations, select only the environment you need.
///
/// This example targets Managed Instances and explicitly sets the task's CPU and memory:
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as awsx from "@pulumi/awsx";
///
/// const task = new awsx.ecs.TaskDefinition("task", {
///     cpuUnits: 256,
///     memoryMiB: 256,
///     compatibilities: [awsx.ecs.TaskCompatibility.MANAGED_INSTANCES],
///     containers: {
///         app: {
///             image: "nginx:stable",
///             portMappings: [{
///                 containerPort: 80,
///             }],
///         },
///     },
/// });
/// export const taskDefinitionArn = task.taskDefinitionArn;
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_awsx as awsx
///
/// task = awsx.ecs.TaskDefinition("task",
///     cpu_units=float(256),
///     memory_mi_b=float(256),
///     compatibilities=[awsx.ecs.TaskCompatibility.MANAGE_D_INSTANCES],
///     containers={
///         "app": {
///             "image": "nginx:stable",
///             "port_mappings": [{
///                 "container_port": float(80),
///             }],
///         },
///     })
/// pulumi.export("taskDefinitionArn", task.task_definition_arn)
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-awsx/sdk/v3/go/awsx/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		task, err := ecs.NewTaskDefinition(ctx, "task", &ecs.TaskDefinitionArgs{
/// 			CpuUnits:  256,
/// 			MemoryMiB: 256,
/// 			Compatibilities: []ecs.TaskCompatibility{
/// 				ecs.TaskCompatibility_MANAGED_INSTANCES,
/// 			},
/// 			Containers: map[string]*ecs.ContainerDefinitionArgs{
/// 				"app": ecs.ContainerDefinitionArgs{
/// 					Image: pulumi.String("nginx:stable"),
/// 					PortMappings: []ecs.AwsvpcPortMappingArgs{
/// 						{
/// 							ContainerPort: 80,
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("taskDefinitionArn", task.TaskDefinitionArn)
/// 		return nil
/// 	})
/// }
/// ```
///
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Awsx = Pulumi.Awsx;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var task = new Awsx.Ecs.TaskDefinition("task", new()
///     {
///         CpuUnits = 256.0,
///         MemoryMiB = 256.0,
///         Compatibilities = new()
///         {
///             Awsx.Ecs.TaskCompatibility.MANAGED_INSTANCES,
///         },
///         Containers =
///         {
///             { "app", new Awsx.Ecs.Inputs.ContainerDefinitionArgs
///             {
///                 Image = "nginx:stable",
///                 PortMappings = new()
///                 {
///                     new Awsx.Ecs.Inputs.AwsvpcPortMappingArgs
///                     {
///                         ContainerPort = 80.0,
///                     },
///                 },
///             } },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["taskDefinitionArn"] = task.TaskDefinitionArn,
///     };
/// });
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.awsx.ecs.TaskDefinition;
/// import com.pulumi.awsx.ecs.TaskDefinitionArgs;
/// import com.pulumi.awsx.ecs.inputs.ContainerDefinitionArgs;
/// import com.pulumi.awsx.ecs.inputs.AwsvpcPortMappingArgs;
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
///         var task = new TaskDefinition("task", TaskDefinitionArgs.builder()
///             .cpuUnits(256.0)
///             .memoryMiB(256.0)
///             .compatibilities("MANAGED_INSTANCES")
///             .containers(Map.of("app", ContainerDefinitionArgs.builder()
///                 .image("nginx:stable")
///                 .portMappings(AwsvpcPortMappingArgs.builder()
///                     .containerPort(80.0)
///                     .build())
///                 .build()))
///             .build());
///
///         ctx.export("taskDefinitionArn", task.taskDefinitionArn());
///     }
/// }
/// ```
///
/// ```yaml
/// name: ecs-task-definition
/// runtime: yaml
/// resources:
///   task:
///     type: awsx:ecs:TaskDefinition
///     properties:
///       cpuUnits: 256
///       memoryMiB: 256
///       compatibilities:
///         - MANAGED_INSTANCES
///       containers:
///         app:
///           image: nginx:stable
///           portMappings:
///             - containerPort: 80
/// outputs:
///   taskDefinitionArn: ${task.taskDefinitionArn}
/// ```
///
///
///
/// ### Environment variables and secrets
///
/// Use `environment` to configure ordinary values, Pulumi secrets, and references to AWS Secrets Manager or Systems Manager Parameter Store.
///
/// For secret sources, AWSX adds retrieval permissions to the task execution role. ECS retrieves the values when tasks start. The values are available as environment variables inside the container, rather than stored as plaintext in the ECS task definition.
///
/// ### Pulumi secrets
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as awsx from "@pulumi/awsx";
///
/// const config = new pulumi.Config();
/// const apiToken = config.requireSecret("apiToken");
/// const task = new awsx.ecs.TaskDefinition("task", {containers: {
///     app: {
///         image: "nginx:stable",
///         environment: {
///             API_TOKEN: {
///                 value: apiToken,
///             },
///         },
///         portMappings: [{
///             containerPort: 80,
///         }],
///     },
/// }});
/// export const taskDefinitionArn = task.taskDefinitionArn;
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_awsx as awsx
///
/// config = pulumi.Config()
/// api_token = config.require_secret("apiToken")
/// task = awsx.ecs.TaskDefinition("task", containers={
///     "app": {
///         "image": "nginx:stable",
///         "environment": {
///             "API_TOKEN": {
///                 "value": api_token,
///             },
///         },
///         "port_mappings": [{
///             "container_port": float(80),
///         }],
///     },
/// })
/// pulumi.export("taskDefinitionArn", task.task_definition_arn)
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-awsx/sdk/v3/go/awsx/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		apiToken := cfg.RequireSecret("apiToken")
/// 		task, err := ecs.NewTaskDefinition(ctx, "task", &ecs.TaskDefinitionArgs{
/// 			Containers: map[string]*ecs.ContainerDefinitionArgs{
/// 				"app": ecs.ContainerDefinitionArgs{
/// 					Image: pulumi.String("nginx:stable"),
/// 					Environment: map[string]ecs.EnvironmentVariableArgs{
/// 						"API_TOKEN": ecs.EnvironmentVariableArgs{
/// 							Value: apiToken,
/// 						},
/// 					},
/// 					PortMappings: []ecs.AwsvpcPortMappingArgs{
/// 						{
/// 							ContainerPort: 80,
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("taskDefinitionArn", task.TaskDefinitionArn)
/// 		return nil
/// 	})
/// }
/// ```
///
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Awsx = Pulumi.Awsx;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var apiToken = config.RequireSecret("apiToken");
///     var task = new Awsx.Ecs.TaskDefinition("task", new()
///     {
///         Containers =
///         {
///             { "app", new Awsx.Ecs.Inputs.ContainerDefinitionArgs
///             {
///                 Image = "nginx:stable",
///                 Environment =
///                 {
///                     { "API_TOKEN", new Awsx.Ecs.Inputs.EnvironmentVariableArgs
///                     {
///                         Value = apiToken,
///                     } },
///                 },
///                 PortMappings = new()
///                 {
///                     new Awsx.Ecs.Inputs.AwsvpcPortMappingArgs
///                     {
///                         ContainerPort = 80.0,
///                     },
///                 },
///             } },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["taskDefinitionArn"] = task.TaskDefinitionArn,
///     };
/// });
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.awsx.ecs.TaskDefinition;
/// import com.pulumi.awsx.ecs.TaskDefinitionArgs;
/// import com.pulumi.awsx.ecs.inputs.ContainerDefinitionArgs;
/// import com.pulumi.awsx.ecs.inputs.EnvironmentVariableArgs;
/// import com.pulumi.awsx.ecs.inputs.AwsvpcPortMappingArgs;
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
///         final var apiToken = config.requireSecret("apiToken");
///         var task = new TaskDefinition("task", TaskDefinitionArgs.builder()
///             .containers(Map.of("app", ContainerDefinitionArgs.builder()
///                 .image("nginx:stable")
///                 .environment(Map.of("API_TOKEN", EnvironmentVariableArgs.builder()
///                     .value(apiToken)
///                     .build()))
///                 .portMappings(AwsvpcPortMappingArgs.builder()
///                     .containerPort(80.0)
///                     .build())
///                 .build()))
///             .build());
///
///         ctx.export("taskDefinitionArn", task.taskDefinitionArn());
///     }
/// }
/// ```
///
/// ```yaml
/// name: ecs-task-definition
/// runtime: yaml
/// config:
///   apiToken:
///     type: string
///     secret: true
/// resources:
///   task:
///     type: awsx:ecs:TaskDefinition
///     properties:
///       containers:
///         app:
///           image: nginx:stable
///           environment:
///             API_TOKEN:
///               value: ${apiToken}
///           portMappings:
///             - containerPort: 80
/// outputs:
///   taskDefinitionArn: ${task.taskDefinitionArn}
/// ```
///
///
///
/// AWSX creates a Secrets Manager secret for the Pulumi secret value and references a specific secret version. Changing the configuration value creates a new task-definition revision which will trigger a new deployment for services that reference the task definition.
///
/// ### AWS Secrets Manager
///
/// Reference a secret managed outside the task-definition component. This example creates a JSON secret with a generated password, then injects only its `password` field.
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws_native from "@pulumi/aws-native";
/// import * as awsx from "@pulumi/awsx";
///
/// const databaseSecret = new aws_native.secretsmanager.Secret("databaseSecret", {generateSecretString: {
///     secretStringTemplate: "{\"username\":\"app\"}",
///     generateStringKey: "password",
///     passwordLength: 32,
///     excludePunctuation: true,
/// }});
/// const task = new awsx.ecs.TaskDefinition("task", {containers: {
///     app: {
///         image: "nginx:stable",
///         environment: {
///             DATABASE_PASSWORD: {
///                 secretsManager: {
///                     secretArn: databaseSecret.awsId,
///                     jsonKey: "password",
///                 },
///             },
///         },
///         portMappings: [{
///             containerPort: 80,
///         }],
///     },
/// }});
/// export const taskDefinitionArn = task.taskDefinitionArn;
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_aws_native as aws_native
/// import pulumi_awsx as awsx
///
/// database_secret = aws_native.secretsmanager.Secret("databaseSecret", generate_secret_string={
///     "secret_string_template": "{\"username\":\"app\"}",
///     "generate_string_key": "password",
///     "password_length": 32,
///     "exclude_punctuation": True,
/// })
/// task = awsx.ecs.TaskDefinition("task", containers={
///     "app": {
///         "image": "nginx:stable",
///         "environment": {
///             "DATABASE_PASSWORD": {
///                 "secrets_manager": {
///                     "secret_arn": database_secret.aws_id,
///                     "json_key": "password",
///                 },
///             },
///         },
///         "port_mappings": [{
///             "container_port": float(80),
///         }],
///     },
/// })
/// pulumi.export("taskDefinitionArn", task.task_definition_arn)
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws-native/sdk/go/aws/secretsmanager"
/// 	"github.com/pulumi/pulumi-awsx/sdk/v3/go/awsx/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		databaseSecret, err := secretsmanager.NewSecret(ctx, "databaseSecret", &secretsmanager.SecretArgs{
/// 			GenerateSecretString: &secretsmanager.SecretGenerateSecretStringArgs{
/// 				SecretStringTemplate: pulumi.String("{\"username\":\"app\"}"),
/// 				GenerateStringKey:    pulumi.String("password"),
/// 				PasswordLength:       pulumi.Int(32),
/// 				ExcludePunctuation:   pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		task, err := ecs.NewTaskDefinition(ctx, "task", &ecs.TaskDefinitionArgs{
/// 			Containers: map[string]*ecs.ContainerDefinitionArgs{
/// 				"app": ecs.ContainerDefinitionArgs{
/// 					Image: pulumi.String("nginx:stable"),
/// 					Environment: map[string]ecs.EnvironmentVariableArgs{
/// 						"DATABASE_PASSWORD": ecs.EnvironmentVariableArgs{
/// 							SecretsManager: ecs.SecretsManagerSecretArgs{
/// 								SecretArn: databaseSecret.AwsId,
/// 								JsonKey:   pulumi.String("password"),
/// 							},
/// 						},
/// 					},
/// 					PortMappings: []ecs.AwsvpcPortMappingArgs{
/// 						{
/// 							ContainerPort: 80,
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("taskDefinitionArn", task.TaskDefinitionArn)
/// 		return nil
/// 	})
/// }
/// ```
///
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AwsNative = Pulumi.AwsNative;
/// using Awsx = Pulumi.Awsx;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var databaseSecret = new AwsNative.SecretsManager.Secret("databaseSecret", new()
///     {
///         GenerateSecretString = new AwsNative.SecretsManager.Inputs.SecretGenerateSecretStringArgs
///         {
///             SecretStringTemplate = "{\"username\":\"app\"}",
///             GenerateStringKey = "password",
///             PasswordLength = 32,
///             ExcludePunctuation = true,
///         },
///     });
///
///     var task = new Awsx.Ecs.TaskDefinition("task", new()
///     {
///         Containers =
///         {
///             { "app", new Awsx.Ecs.Inputs.ContainerDefinitionArgs
///             {
///                 Image = "nginx:stable",
///                 Environment =
///                 {
///                     { "DATABASE_PASSWORD", new Awsx.Ecs.Inputs.EnvironmentVariableArgs
///                     {
///                         SecretsManager = new Awsx.Ecs.Inputs.SecretsManagerSecretArgs
///                         {
///                             SecretArn = databaseSecret.AwsId,
///                             JsonKey = "password",
///                         },
///                     } },
///                 },
///                 PortMappings = new()
///                 {
///                     new Awsx.Ecs.Inputs.AwsvpcPortMappingArgs
///                     {
///                         ContainerPort = 80.0,
///                     },
///                 },
///             } },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["taskDefinitionArn"] = task.TaskDefinitionArn,
///     };
/// });
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.awsnative.secretsmanager.Secret;
/// import com.pulumi.awsnative.secretsmanager.SecretArgs;
/// import com.pulumi.awsnative.secretsmanager.inputs.SecretGenerateSecretStringArgs;
/// import com.pulumi.awsx.ecs.TaskDefinition;
/// import com.pulumi.awsx.ecs.TaskDefinitionArgs;
/// import com.pulumi.awsx.ecs.inputs.ContainerDefinitionArgs;
/// import com.pulumi.awsx.ecs.inputs.EnvironmentVariableArgs;
/// import com.pulumi.awsx.ecs.inputs.SecretsManagerSecretArgs;
/// import com.pulumi.awsx.ecs.inputs.AwsvpcPortMappingArgs;
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
///         var databaseSecret = new Secret("databaseSecret", SecretArgs.builder()
///             .generateSecretString(SecretGenerateSecretStringArgs.builder()
///                 .secretStringTemplate("{\"username\":\"app\"}")
///                 .generateStringKey("password")
///                 .passwordLength(32)
///                 .excludePunctuation(true)
///                 .build())
///             .build());
///
///         var task = new TaskDefinition("task", TaskDefinitionArgs.builder()
///             .containers(Map.of("app", ContainerDefinitionArgs.builder()
///                 .image("nginx:stable")
///                 .environment(Map.of("DATABASE_PASSWORD", EnvironmentVariableArgs.builder()
///                     .secretsManager(SecretsManagerSecretArgs.builder()
///                         .secretArn(databaseSecret.awsId())
///                         .jsonKey("password")
///                         .build())
///                     .build()))
///                 .portMappings(AwsvpcPortMappingArgs.builder()
///                     .containerPort(80.0)
///                     .build())
///                 .build()))
///             .build());
///
///         ctx.export("taskDefinitionArn", task.taskDefinitionArn());
///     }
/// }
/// ```
///
/// ```yaml
/// name: ecs-task-definition
/// runtime: yaml
/// resources:
///   databaseSecret:
///     type: aws-native:secretsmanager:Secret
///     properties:
///       generateSecretString:
///         secretStringTemplate: '{"username":"app"}'
///         generateStringKey: password
///         passwordLength: 32
///         excludePunctuation: true
///   task:
///     type: awsx:ecs:TaskDefinition
///     properties:
///       containers:
///         app:
///           image: nginx:stable
///           environment:
///             DATABASE_PASSWORD:
///               secretsManager:
///                 secretArn: ${databaseSecret.awsId}
///                 jsonKey: password
///           portMappings:
///             - containerPort: 80
/// outputs:
///   taskDefinitionArn: ${task.taskDefinitionArn}
/// ```
///
///
///
/// ### AWS Systems Manager Parameter Store
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as awsx from "@pulumi/awsx";
///
/// const config = new pulumi.Config();
/// const sharedTokenParameterArn = config.require("sharedTokenParameterArn");
/// const task = new awsx.ecs.TaskDefinition("task", {containers: {
///     app: {
///         image: "nginx:stable",
///         environment: {
///             SHARED_TOKEN: {
///                 ssmParameterArn: sharedTokenParameterArn,
///             },
///         },
///         portMappings: [{
///             containerPort: 80,
///         }],
///     },
/// }});
/// export const taskDefinitionArn = task.taskDefinitionArn;
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_awsx as awsx
///
/// config = pulumi.Config()
/// shared_token_parameter_arn = config.require("sharedTokenParameterArn")
/// task = awsx.ecs.TaskDefinition("task", containers={
///     "app": {
///         "image": "nginx:stable",
///         "environment": {
///             "SHARED_TOKEN": {
///                 "ssm_parameter_arn": shared_token_parameter_arn,
///             },
///         },
///         "port_mappings": [{
///             "container_port": float(80),
///         }],
///     },
/// })
/// pulumi.export("taskDefinitionArn", task.task_definition_arn)
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-awsx/sdk/v3/go/awsx/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		sharedTokenParameterArn := cfg.Require("sharedTokenParameterArn")
/// 		task, err := ecs.NewTaskDefinition(ctx, "task", &ecs.TaskDefinitionArgs{
/// 			Containers: map[string]*ecs.ContainerDefinitionArgs{
/// 				"app": ecs.ContainerDefinitionArgs{
/// 					Image: pulumi.String("nginx:stable"),
/// 					Environment: map[string]ecs.EnvironmentVariableArgs{
/// 						"SHARED_TOKEN": ecs.EnvironmentVariableArgs{
/// 							SsmParameterArn: pulumi.String(sharedTokenParameterArn),
/// 						},
/// 					},
/// 					PortMappings: []ecs.AwsvpcPortMappingArgs{
/// 						{
/// 							ContainerPort: 80,
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("taskDefinitionArn", task.TaskDefinitionArn)
/// 		return nil
/// 	})
/// }
/// ```
///
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Awsx = Pulumi.Awsx;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var sharedTokenParameterArn = config.Require("sharedTokenParameterArn");
///     var task = new Awsx.Ecs.TaskDefinition("task", new()
///     {
///         Containers =
///         {
///             { "app", new Awsx.Ecs.Inputs.ContainerDefinitionArgs
///             {
///                 Image = "nginx:stable",
///                 Environment =
///                 {
///                     { "SHARED_TOKEN", new Awsx.Ecs.Inputs.EnvironmentVariableArgs
///                     {
///                         SsmParameterArn = sharedTokenParameterArn,
///                     } },
///                 },
///                 PortMappings = new()
///                 {
///                     new Awsx.Ecs.Inputs.AwsvpcPortMappingArgs
///                     {
///                         ContainerPort = 80.0,
///                     },
///                 },
///             } },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["taskDefinitionArn"] = task.TaskDefinitionArn,
///     };
/// });
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.awsx.ecs.TaskDefinition;
/// import com.pulumi.awsx.ecs.TaskDefinitionArgs;
/// import com.pulumi.awsx.ecs.inputs.ContainerDefinitionArgs;
/// import com.pulumi.awsx.ecs.inputs.EnvironmentVariableArgs;
/// import com.pulumi.awsx.ecs.inputs.AwsvpcPortMappingArgs;
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
///         final var sharedTokenParameterArn = config.require("sharedTokenParameterArn");
///         var task = new TaskDefinition("task", TaskDefinitionArgs.builder()
///             .containers(Map.of("app", ContainerDefinitionArgs.builder()
///                 .image("nginx:stable")
///                 .environment(Map.of("SHARED_TOKEN", EnvironmentVariableArgs.builder()
///                     .ssmParameterArn(sharedTokenParameterArn)
///                     .build()))
///                 .portMappings(AwsvpcPortMappingArgs.builder()
///                     .containerPort(80.0)
///                     .build())
///                 .build()))
///             .build());
///
///         ctx.export("taskDefinitionArn", task.taskDefinitionArn());
///     }
/// }
/// ```
///
/// ```yaml
/// name: ecs-task-definition
/// runtime: yaml
/// config:
///   sharedTokenParameterArn:
///     type: string
/// resources:
///   task:
///     type: awsx:ecs:TaskDefinition
///     properties:
///       containers:
///         app:
///           image: nginx:stable
///           environment:
///             SHARED_TOKEN:
///               ssmParameterArn: ${sharedTokenParameterArn}
///           portMappings:
///             - containerPort: 80
/// outputs:
///   taskDefinitionArn: ${task.taskDefinitionArn}
/// ```
///
///
///
/// Changing the value stored in the parameter will not trigger a deployment.
///
/// ### Logging
///
/// The `TaskDefinition` creates a shared CloudWatch Logs log group by default where all container logs are sent. To control settings such as retention, create a log group and pass its ARN.
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as awsx from "@pulumi/awsx";
///
/// const applicationLogs = new aws.cloudwatch.LogGroup("applicationLogs", {retentionInDays: 14});
/// const task = new awsx.ecs.TaskDefinition("task", {containers: {
///     app: {
///         image: "nginx:stable",
///         portMappings: [{
///             containerPort: 80,
///         }],
///         logging: {
///             cloudwatch: {
///                 logGroupArn: applicationLogs.arn,
///                 streamPrefix: "app",
///             },
///         },
///     },
/// }});
/// export const taskDefinitionArn = task.taskDefinitionArn;
/// export const logGroupName = applicationLogs.name;
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_awsx as awsx
///
/// application_logs = aws.cloudwatch.LogGroup("applicationLogs", retention_in_days=14)
/// task = awsx.ecs.TaskDefinition("task", containers={
///     "app": {
///         "image": "nginx:stable",
///         "port_mappings": [{
///             "container_port": float(80),
///         }],
///         "logging": {
///             "cloudwatch": {
///                 "log_group_arn": application_logs.arn,
///                 "stream_prefix": "app",
///             },
///         },
///     },
/// })
/// pulumi.export("taskDefinitionArn", task.task_definition_arn)
/// pulumi.export("logGroupName", application_logs.name)
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi-awsx/sdk/v3/go/awsx/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		applicationLogs, err := cloudwatch.NewLogGroup(ctx, "applicationLogs", &cloudwatch.LogGroupArgs{
/// 			RetentionInDays: pulumi.Int(14),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		task, err := ecs.NewTaskDefinition(ctx, "task", &ecs.TaskDefinitionArgs{
/// 			Containers: map[string]*ecs.ContainerDefinitionArgs{
/// 				"app": ecs.ContainerDefinitionArgs{
/// 					Image: pulumi.String("nginx:stable"),
/// 					PortMappings: []ecs.AwsvpcPortMappingArgs{
/// 						{
/// 							ContainerPort: 80,
/// 						},
/// 					},
/// 					Logging: ecs.ContainerLoggingArgs{
/// 						Cloudwatch: ecs.CloudWatchLoggingArgs{
/// 							LogGroupArn:  applicationLogs.Arn,
/// 							StreamPrefix: pulumi.String("app"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("taskDefinitionArn", task.TaskDefinitionArn)
/// 		ctx.Export("logGroupName", applicationLogs.Name)
/// 		return nil
/// 	})
/// }
/// ```
///
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Awsx = Pulumi.Awsx;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var applicationLogs = new Aws.CloudWatch.LogGroup("applicationLogs", new()
///     {
///         RetentionInDays = 14,
///     });
///
///     var task = new Awsx.Ecs.TaskDefinition("task", new()
///     {
///         Containers =
///         {
///             { "app", new Awsx.Ecs.Inputs.ContainerDefinitionArgs
///             {
///                 Image = "nginx:stable",
///                 PortMappings = new()
///                 {
///                     new Awsx.Ecs.Inputs.AwsvpcPortMappingArgs
///                     {
///                         ContainerPort = 80.0,
///                     },
///                 },
///                 Logging = new Awsx.Ecs.Inputs.ContainerLoggingArgs
///                 {
///                     Cloudwatch = new Awsx.Ecs.Inputs.CloudWatchLoggingArgs
///                     {
///                         LogGroupArn = applicationLogs.Arn,
///                         StreamPrefix = "app",
///                     },
///                 },
///             } },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["taskDefinitionArn"] = task.TaskDefinitionArn,
///         ["logGroupName"] = applicationLogs.Name,
///     };
/// });
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudwatch.LogGroup;
/// import com.pulumi.aws.cloudwatch.LogGroupArgs;
/// import com.pulumi.awsx.ecs.TaskDefinition;
/// import com.pulumi.awsx.ecs.TaskDefinitionArgs;
/// import com.pulumi.awsx.ecs.inputs.ContainerDefinitionArgs;
/// import com.pulumi.awsx.ecs.inputs.AwsvpcPortMappingArgs;
/// import com.pulumi.awsx.ecs.inputs.ContainerLoggingArgs;
/// import com.pulumi.awsx.ecs.inputs.CloudWatchLoggingArgs;
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
///         var applicationLogs = new LogGroup("applicationLogs", LogGroupArgs.builder()
///             .retentionInDays(14)
///             .build());
///
///         var task = new TaskDefinition("task", TaskDefinitionArgs.builder()
///             .containers(Map.of("app", ContainerDefinitionArgs.builder()
///                 .image("nginx:stable")
///                 .portMappings(AwsvpcPortMappingArgs.builder()
///                     .containerPort(80.0)
///                     .build())
///                 .logging(ContainerLoggingArgs.builder()
///                     .cloudwatch(CloudWatchLoggingArgs.builder()
///                         .logGroupArn(applicationLogs.arn())
///                         .streamPrefix("app")
///                         .build())
///                     .build())
///                 .build()))
///             .build());
///
///         ctx.export("taskDefinitionArn", task.taskDefinitionArn());
///         ctx.export("logGroupName", applicationLogs.name());
///     }
/// }
/// ```
///
/// ```yaml
/// name: task-logging
/// runtime: yaml
/// resources:
///   applicationLogs:
///     type: aws:cloudwatch:LogGroup
///     properties:
///       retentionInDays: 14
///
///   task:
///     type: awsx:ecs:TaskDefinition
///     properties:
///       containers:
///         app:
///           image: nginx:stable
///           portMappings:
///             - containerPort: 80
///           logging:
///             cloudwatch:
///               logGroupArn: ${applicationLogs.arn}
///               streamPrefix: app
/// outputs:
///   taskDefinitionArn: ${task.taskDefinitionArn}
///   logGroupName: ${applicationLogs.name}
/// ```
///
///
///
/// AWSX grants the task execution role permission to write to this log group.
///
/// ### CPU and memory
///
/// Task-level CPU and memory configure the resources allocated to the task. Container-level settings configure CPU reservations and memory limits within that allocation.
///
/// #### Automatic task sizing
///
/// For a small application that needs 0.5 vCPU and up to 1 GiB of memory, configure the container and leave task-level sizing unset:
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as awsx from "@pulumi/awsx";
///
/// const config = new pulumi.Config();
/// const applicationImage = config.require("applicationImage");
/// const task = new awsx.ecs.TaskDefinition("task", {containers: {
///     app: {
///         image: applicationImage,
///         cpuUnits: 512,
///         memoryMiB: 1024,
///     },
/// }});
/// export const taskDefinitionArn = task.taskDefinitionArn;
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_awsx as awsx
///
/// config = pulumi.Config()
/// application_image = config.require("applicationImage")
/// task = awsx.ecs.TaskDefinition("task", containers={
///     "app": {
///         "image": application_image,
///         "cpu_units": float(512),
///         "memory_mi_b": float(1024),
///     },
/// })
/// pulumi.export("taskDefinitionArn", task.task_definition_arn)
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-awsx/sdk/v3/go/awsx/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		applicationImage := cfg.Require("applicationImage")
/// 		task, err := ecs.NewTaskDefinition(ctx, "task", &ecs.TaskDefinitionArgs{
/// 			Containers: map[string]*ecs.ContainerDefinitionArgs{
/// 				"app": ecs.ContainerDefinitionArgs{
/// 					Image:     pulumi.String(applicationImage),
/// 					CpuUnits:  512,
/// 					MemoryMiB: 1024,
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("taskDefinitionArn", task.TaskDefinitionArn)
/// 		return nil
/// 	})
/// }
/// ```
///
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Awsx = Pulumi.Awsx;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var applicationImage = config.Require("applicationImage");
///     var task = new Awsx.Ecs.TaskDefinition("task", new()
///     {
///         Containers =
///         {
///             { "app", new Awsx.Ecs.Inputs.ContainerDefinitionArgs
///             {
///                 Image = applicationImage,
///                 CpuUnits = 512.0,
///                 MemoryMiB = 1024.0,
///             } },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["taskDefinitionArn"] = task.TaskDefinitionArn,
///     };
/// });
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.awsx.ecs.TaskDefinition;
/// import com.pulumi.awsx.ecs.TaskDefinitionArgs;
/// import com.pulumi.awsx.ecs.inputs.ContainerDefinitionArgs;
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
///         final var applicationImage = config.require("applicationImage");
///         var task = new TaskDefinition("task", TaskDefinitionArgs.builder()
///             .containers(Map.of("app", ContainerDefinitionArgs.builder()
///                 .image(applicationImage)
///                 .cpuUnits(512.0)
///                 .memoryMiB(1024.0)
///                 .build()))
///             .build());
///
///         ctx.export("taskDefinitionArn", task.taskDefinitionArn());
///     }
/// }
/// ```
///
/// ```yaml
/// name: task-automatic-sizing
/// runtime: yaml
/// config:
///   applicationImage:
///     type: string
/// resources:
///   task:
///     type: awsx:ecs:TaskDefinition
///     properties:
///       containers:
///         app:
///           image: ${applicationImage}
///           cpuUnits: 512
///           memoryMiB: 1024
/// outputs:
///   taskDefinitionArn: ${task.taskDefinitionArn}
/// ```
///
///
///
/// AWSX selects a Fargate task with 512 CPU units and 1024 MiB of memory. This gives the task 0.5 vCPU and 1 GiB of memory.
///
/// #### Reserving headroom for memory bursts
///
/// A worker might normally need 1 GiB of memory but use up to 3 GiB while processing a job. A telemetry sidecar might normally need 256 MiB and should never exceed 512 MiB.
///
/// Use `memoryReservationMiB` for each container’s soft memory reservation and `memoryMiB` for its hard limit. Set task-level memory explicitly to provide room for bursts:
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as awsx from "@pulumi/awsx";
///
/// const config = new pulumi.Config();
/// const workerImage = config.require("workerImage");
/// const telemetryImage = config.require("telemetryImage");
/// const task = new awsx.ecs.TaskDefinition("task", {
///     cpuUnits: 1024,
///     memoryMiB: 4096,
///     containers: {
///         worker: {
///             image: workerImage,
///             cpuUnits: 768,
///             memoryReservationMiB: 1024,
///             memoryMiB: 3072,
///         },
///         telemetry: {
///             image: telemetryImage,
///             cpuUnits: 256,
///             memoryReservationMiB: 256,
///             memoryMiB: 512,
///         },
///     },
/// });
/// export const taskDefinitionArn = task.taskDefinitionArn;
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_awsx as awsx
///
/// config = pulumi.Config()
/// worker_image = config.require("workerImage")
/// telemetry_image = config.require("telemetryImage")
/// task = awsx.ecs.TaskDefinition("task",
///     cpu_units=float(1024),
///     memory_mi_b=float(4096),
///     containers={
///         "worker": {
///             "image": worker_image,
///             "cpu_units": float(768),
///             "memory_reservation_mi_b": float(1024),
///             "memory_mi_b": float(3072),
///         },
///         "telemetry": {
///             "image": telemetry_image,
///             "cpu_units": float(256),
///             "memory_reservation_mi_b": float(256),
///             "memory_mi_b": float(512),
///         },
///     })
/// pulumi.export("taskDefinitionArn", task.task_definition_arn)
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-awsx/sdk/v3/go/awsx/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		workerImage := cfg.Require("workerImage")
/// 		telemetryImage := cfg.Require("telemetryImage")
/// 		task, err := ecs.NewTaskDefinition(ctx, "task", &ecs.TaskDefinitionArgs{
/// 			CpuUnits:  1024,
/// 			MemoryMiB: 4096,
/// 			Containers: map[string]*ecs.ContainerDefinitionArgs{
/// 				"worker": ecs.ContainerDefinitionArgs{
/// 					Image:                pulumi.String(workerImage),
/// 					CpuUnits:             768,
/// 					MemoryReservationMiB: 1024,
/// 					MemoryMiB:            3072,
/// 				},
/// 				"telemetry": ecs.ContainerDefinitionArgs{
/// 					Image:                pulumi.String(telemetryImage),
/// 					CpuUnits:             256,
/// 					MemoryReservationMiB: 256,
/// 					MemoryMiB:            512,
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("taskDefinitionArn", task.TaskDefinitionArn)
/// 		return nil
/// 	})
/// }
/// ```
///
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Awsx = Pulumi.Awsx;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var workerImage = config.Require("workerImage");
///     var telemetryImage = config.Require("telemetryImage");
///     var task = new Awsx.Ecs.TaskDefinition("task", new()
///     {
///         CpuUnits = 1024.0,
///         MemoryMiB = 4096.0,
///         Containers =
///         {
///             { "worker", new Awsx.Ecs.Inputs.ContainerDefinitionArgs
///             {
///                 Image = workerImage,
///                 CpuUnits = 768.0,
///                 MemoryReservationMiB = 1024.0,
///                 MemoryMiB = 3072.0,
///             } },
///             { "telemetry", new Awsx.Ecs.Inputs.ContainerDefinitionArgs
///             {
///                 Image = telemetryImage,
///                 CpuUnits = 256.0,
///                 MemoryReservationMiB = 256.0,
///                 MemoryMiB = 512.0,
///             } },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["taskDefinitionArn"] = task.TaskDefinitionArn,
///     };
/// });
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.awsx.ecs.TaskDefinition;
/// import com.pulumi.awsx.ecs.TaskDefinitionArgs;
/// import com.pulumi.awsx.ecs.inputs.ContainerDefinitionArgs;
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
///         final var workerImage = config.require("workerImage");
///         final var telemetryImage = config.require("telemetryImage");
///         var task = new TaskDefinition("task", TaskDefinitionArgs.builder()
///             .cpuUnits(1024.0)
///             .memoryMiB(4096.0)
///             .containers(Map.ofEntries(
///                 Map.entry("worker", ContainerDefinitionArgs.builder()
///                     .image(workerImage)
///                     .cpuUnits(768.0)
///                     .memoryReservationMiB(1024.0)
///                     .memoryMiB(3072.0)
///                     .build()),
///                 Map.entry("telemetry", ContainerDefinitionArgs.builder()
///                     .image(telemetryImage)
///                     .cpuUnits(256.0)
///                     .memoryReservationMiB(256.0)
///                     .memoryMiB(512.0)
///                     .build())
///             ))
///             .build());
///
///         ctx.export("taskDefinitionArn", task.taskDefinitionArn());
///     }
/// }
/// ```
///
/// ```yaml
/// name: task-memory-headroom
/// runtime: yaml
/// config:
///   workerImage:
///     type: string
///   telemetryImage:
///     type: string
/// resources:
///   task:
///     type: awsx:ecs:TaskDefinition
///     properties:
///       cpuUnits: 1024
///       memoryMiB: 4096
///       containers:
///         worker:
///           image: ${workerImage}
///           cpuUnits: 768
///           memoryReservationMiB: 1024
///           memoryMiB: 3072
///
///         telemetry:
///           image: ${telemetryImage}
///           cpuUnits: 256
///           memoryReservationMiB: 256
///           memoryMiB: 512
/// outputs:
///   taskDefinitionArn: ${task.taskDefinitionArn}
/// ```
///
///
///
/// The task has 1 vCPU and 4 GiB of memory. Within that allocation:
///
/// - The worker has a soft memory reservation of 1 GiB and a hard limit of 3 GiB.
/// - Telemetry has a soft memory reservation of 256 MiB and a hard limit of 512 MiB.
/// - When both containers compete for CPU, the worker has three times the CPU weight of telemetry.
///
/// When `memoryReservationMiB` is set, automatic sizing uses that reservation instead of the container’s hard memory limit. In this example, automatic sizing would select a 2 GiB task. Explicitly allocating 4 GiB provides enough headroom for the worker to grow toward its 3 GiB limit while telemetry continues running.
class TaskDefinition extends pulumi.ComponentResource {
  /// The ARN of the task execution role.
  late final pulumi.Output<String?> executionRoleArn;
  /// The family of the registered task definition.
  late final pulumi.Output<String?> family;
  /// The shared CloudWatch Logs log group created by the component for containers using CloudWatch
  /// logging (enabled by default) without specifying `logGroupArn`. This output is undefined when
  /// the component does not create a default log group
  late final pulumi.Output<pulumi_aws_cloudwatch.LogGroup?> logGroup;
  late final pulumi.Output<String?> region;
  /// The revision number assigned by ECS to the registered task definition.
  late final pulumi.Output<double?> revision;
  /// The ARN of the registered task-definition revision. Pass this to an ECS service or task.
  late final pulumi.Output<String?> taskDefinitionArn;
  /// The ARN of the task role.
  late final pulumi.Output<String?> taskRoleArn;

  /// Creates a new [TaskDefinition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TaskDefinition]. {@macro pulumi_ecs_task_definition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TaskDefinition(
    String name, {
    TaskDefinitionArgs? args,
    pulumi.ComponentResourceOptions? options,
  }) : super(
          'awsx:ecs:TaskDefinition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.ComponentResourceOptions(version: '3.15.0').merge(options),
          remote: true,
        ) {
    executionRoleArn = registerOutput<String?>('executionRoleArn');
    family = registerOutput<String?>('family');
    logGroup = registerOutput<pulumi_aws_cloudwatch.LogGroup?>('logGroup');
    region = registerOutput<String?>('region');
    revision = registerOutput<double?>('revision');
    taskDefinitionArn = registerOutput<String?>('taskDefinitionArn');
    taskRoleArn = registerOutput<String?>('taskRoleArn');
  }
}
