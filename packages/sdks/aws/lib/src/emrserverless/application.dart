import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_args.dart';
import 'application_auto_start_configuration.dart';
import 'application_auto_stop_configuration.dart';
import 'application_image_configuration.dart';
import 'application_interactive_configuration.dart';
import 'application_job_level_cost_allocation_configuration.dart';
import 'application_maximum_capacity.dart';
import 'application_monitoring_configuration.dart';
import 'application_network_configuration.dart';
import 'application_scheduler_configuration.dart';
import 'application_state.dart';

/// Manages an EMR Serverless Application.
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
/// const example = new aws.emrserverless.Application("example", {
///     name: "example",
///     releaseLabel: "emr-6.6.0",
///     type: "hive",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.emrserverless.Application("example",
///     name="example",
///     release_label="emr-6.6.0",
///     type="hive")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.EmrServerless.Application("example", new()
///     {
///         Name = "example",
///         ReleaseLabel = "emr-6.6.0",
///         Type = "hive",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/emrserverless"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := emrserverless.NewApplication(ctx, "example", &emrserverless.ApplicationArgs{
/// 			Name:         pulumi.String("example"),
/// 			ReleaseLabel: pulumi.String("emr-6.6.0"),
/// 			Type:         pulumi.String("hive"),
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
/// resource "aws_emrserverless_application" "example" {
///   name          = "example"
///   release_label = "emr-6.6.0"
///   type          = "hive"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.emrserverless.Application;
/// import com.pulumi.aws.emrserverless.ApplicationArgs;
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
///         var example = new Application("example", ApplicationArgs.builder()
///             .name("example")
///             .releaseLabel("emr-6.6.0")
///             .type("hive")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:emrserverless:Application
///     properties:
///       name: example
///       releaseLabel: emr-6.6.0
///       type: hive
/// ```
///
///
/// ### Initial Capacity Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.emrserverless.Application("example", {
///     name: "example",
///     releaseLabel: "emr-6.6.0",
///     type: "hive",
///     initialCapacities: [{
///         initialCapacityType: "HiveDriver",
///         initialCapacityConfig: {
///             workerCount: 1,
///             workerConfiguration: {
///                 cpu: "2 vCPU",
///                 memory: "10 GB",
///             },
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.emrserverless.Application("example",
///     name="example",
///     release_label="emr-6.6.0",
///     type="hive",
///     initial_capacities=[{
///         "initial_capacity_type": "HiveDriver",
///         "initial_capacity_config": {
///             "worker_count": 1,
///             "worker_configuration": {
///                 "cpu": "2 vCPU",
///                 "memory": "10 GB",
///             },
///         },
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.EmrServerless.Application("example", new()
///     {
///         Name = "example",
///         ReleaseLabel = "emr-6.6.0",
///         Type = "hive",
///         InitialCapacities = new[]
///         {
///             new Aws.EmrServerless.Inputs.ApplicationInitialCapacityArgs
///             {
///                 InitialCapacityType = "HiveDriver",
///                 InitialCapacityConfig = new Aws.EmrServerless.Inputs.ApplicationInitialCapacityInitialCapacityConfigArgs
///                 {
///                     WorkerCount = 1,
///                     WorkerConfiguration = new Aws.EmrServerless.Inputs.ApplicationInitialCapacityInitialCapacityConfigWorkerConfigurationArgs
///                     {
///                         Cpu = "2 vCPU",
///                         Memory = "10 GB",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/emrserverless"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := emrserverless.NewApplication(ctx, "example", &emrserverless.ApplicationArgs{
/// 			Name:         pulumi.String("example"),
/// 			ReleaseLabel: pulumi.String("emr-6.6.0"),
/// 			Type:         pulumi.String("hive"),
/// 			InitialCapacities: emrserverless.ApplicationInitialCapacityArray{
/// 				&emrserverless.ApplicationInitialCapacityArgs{
/// 					InitialCapacityType: pulumi.String("HiveDriver"),
/// 					InitialCapacityConfig: &emrserverless.ApplicationInitialCapacityInitialCapacityConfigArgs{
/// 						WorkerCount: pulumi.Int(1),
/// 						WorkerConfiguration: &emrserverless.ApplicationInitialCapacityInitialCapacityConfigWorkerConfigurationArgs{
/// 							Cpu:    pulumi.String("2 vCPU"),
/// 							Memory: pulumi.String("10 GB"),
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
/// resource "aws_emrserverless_application" "example" {
///   name          = "example"
///   release_label = "emr-6.6.0"
///   type          = "hive"
///   initial_capacities {
///     initial_capacity_type = "HiveDriver"
///     initial_capacity_config = {
///       worker_count = 1
///       worker_configuration = {
///         cpu    = "2 vCPU"
///         memory = "10 GB"
///       }
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
/// import com.pulumi.aws.emrserverless.Application;
/// import com.pulumi.aws.emrserverless.ApplicationArgs;
/// import com.pulumi.aws.emrserverless.inputs.ApplicationInitialCapacityArgs;
/// import com.pulumi.aws.emrserverless.inputs.ApplicationInitialCapacityInitialCapacityConfigArgs;
/// import com.pulumi.aws.emrserverless.inputs.ApplicationInitialCapacityInitialCapacityConfigWorkerConfigurationArgs;
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
///         var example = new Application("example", ApplicationArgs.builder()
///             .name("example")
///             .releaseLabel("emr-6.6.0")
///             .type("hive")
///             .initialCapacities(ApplicationInitialCapacityArgs.builder()
///                 .initialCapacityType("HiveDriver")
///                 .initialCapacityConfig(ApplicationInitialCapacityInitialCapacityConfigArgs.builder()
///                     .workerCount(1)
///                     .workerConfiguration(ApplicationInitialCapacityInitialCapacityConfigWorkerConfigurationArgs.builder()
///                         .cpu("2 vCPU")
///                         .memory("10 GB")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:emrserverless:Application
///     properties:
///       name: example
///       releaseLabel: emr-6.6.0
///       type: hive
///       initialCapacities:
///         - initialCapacityType: HiveDriver
///           initialCapacityConfig:
///             workerCount: 1
///             workerConfiguration:
///               cpu: 2 vCPU
///               memory: 10 GB
/// ```
///
///
/// ### Maximum Capacity Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.emrserverless.Application("example", {
///     name: "example",
///     releaseLabel: "emr-6.6.0",
///     type: "hive",
///     maximumCapacity: {
///         cpu: "2 vCPU",
///         memory: "10 GB",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.emrserverless.Application("example",
///     name="example",
///     release_label="emr-6.6.0",
///     type="hive",
///     maximum_capacity={
///         "cpu": "2 vCPU",
///         "memory": "10 GB",
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
///     var example = new Aws.EmrServerless.Application("example", new()
///     {
///         Name = "example",
///         ReleaseLabel = "emr-6.6.0",
///         Type = "hive",
///         MaximumCapacity = new Aws.EmrServerless.Inputs.ApplicationMaximumCapacityArgs
///         {
///             Cpu = "2 vCPU",
///             Memory = "10 GB",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/emrserverless"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := emrserverless.NewApplication(ctx, "example", &emrserverless.ApplicationArgs{
/// 			Name:         pulumi.String("example"),
/// 			ReleaseLabel: pulumi.String("emr-6.6.0"),
/// 			Type:         pulumi.String("hive"),
/// 			MaximumCapacity: &emrserverless.ApplicationMaximumCapacityArgs{
/// 				Cpu:    pulumi.String("2 vCPU"),
/// 				Memory: pulumi.String("10 GB"),
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
/// resource "aws_emrserverless_application" "example" {
///   name          = "example"
///   release_label = "emr-6.6.0"
///   type          = "hive"
///   maximum_capacity = {
///     cpu    = "2 vCPU"
///     memory = "10 GB"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.emrserverless.Application;
/// import com.pulumi.aws.emrserverless.ApplicationArgs;
/// import com.pulumi.aws.emrserverless.inputs.ApplicationMaximumCapacityArgs;
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
///         var example = new Application("example", ApplicationArgs.builder()
///             .name("example")
///             .releaseLabel("emr-6.6.0")
///             .type("hive")
///             .maximumCapacity(ApplicationMaximumCapacityArgs.builder()
///                 .cpu("2 vCPU")
///                 .memory("10 GB")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:emrserverless:Application
///     properties:
///       name: example
///       releaseLabel: emr-6.6.0
///       type: hive
///       maximumCapacity:
///         cpu: 2 vCPU
///         memory: 10 GB
/// ```
///
///
/// ### Monitoring Configuration Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.emrserverless.Application("example", {
///     name: "example",
///     releaseLabel: "emr-7.1.0",
///     type: "spark",
///     monitoringConfiguration: {
///         cloudwatchLoggingConfiguration: {
///             enabled: true,
///             logGroupName: "/aws/emr-serverless/example",
///             logStreamNamePrefix: "spark-logs",
///             logTypes: [
///                 {
///                     name: "SPARK_DRIVER",
///                     values: [
///                         "STDOUT",
///                         "STDERR",
///                     ],
///                 },
///                 {
///                     name: "SPARK_EXECUTOR",
///                     values: ["STDOUT"],
///                 },
///             ],
///         },
///         managedPersistenceMonitoringConfiguration: {
///             enabled: true,
///         },
///         prometheusMonitoringConfiguration: {
///             remoteWriteUrl: "https://prometheus-remote-write-endpoint.example.com/api/v1/write",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.emrserverless.Application("example",
///     name="example",
///     release_label="emr-7.1.0",
///     type="spark",
///     monitoring_configuration={
///         "cloudwatch_logging_configuration": {
///             "enabled": True,
///             "log_group_name": "/aws/emr-serverless/example",
///             "log_stream_name_prefix": "spark-logs",
///             "log_types": [
///                 {
///                     "name": "SPARK_DRIVER",
///                     "values": [
///                         "STDOUT",
///                         "STDERR",
///                     ],
///                 },
///                 {
///                     "name": "SPARK_EXECUTOR",
///                     "values": ["STDOUT"],
///                 },
///             ],
///         },
///         "managed_persistence_monitoring_configuration": {
///             "enabled": True,
///         },
///         "prometheus_monitoring_configuration": {
///             "remote_write_url": "https://prometheus-remote-write-endpoint.example.com/api/v1/write",
///         },
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
///     var example = new Aws.EmrServerless.Application("example", new()
///     {
///         Name = "example",
///         ReleaseLabel = "emr-7.1.0",
///         Type = "spark",
///         MonitoringConfiguration = new Aws.EmrServerless.Inputs.ApplicationMonitoringConfigurationArgs
///         {
///             CloudwatchLoggingConfiguration = new Aws.EmrServerless.Inputs.ApplicationMonitoringConfigurationCloudwatchLoggingConfigurationArgs
///             {
///                 Enabled = true,
///                 LogGroupName = "/aws/emr-serverless/example",
///                 LogStreamNamePrefix = "spark-logs",
///                 LogTypes = new[]
///                 {
///                     new Aws.EmrServerless.Inputs.ApplicationMonitoringConfigurationCloudwatchLoggingConfigurationLogTypeArgs
///                     {
///                         Name = "SPARK_DRIVER",
///                         Values = new[]
///                         {
///                             "STDOUT",
///                             "STDERR",
///                         },
///                     },
///                     new Aws.EmrServerless.Inputs.ApplicationMonitoringConfigurationCloudwatchLoggingConfigurationLogTypeArgs
///                     {
///                         Name = "SPARK_EXECUTOR",
///                         Values = new[]
///                         {
///                             "STDOUT",
///                         },
///                     },
///                 },
///             },
///             ManagedPersistenceMonitoringConfiguration = new Aws.EmrServerless.Inputs.ApplicationMonitoringConfigurationManagedPersistenceMonitoringConfigurationArgs
///             {
///                 Enabled = true,
///             },
///             PrometheusMonitoringConfiguration = new Aws.EmrServerless.Inputs.ApplicationMonitoringConfigurationPrometheusMonitoringConfigurationArgs
///             {
///                 RemoteWriteUrl = "https://prometheus-remote-write-endpoint.example.com/api/v1/write",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/emrserverless"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := emrserverless.NewApplication(ctx, "example", &emrserverless.ApplicationArgs{
/// 			Name:         pulumi.String("example"),
/// 			ReleaseLabel: pulumi.String("emr-7.1.0"),
/// 			Type:         pulumi.String("spark"),
/// 			MonitoringConfiguration: &emrserverless.ApplicationMonitoringConfigurationArgs{
/// 				CloudwatchLoggingConfiguration: &emrserverless.ApplicationMonitoringConfigurationCloudwatchLoggingConfigurationArgs{
/// 					Enabled:             pulumi.Bool(true),
/// 					LogGroupName:        pulumi.String("/aws/emr-serverless/example"),
/// 					LogStreamNamePrefix: pulumi.String("spark-logs"),
/// 					LogTypes: emrserverless.ApplicationMonitoringConfigurationCloudwatchLoggingConfigurationLogTypeArray{
/// 						&emrserverless.ApplicationMonitoringConfigurationCloudwatchLoggingConfigurationLogTypeArgs{
/// 							Name: pulumi.String("SPARK_DRIVER"),
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("STDOUT"),
/// 								pulumi.String("STDERR"),
/// 							},
/// 						},
/// 						&emrserverless.ApplicationMonitoringConfigurationCloudwatchLoggingConfigurationLogTypeArgs{
/// 							Name: pulumi.String("SPARK_EXECUTOR"),
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("STDOUT"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				ManagedPersistenceMonitoringConfiguration: &emrserverless.ApplicationMonitoringConfigurationManagedPersistenceMonitoringConfigurationArgs{
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 				PrometheusMonitoringConfiguration: &emrserverless.ApplicationMonitoringConfigurationPrometheusMonitoringConfigurationArgs{
/// 					RemoteWriteUrl: pulumi.String("https://prometheus-remote-write-endpoint.example.com/api/v1/write"),
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
/// resource "aws_emrserverless_application" "example" {
///   name          = "example"
///   release_label = "emr-7.1.0"
///   type          = "spark"
///   monitoring_configuration = {
///     cloudwatch_logging_configuration = {
///       enabled                = true
///       log_group_name         = "/aws/emr-serverless/example"
///       log_stream_name_prefix = "spark-logs"
///       log_types = [{
///         "name"   = "SPARK_DRIVER"
///         "values" = ["STDOUT", "STDERR"]
///         }, {
///         "name"   = "SPARK_EXECUTOR"
///         "values" = ["STDOUT"]
///       }]
///     }
///     managed_persistence_monitoring_configuration = {
///       enabled = true
///     }
///     prometheus_monitoring_configuration = {
///       remote_write_url = "https://prometheus-remote-write-endpoint.example.com/api/v1/write"
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
/// import com.pulumi.aws.emrserverless.Application;
/// import com.pulumi.aws.emrserverless.ApplicationArgs;
/// import com.pulumi.aws.emrserverless.inputs.ApplicationMonitoringConfigurationArgs;
/// import com.pulumi.aws.emrserverless.inputs.ApplicationMonitoringConfigurationCloudwatchLoggingConfigurationArgs;
/// import com.pulumi.aws.emrserverless.inputs.ApplicationMonitoringConfigurationCloudwatchLoggingConfigurationLogTypeArgs;
/// import com.pulumi.aws.emrserverless.inputs.ApplicationMonitoringConfigurationManagedPersistenceMonitoringConfigurationArgs;
/// import com.pulumi.aws.emrserverless.inputs.ApplicationMonitoringConfigurationPrometheusMonitoringConfigurationArgs;
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
///         var example = new Application("example", ApplicationArgs.builder()
///             .name("example")
///             .releaseLabel("emr-7.1.0")
///             .type("spark")
///             .monitoringConfiguration(ApplicationMonitoringConfigurationArgs.builder()
///                 .cloudwatchLoggingConfiguration(ApplicationMonitoringConfigurationCloudwatchLoggingConfigurationArgs.builder()
///                     .enabled(true)
///                     .logGroupName("/aws/emr-serverless/example")
///                     .logStreamNamePrefix("spark-logs")
///                     .logTypes(
///                         ApplicationMonitoringConfigurationCloudwatchLoggingConfigurationLogTypeArgs.builder()
///                             .name("SPARK_DRIVER")
///                             .values(
///                                 "STDOUT",
///                                 "STDERR")
///                             .build(),
///                         ApplicationMonitoringConfigurationCloudwatchLoggingConfigurationLogTypeArgs.builder()
///                             .name("SPARK_EXECUTOR")
///                             .values("STDOUT")
///                             .build())
///                     .build())
///                 .managedPersistenceMonitoringConfiguration(ApplicationMonitoringConfigurationManagedPersistenceMonitoringConfigurationArgs.builder()
///                     .enabled(true)
///                     .build())
///                 .prometheusMonitoringConfiguration(ApplicationMonitoringConfigurationPrometheusMonitoringConfigurationArgs.builder()
///                     .remoteWriteUrl("https://prometheus-remote-write-endpoint.example.com/api/v1/write")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:emrserverless:Application
///     properties:
///       name: example
///       releaseLabel: emr-7.1.0
///       type: spark
///       monitoringConfiguration:
///         cloudwatchLoggingConfiguration:
///           enabled: true
///           logGroupName: /aws/emr-serverless/example
///           logStreamNamePrefix: spark-logs
///           logTypes:
///             - name: SPARK_DRIVER
///               values:
///                 - STDOUT
///                 - STDERR
///             - name: SPARK_EXECUTOR
///               values:
///                 - STDOUT
///         managedPersistenceMonitoringConfiguration:
///           enabled: true
///         prometheusMonitoringConfiguration:
///           remoteWriteUrl: https://prometheus-remote-write-endpoint.example.com/api/v1/write
/// ```
///
///
/// ### Runtime Configuration Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.emrserverless.Application("example", {
///     name: "example",
///     releaseLabel: "emr-6.8.0",
///     type: "spark",
///     runtimeConfigurations: [
///         {
///             classification: "spark-executor-log4j2",
///             properties: {
///                 "rootLogger.level": "error",
///                 "logger.IdentifierForClass.name": "classpathForSettingLogger",
///                 "logger.IdentifierForClass.level": "info",
///             },
///         },
///         {
///             classification: "spark-defaults",
///             properties: {
///                 "spark.executor.memory": "1g",
///                 "spark.executor.cores": "1",
///             },
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.emrserverless.Application("example",
///     name="example",
///     release_label="emr-6.8.0",
///     type="spark",
///     runtime_configurations=[
///         {
///             "classification": "spark-executor-log4j2",
///             "properties": {
///                 "rootLogger.level": "error",
///                 "logger.IdentifierForClass.name": "classpathForSettingLogger",
///                 "logger.IdentifierForClass.level": "info",
///             },
///         },
///         {
///             "classification": "spark-defaults",
///             "properties": {
///                 "spark.executor.memory": "1g",
///                 "spark.executor.cores": "1",
///             },
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
///     var example = new Aws.EmrServerless.Application("example", new()
///     {
///         Name = "example",
///         ReleaseLabel = "emr-6.8.0",
///         Type = "spark",
///         RuntimeConfigurations = new[]
///         {
///             new Aws.EmrServerless.Inputs.ApplicationRuntimeConfigurationArgs
///             {
///                 Classification = "spark-executor-log4j2",
///                 Properties =
///                 {
///                     { "rootLogger.level", "error" },
///                     { "logger.IdentifierForClass.name", "classpathForSettingLogger" },
///                     { "logger.IdentifierForClass.level", "info" },
///                 },
///             },
///             new Aws.EmrServerless.Inputs.ApplicationRuntimeConfigurationArgs
///             {
///                 Classification = "spark-defaults",
///                 Properties =
///                 {
///                     { "spark.executor.memory", "1g" },
///                     { "spark.executor.cores", "1" },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/emrserverless"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := emrserverless.NewApplication(ctx, "example", &emrserverless.ApplicationArgs{
/// 			Name:         pulumi.String("example"),
/// 			ReleaseLabel: pulumi.String("emr-6.8.0"),
/// 			Type:         pulumi.String("spark"),
/// 			RuntimeConfigurations: emrserverless.ApplicationRuntimeConfigurationArray{
/// 				&emrserverless.ApplicationRuntimeConfigurationArgs{
/// 					Classification: pulumi.String("spark-executor-log4j2"),
/// 					Properties: pulumi.StringMap{
/// 						"rootLogger.level":                pulumi.String("error"),
/// 						"logger.IdentifierForClass.name":  pulumi.String("classpathForSettingLogger"),
/// 						"logger.IdentifierForClass.level": pulumi.String("info"),
/// 					},
/// 				},
/// 				&emrserverless.ApplicationRuntimeConfigurationArgs{
/// 					Classification: pulumi.String("spark-defaults"),
/// 					Properties: pulumi.StringMap{
/// 						"spark.executor.memory": pulumi.String("1g"),
/// 						"spark.executor.cores":  pulumi.String("1"),
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
/// resource "aws_emrserverless_application" "example" {
///   name          = "example"
///   release_label = "emr-6.8.0"
///   type          = "spark"
///   runtime_configurations {
///     classification = "spark-executor-log4j2"
///     properties = {
///       "rootLogger.level"                = "error"
///       "logger.IdentifierForClass.name"  = "classpathForSettingLogger"
///       "logger.IdentifierForClass.level" = "info"
///     }
///   }
///   runtime_configurations {
///     classification = "spark-defaults"
///     properties = {
///       "spark.executor.memory" = "1g"
///       "spark.executor.cores"  = "1"
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
/// import com.pulumi.aws.emrserverless.Application;
/// import com.pulumi.aws.emrserverless.ApplicationArgs;
/// import com.pulumi.aws.emrserverless.inputs.ApplicationRuntimeConfigurationArgs;
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
///         var example = new Application("example", ApplicationArgs.builder()
///             .name("example")
///             .releaseLabel("emr-6.8.0")
///             .type("spark")
///             .runtimeConfigurations(
///                 ApplicationRuntimeConfigurationArgs.builder()
///                     .classification("spark-executor-log4j2")
///                     .properties(Map.ofEntries(
///                         Map.entry("rootLogger.level", "error"),
///                         Map.entry("logger.IdentifierForClass.name", "classpathForSettingLogger"),
///                         Map.entry("logger.IdentifierForClass.level", "info")
///                     ))
///                     .build(),
///                 ApplicationRuntimeConfigurationArgs.builder()
///                     .classification("spark-defaults")
///                     .properties(Map.ofEntries(
///                         Map.entry("spark.executor.memory", "1g"),
///                         Map.entry("spark.executor.cores", "1")
///                     ))
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:emrserverless:Application
///     properties:
///       name: example
///       releaseLabel: emr-6.8.0
///       type: spark
///       runtimeConfigurations:
///         - classification: spark-executor-log4j2
///           properties:
///             rootLogger.level: error
///             logger.IdentifierForClass.name: classpathForSettingLogger
///             logger.IdentifierForClass.level: info
///         - classification: spark-defaults
///           properties:
///             spark.executor.memory: 1g
///             spark.executor.cores: '1'
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import EMR Serverless applications using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:emrserverless/application:Application example id
/// ```
class Application extends pulumi.CustomResource {
  /// The CPU architecture of an application. Valid values are `ARM64` or `X86_64`. Default value is `X86_64`.
  late final pulumi.Output<String?> architecture;
  /// ARN of the cluster.
  late final pulumi.Output<String> arn;
  /// The configuration for an application to automatically start on job submission.
  late final pulumi.Output<ApplicationAutoStartConfiguration> autoStartConfiguration;
  /// The configuration for an application to automatically stop after a certain amount of time being idle.
  late final pulumi.Output<ApplicationAutoStopConfiguration> autoStopConfiguration;
  /// The image configuration applied to all worker types.
  late final pulumi.Output<ApplicationImageConfiguration> imageConfiguration;
  /// The capacity to initialize when the application is created.
  late final pulumi.Output<List<Map<String, dynamic>>?> initialCapacities;
  /// Enables the interactive use cases to use when running an application.
  late final pulumi.Output<ApplicationInteractiveConfiguration> interactiveConfiguration;
  late final pulumi.Output<ApplicationJobLevelCostAllocationConfiguration> jobLevelCostAllocationConfiguration;
  /// The maximum capacity to allocate when the application is created. This is cumulative across all workers at any given point in time, not just when an application is created. No new resources will be created once any one of the defined limits is hit.
  late final pulumi.Output<ApplicationMaximumCapacity> maximumCapacity;
  /// The configuration setting for monitoring.
  late final pulumi.Output<ApplicationMonitoringConfiguration?> monitoringConfiguration;
  /// The name of the application.
  late final pulumi.Output<String> name;
  /// The network configuration for customer VPC connectivity.
  late final pulumi.Output<ApplicationNetworkConfiguration?> networkConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The EMR release version associated with the application.
  late final pulumi.Output<String> releaseLabel;
  /// A configuration specification to be used when provisioning an application. A configuration consists of a classification, properties, and optional nested configurations. A classification refers to an application-specific configuration file. Properties are the settings you want to change in that file.
  late final pulumi.Output<List<Map<String, dynamic>>?> runtimeConfigurations;
  /// Scheduler configuration for batch and streaming jobs running on this application. Supported with release labels `emr-7.0.0` and above. See schedulerConfiguration Arguments below.
  late final pulumi.Output<ApplicationSchedulerConfiguration?> schedulerConfiguration;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The type of application you want to start, such as `spark` or `hive`.
  late final pulumi.Output<String> type;

  /// Creates a new [Application].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Application]. {@macro pulumi_emrserverless_application_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Application(
    String name, {
    ApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:emrserverless/application:Application',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    architecture = registerOutput<String?>('architecture');
    arn = registerOutput<String>('arn');
    autoStartConfiguration = registerOutput<ApplicationAutoStartConfiguration>('autoStartConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationAutoStartConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    autoStopConfiguration = registerOutput<ApplicationAutoStopConfiguration>('autoStopConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationAutoStopConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    imageConfiguration = registerOutput<ApplicationImageConfiguration>('imageConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationImageConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    initialCapacities = registerOutput<List<Map<String, dynamic>>?>('initialCapacities');
    interactiveConfiguration = registerOutput<ApplicationInteractiveConfiguration>('interactiveConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationInteractiveConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    jobLevelCostAllocationConfiguration = registerOutput<ApplicationJobLevelCostAllocationConfiguration>('jobLevelCostAllocationConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationJobLevelCostAllocationConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    maximumCapacity = registerOutput<ApplicationMaximumCapacity>('maximumCapacity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationMaximumCapacity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    monitoringConfiguration = registerOutput<ApplicationMonitoringConfiguration?>('monitoringConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationMonitoringConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    networkConfiguration = registerOutput<ApplicationNetworkConfiguration?>('networkConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationNetworkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    releaseLabel = registerOutput<String>('releaseLabel');
    runtimeConfigurations = registerOutput<List<Map<String, dynamic>>?>('runtimeConfigurations');
    schedulerConfiguration = registerOutput<ApplicationSchedulerConfiguration?>('schedulerConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationSchedulerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [Application] resource's state with the given [name] and [id].
  static Application get(
    String name,
    pulumi.Input<String> id, {
    ApplicationState? state,
  }) {
    return Application._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Application._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:emrserverless/application:Application',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    architecture = registerOutput<String?>('architecture');
    arn = registerOutput<String>('arn');
    autoStartConfiguration = registerOutput<ApplicationAutoStartConfiguration>('autoStartConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationAutoStartConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    autoStopConfiguration = registerOutput<ApplicationAutoStopConfiguration>('autoStopConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationAutoStopConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    imageConfiguration = registerOutput<ApplicationImageConfiguration>('imageConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationImageConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    initialCapacities = registerOutput<List<Map<String, dynamic>>?>('initialCapacities');
    interactiveConfiguration = registerOutput<ApplicationInteractiveConfiguration>('interactiveConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationInteractiveConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    jobLevelCostAllocationConfiguration = registerOutput<ApplicationJobLevelCostAllocationConfiguration>('jobLevelCostAllocationConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationJobLevelCostAllocationConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    maximumCapacity = registerOutput<ApplicationMaximumCapacity>('maximumCapacity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationMaximumCapacity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    monitoringConfiguration = registerOutput<ApplicationMonitoringConfiguration?>('monitoringConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationMonitoringConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    networkConfiguration = registerOutput<ApplicationNetworkConfiguration?>('networkConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationNetworkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    releaseLabel = registerOutput<String>('releaseLabel');
    runtimeConfigurations = registerOutput<List<Map<String, dynamic>>?>('runtimeConfigurations');
    schedulerConfiguration = registerOutput<ApplicationSchedulerConfiguration?>('schedulerConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationSchedulerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    type = registerOutput<String>('type');
  }
}
