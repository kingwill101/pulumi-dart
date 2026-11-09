import 'package:pulumi/pulumi.dart' as pulumi;
import 'inference_component_args.dart';
import 'inference_component_deployment_config.dart';
import 'inference_component_runtime_config.dart';
import 'inference_component_specification.dart';
import 'inference_component_state.dart';
import 'inference_component_timeouts.dart';

/// Provides a SageMaker AI Inference Component resource. An inference component is a SageMaker AI hosting object that you can use to deploy a model to an endpoint. You can optimize resource utilization by tailoring how the required CPU cores, accelerators, and memory are allocated. You can deploy multiple inference components to an endpoint, where each inference component contains one model and the resource utilization needs for that individual model.
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
/// const example = new aws.sagemaker.InferenceComponent("example", {
///     specification: {
///         computeResourceRequirements: {
///             minMemoryRequiredInMb: 1024,
///         },
///         modelName: exampleAwsSagemakerModel.name,
///     },
///     runtimeConfig: {
///         copyCount: 1,
///     },
///     name: "my-inference-component",
///     endpointName: exampleAwsSagemakerEndpoint.name,
///     variantName: "variant-1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.InferenceComponent("example",
///     specification={
///         "compute_resource_requirements": {
///             "min_memory_required_in_mb": 1024,
///         },
///         "model_name": example_aws_sagemaker_model["name"],
///     },
///     runtime_config={
///         "copy_count": 1,
///     },
///     name="my-inference-component",
///     endpoint_name=example_aws_sagemaker_endpoint["name"],
///     variant_name="variant-1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Sagemaker.InferenceComponent("example", new()
///     {
///         Specification = new Aws.Sagemaker.Inputs.InferenceComponentSpecificationArgs
///         {
///             ComputeResourceRequirements = new Aws.Sagemaker.Inputs.InferenceComponentSpecificationComputeResourceRequirementsArgs
///             {
///                 MinMemoryRequiredInMb = 1024,
///             },
///             ModelName = exampleAwsSagemakerModel.Name,
///         },
///         RuntimeConfig = new Aws.Sagemaker.Inputs.InferenceComponentRuntimeConfigArgs
///         {
///             CopyCount = 1,
///         },
///         Name = "my-inference-component",
///         EndpointName = exampleAwsSagemakerEndpoint.Name,
///         VariantName = "variant-1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sagemaker.NewInferenceComponent(ctx, "example", &sagemaker.InferenceComponentArgs{
/// 			Specification: &sagemaker.InferenceComponentSpecificationArgs{
/// 				ComputeResourceRequirements: &sagemaker.InferenceComponentSpecificationComputeResourceRequirementsArgs{
/// 					MinMemoryRequiredInMb: pulumi.Int(1024),
/// 				},
/// 				ModelName: pulumi.Any(exampleAwsSagemakerModel.Name),
/// 			},
/// 			RuntimeConfig: &sagemaker.InferenceComponentRuntimeConfigArgs{
/// 				CopyCount: pulumi.Int(1),
/// 			},
/// 			Name:         pulumi.String("my-inference-component"),
/// 			EndpointName: pulumi.Any(exampleAwsSagemakerEndpoint.Name),
/// 			VariantName:  pulumi.String("variant-1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_sagemaker_inference_component" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   specification {
///     compute_resource_requirements {
///       min_memory_required_in_mb = 1024
///     }
///     model_name = exampleAwsSagemakerModel.name
///   }
///   runtime_config {
///     copy_count = 1
///   }
///   name          = "my-inference-component"
///   endpoint_name = exampleAwsSagemakerEndpoint.name
///   variant_name  = "variant-1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sagemaker.InferenceComponent;
/// import com.pulumi.aws.sagemaker.InferenceComponentArgs;
/// import com.pulumi.aws.sagemaker.inputs.InferenceComponentSpecificationArgs;
/// import com.pulumi.aws.sagemaker.inputs.InferenceComponentSpecificationComputeResourceRequirementsArgs;
/// import com.pulumi.aws.sagemaker.inputs.InferenceComponentRuntimeConfigArgs;
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
///         var example = new InferenceComponent("example", InferenceComponentArgs.builder()
///             .specification(InferenceComponentSpecificationArgs.builder()
///                 .computeResourceRequirements(InferenceComponentSpecificationComputeResourceRequirementsArgs.builder()
///                     .minMemoryRequiredInMb(1024)
///                     .build())
///                 .modelName(exampleAwsSagemakerModel.get("name"))
///                 .build())
///             .runtimeConfig(InferenceComponentRuntimeConfigArgs.builder()
///                 .copyCount(1)
///                 .build())
///             .name("my-inference-component")
///             .endpointName(exampleAwsSagemakerEndpoint.get("name"))
///             .variantName("variant-1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sagemaker:InferenceComponent
///     properties:
///       specification:
///         computeResourceRequirements:
///           minMemoryRequiredInMb: 1024
///         modelName: ${exampleAwsSagemakerModel.name}
///       runtimeConfig:
///         copyCount: 1
///       name: my-inference-component
///       endpointName: ${exampleAwsSagemakerEndpoint.name}
///       variantName: variant-1
/// ```
///
///
/// ### With Container Specification
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sagemaker.InferenceComponent("example", {
///     specification: {
///         container: {
///             image: "123456789012.dkr.ecr.us-east-1.amazonaws.com/my-model:latest",
///             artifactUrl: "s3://my-bucket/model.tar.gz",
///             environment: {
///                 MODEL_NAME: "my-model",
///             },
///         },
///         computeResourceRequirements: {
///             minMemoryRequiredInMb: 2048,
///             maxMemoryRequiredInMb: 4096,
///             numberOfCpuCoresRequired: 2,
///             numberOfAcceleratorDevicesRequired: 1,
///         },
///         startupParameters: {
///             containerStartupHealthCheckTimeoutInSeconds: 300,
///             modelDataDownloadTimeoutInSeconds: 300,
///         },
///     },
///     runtimeConfig: {
///         copyCount: 2,
///     },
///     name: "my-inference-component",
///     endpointName: exampleAwsSagemakerEndpoint.name,
///     variantName: "variant-1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.InferenceComponent("example",
///     specification={
///         "container": {
///             "image": "123456789012.dkr.ecr.us-east-1.amazonaws.com/my-model:latest",
///             "artifact_url": "s3://my-bucket/model.tar.gz",
///             "environment": {
///                 "MODEL_NAME": "my-model",
///             },
///         },
///         "compute_resource_requirements": {
///             "min_memory_required_in_mb": 2048,
///             "max_memory_required_in_mb": 4096,
///             "number_of_cpu_cores_required": float(2),
///             "number_of_accelerator_devices_required": float(1),
///         },
///         "startup_parameters": {
///             "container_startup_health_check_timeout_in_seconds": 300,
///             "model_data_download_timeout_in_seconds": 300,
///         },
///     },
///     runtime_config={
///         "copy_count": 2,
///     },
///     name="my-inference-component",
///     endpoint_name=example_aws_sagemaker_endpoint["name"],
///     variant_name="variant-1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Sagemaker.InferenceComponent("example", new()
///     {
///         Specification = new Aws.Sagemaker.Inputs.InferenceComponentSpecificationArgs
///         {
///             Container = new Aws.Sagemaker.Inputs.InferenceComponentSpecificationContainerArgs
///             {
///                 Image = "123456789012.dkr.ecr.us-east-1.amazonaws.com/my-model:latest",
///                 ArtifactUrl = "s3://my-bucket/model.tar.gz",
///                 Environment =
///                 {
///                     { "MODEL_NAME", "my-model" },
///                 },
///             },
///             ComputeResourceRequirements = new Aws.Sagemaker.Inputs.InferenceComponentSpecificationComputeResourceRequirementsArgs
///             {
///                 MinMemoryRequiredInMb = 2048,
///                 MaxMemoryRequiredInMb = 4096,
///                 NumberOfCpuCoresRequired = 2.0,
///                 NumberOfAcceleratorDevicesRequired = 1.0,
///             },
///             StartupParameters = new Aws.Sagemaker.Inputs.InferenceComponentSpecificationStartupParametersArgs
///             {
///                 ContainerStartupHealthCheckTimeoutInSeconds = 300,
///                 ModelDataDownloadTimeoutInSeconds = 300,
///             },
///         },
///         RuntimeConfig = new Aws.Sagemaker.Inputs.InferenceComponentRuntimeConfigArgs
///         {
///             CopyCount = 2,
///         },
///         Name = "my-inference-component",
///         EndpointName = exampleAwsSagemakerEndpoint.Name,
///         VariantName = "variant-1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sagemaker.NewInferenceComponent(ctx, "example", &sagemaker.InferenceComponentArgs{
/// 			Specification: &sagemaker.InferenceComponentSpecificationArgs{
/// 				Container: &sagemaker.InferenceComponentSpecificationContainerArgs{
/// 					Image:       pulumi.String("123456789012.dkr.ecr.us-east-1.amazonaws.com/my-model:latest"),
/// 					ArtifactUrl: pulumi.String("s3://my-bucket/model.tar.gz"),
/// 					Environment: pulumi.StringMap{
/// 						"MODEL_NAME": pulumi.String("my-model"),
/// 					},
/// 				},
/// 				ComputeResourceRequirements: &sagemaker.InferenceComponentSpecificationComputeResourceRequirementsArgs{
/// 					MinMemoryRequiredInMb:              pulumi.Int(2048),
/// 					MaxMemoryRequiredInMb:              pulumi.Int(4096),
/// 					NumberOfCpuCoresRequired:           pulumi.Float64(2),
/// 					NumberOfAcceleratorDevicesRequired: pulumi.Float64(1),
/// 				},
/// 				StartupParameters: &sagemaker.InferenceComponentSpecificationStartupParametersArgs{
/// 					ContainerStartupHealthCheckTimeoutInSeconds: pulumi.Int(300),
/// 					ModelDataDownloadTimeoutInSeconds:           pulumi.Int(300),
/// 				},
/// 			},
/// 			RuntimeConfig: &sagemaker.InferenceComponentRuntimeConfigArgs{
/// 				CopyCount: pulumi.Int(2),
/// 			},
/// 			Name:         pulumi.String("my-inference-component"),
/// 			EndpointName: pulumi.Any(exampleAwsSagemakerEndpoint.Name),
/// 			VariantName:  pulumi.String("variant-1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_sagemaker_inference_component" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   specification {
///     container {
///       image        = "123456789012.dkr.ecr.us-east-1.amazonaws.com/my-model:latest"
///       artifact_url = "s3://my-bucket/model.tar.gz"
///       environment = {
///         "MODEL_NAME" = "my-model"
///       }
///     }
///     compute_resource_requirements {
///       min_memory_required_in_mb              = 2048
///       max_memory_required_in_mb              = 4096
///       number_of_cpu_cores_required           = 2
///       number_of_accelerator_devices_required = 1
///     }
///     startup_parameters {
///       container_startup_health_check_timeout_in_seconds = 300
///       model_data_download_timeout_in_seconds            = 300
///     }
///   }
///   runtime_config {
///     copy_count = 2
///   }
///   name          = "my-inference-component"
///   endpoint_name = exampleAwsSagemakerEndpoint.name
///   variant_name  = "variant-1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sagemaker.InferenceComponent;
/// import com.pulumi.aws.sagemaker.InferenceComponentArgs;
/// import com.pulumi.aws.sagemaker.inputs.InferenceComponentSpecificationArgs;
/// import com.pulumi.aws.sagemaker.inputs.InferenceComponentSpecificationContainerArgs;
/// import com.pulumi.aws.sagemaker.inputs.InferenceComponentSpecificationComputeResourceRequirementsArgs;
/// import com.pulumi.aws.sagemaker.inputs.InferenceComponentSpecificationStartupParametersArgs;
/// import com.pulumi.aws.sagemaker.inputs.InferenceComponentRuntimeConfigArgs;
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
///         var example = new InferenceComponent("example", InferenceComponentArgs.builder()
///             .specification(InferenceComponentSpecificationArgs.builder()
///                 .container(InferenceComponentSpecificationContainerArgs.builder()
///                     .image("123456789012.dkr.ecr.us-east-1.amazonaws.com/my-model:latest")
///                     .artifactUrl("s3://my-bucket/model.tar.gz")
///                     .environment(Map.of("MODEL_NAME", "my-model"))
///                     .build())
///                 .computeResourceRequirements(InferenceComponentSpecificationComputeResourceRequirementsArgs.builder()
///                     .minMemoryRequiredInMb(2048)
///                     .maxMemoryRequiredInMb(4096)
///                     .numberOfCpuCoresRequired(2.0)
///                     .numberOfAcceleratorDevicesRequired(1.0)
///                     .build())
///                 .startupParameters(InferenceComponentSpecificationStartupParametersArgs.builder()
///                     .containerStartupHealthCheckTimeoutInSeconds(300)
///                     .modelDataDownloadTimeoutInSeconds(300)
///                     .build())
///                 .build())
///             .runtimeConfig(InferenceComponentRuntimeConfigArgs.builder()
///                 .copyCount(2)
///                 .build())
///             .name("my-inference-component")
///             .endpointName(exampleAwsSagemakerEndpoint.get("name"))
///             .variantName("variant-1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sagemaker:InferenceComponent
///     properties:
///       specification:
///         container:
///           image: 123456789012.dkr.ecr.us-east-1.amazonaws.com/my-model:latest
///           artifactUrl: s3://my-bucket/model.tar.gz
///           environment:
///             MODEL_NAME: my-model
///         computeResourceRequirements:
///           minMemoryRequiredInMb: 2048
///           maxMemoryRequiredInMb: 4096
///           numberOfCpuCoresRequired: 2
///           numberOfAcceleratorDevicesRequired: 1
///         startupParameters:
///           containerStartupHealthCheckTimeoutInSeconds: 300
///           modelDataDownloadTimeoutInSeconds: 300
///       runtimeConfig:
///         copyCount: 2
///       name: my-inference-component
///       endpointName: ${exampleAwsSagemakerEndpoint.name}
///       variantName: variant-1
/// ```
///
///
/// ### With Deployment Config
///
/// `deploymentConfig` controls how *updates* to an existing inference component are rolled out; it has no effect on the initial create. Add it (or change it) on a subsequent apply to govern the rollout of a `specification` or `runtimeConfig` change.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sagemaker.InferenceComponent("example", {
///     specification: {
///         computeResourceRequirements: {
///             minMemoryRequiredInMb: 1024,
///         },
///         modelName: exampleAwsSagemakerModel.name,
///     },
///     runtimeConfig: {
///         copyCount: 4,
///     },
///     deploymentConfig: {
///         rollingUpdatePolicy: {
///             maximumBatchSize: {
///                 type: "COPY_COUNT",
///                 value: 1,
///             },
///             waitIntervalInSeconds: 60,
///         },
///         autoRollbackConfiguration: {
///             alarms: [{
///                 alarmName: exampleAwsCloudwatchMetricAlarm.alarmName,
///             }],
///         },
///     },
///     name: "my-inference-component",
///     endpointName: exampleAwsSagemakerEndpoint.name,
///     variantName: "variant-1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.InferenceComponent("example",
///     specification={
///         "compute_resource_requirements": {
///             "min_memory_required_in_mb": 1024,
///         },
///         "model_name": example_aws_sagemaker_model["name"],
///     },
///     runtime_config={
///         "copy_count": 4,
///     },
///     deployment_config={
///         "rolling_update_policy": {
///             "maximum_batch_size": {
///                 "type": "COPY_COUNT",
///                 "value": 1,
///             },
///             "wait_interval_in_seconds": 60,
///         },
///         "auto_rollback_configuration": {
///             "alarms": [{
///                 "alarm_name": example_aws_cloudwatch_metric_alarm["alarmName"],
///             }],
///         },
///     },
///     name="my-inference-component",
///     endpoint_name=example_aws_sagemaker_endpoint["name"],
///     variant_name="variant-1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Sagemaker.InferenceComponent("example", new()
///     {
///         Specification = new Aws.Sagemaker.Inputs.InferenceComponentSpecificationArgs
///         {
///             ComputeResourceRequirements = new Aws.Sagemaker.Inputs.InferenceComponentSpecificationComputeResourceRequirementsArgs
///             {
///                 MinMemoryRequiredInMb = 1024,
///             },
///             ModelName = exampleAwsSagemakerModel.Name,
///         },
///         RuntimeConfig = new Aws.Sagemaker.Inputs.InferenceComponentRuntimeConfigArgs
///         {
///             CopyCount = 4,
///         },
///         DeploymentConfig = new Aws.Sagemaker.Inputs.InferenceComponentDeploymentConfigArgs
///         {
///             RollingUpdatePolicy = new Aws.Sagemaker.Inputs.InferenceComponentDeploymentConfigRollingUpdatePolicyArgs
///             {
///                 MaximumBatchSize = new Aws.Sagemaker.Inputs.InferenceComponentDeploymentConfigRollingUpdatePolicyMaximumBatchSizeArgs
///                 {
///                     Type = "COPY_COUNT",
///                     Value = 1,
///                 },
///                 WaitIntervalInSeconds = 60,
///             },
///             AutoRollbackConfiguration = new Aws.Sagemaker.Inputs.InferenceComponentDeploymentConfigAutoRollbackConfigurationArgs
///             {
///                 Alarms = new[]
///                 {
///                     new Aws.Sagemaker.Inputs.InferenceComponentDeploymentConfigAutoRollbackConfigurationAlarmArgs
///                     {
///                         AlarmName = exampleAwsCloudwatchMetricAlarm.AlarmName,
///                     },
///                 },
///             },
///         },
///         Name = "my-inference-component",
///         EndpointName = exampleAwsSagemakerEndpoint.Name,
///         VariantName = "variant-1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sagemaker.NewInferenceComponent(ctx, "example", &sagemaker.InferenceComponentArgs{
/// 			Specification: &sagemaker.InferenceComponentSpecificationArgs{
/// 				ComputeResourceRequirements: &sagemaker.InferenceComponentSpecificationComputeResourceRequirementsArgs{
/// 					MinMemoryRequiredInMb: pulumi.Int(1024),
/// 				},
/// 				ModelName: pulumi.Any(exampleAwsSagemakerModel.Name),
/// 			},
/// 			RuntimeConfig: &sagemaker.InferenceComponentRuntimeConfigArgs{
/// 				CopyCount: pulumi.Int(4),
/// 			},
/// 			DeploymentConfig: &sagemaker.InferenceComponentDeploymentConfigArgs{
/// 				RollingUpdatePolicy: &sagemaker.InferenceComponentDeploymentConfigRollingUpdatePolicyArgs{
/// 					MaximumBatchSize: &sagemaker.InferenceComponentDeploymentConfigRollingUpdatePolicyMaximumBatchSizeArgs{
/// 						Type:  pulumi.String("COPY_COUNT"),
/// 						Value: pulumi.Int(1),
/// 					},
/// 					WaitIntervalInSeconds: pulumi.Int(60),
/// 				},
/// 				AutoRollbackConfiguration: &sagemaker.InferenceComponentDeploymentConfigAutoRollbackConfigurationArgs{
/// 					Alarms: sagemaker.InferenceComponentDeploymentConfigAutoRollbackConfigurationAlarmArray{
/// 						&sagemaker.InferenceComponentDeploymentConfigAutoRollbackConfigurationAlarmArgs{
/// 							AlarmName: pulumi.Any(exampleAwsCloudwatchMetricAlarm.AlarmName),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Name:         pulumi.String("my-inference-component"),
/// 			EndpointName: pulumi.Any(exampleAwsSagemakerEndpoint.Name),
/// 			VariantName:  pulumi.String("variant-1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_sagemaker_inference_component" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   specification {
///     compute_resource_requirements {
///       min_memory_required_in_mb = 1024
///     }
///     model_name = exampleAwsSagemakerModel.name
///   }
///   runtime_config {
///     copy_count = 4
///   }
///   deployment_config {
///     rolling_update_policy {
///       maximum_batch_size {
///         type  = "COPY_COUNT"
///         value = 1
///       }
///       wait_interval_in_seconds = 60
///     }
///     auto_rollback_configuration {
///       alarms {
///         alarm_name = exampleAwsCloudwatchMetricAlarm.alarmName
///       }
///     }
///   }
///   name          = "my-inference-component"
///   endpoint_name = exampleAwsSagemakerEndpoint.name
///   variant_name  = "variant-1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sagemaker.InferenceComponent;
/// import com.pulumi.aws.sagemaker.InferenceComponentArgs;
/// import com.pulumi.aws.sagemaker.inputs.InferenceComponentSpecificationArgs;
/// import com.pulumi.aws.sagemaker.inputs.InferenceComponentSpecificationComputeResourceRequirementsArgs;
/// import com.pulumi.aws.sagemaker.inputs.InferenceComponentRuntimeConfigArgs;
/// import com.pulumi.aws.sagemaker.inputs.InferenceComponentDeploymentConfigArgs;
/// import com.pulumi.aws.sagemaker.inputs.InferenceComponentDeploymentConfigRollingUpdatePolicyArgs;
/// import com.pulumi.aws.sagemaker.inputs.InferenceComponentDeploymentConfigRollingUpdatePolicyMaximumBatchSizeArgs;
/// import com.pulumi.aws.sagemaker.inputs.InferenceComponentDeploymentConfigAutoRollbackConfigurationArgs;
/// import com.pulumi.aws.sagemaker.inputs.InferenceComponentDeploymentConfigAutoRollbackConfigurationAlarmArgs;
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
///         var example = new InferenceComponent("example", InferenceComponentArgs.builder()
///             .specification(InferenceComponentSpecificationArgs.builder()
///                 .computeResourceRequirements(InferenceComponentSpecificationComputeResourceRequirementsArgs.builder()
///                     .minMemoryRequiredInMb(1024)
///                     .build())
///                 .modelName(exampleAwsSagemakerModel.get("name"))
///                 .build())
///             .runtimeConfig(InferenceComponentRuntimeConfigArgs.builder()
///                 .copyCount(4)
///                 .build())
///             .deploymentConfig(InferenceComponentDeploymentConfigArgs.builder()
///                 .rollingUpdatePolicy(InferenceComponentDeploymentConfigRollingUpdatePolicyArgs.builder()
///                     .maximumBatchSize(InferenceComponentDeploymentConfigRollingUpdatePolicyMaximumBatchSizeArgs.builder()
///                         .type("COPY_COUNT")
///                         .value(1)
///                         .build())
///                     .waitIntervalInSeconds(60)
///                     .build())
///                 .autoRollbackConfiguration(InferenceComponentDeploymentConfigAutoRollbackConfigurationArgs.builder()
///                     .alarms(InferenceComponentDeploymentConfigAutoRollbackConfigurationAlarmArgs.builder()
///                         .alarmName(exampleAwsCloudwatchMetricAlarm.get("alarmName"))
///                         .build())
///                     .build())
///                 .build())
///             .name("my-inference-component")
///             .endpointName(exampleAwsSagemakerEndpoint.get("name"))
///             .variantName("variant-1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sagemaker:InferenceComponent
///     properties:
///       specification:
///         computeResourceRequirements:
///           minMemoryRequiredInMb: 1024
///         modelName: ${exampleAwsSagemakerModel.name}
///       runtimeConfig:
///         copyCount: 4
///       deploymentConfig:
///         rollingUpdatePolicy:
///           maximumBatchSize:
///             type: COPY_COUNT
///             value: 1
///           waitIntervalInSeconds: 60
///         autoRollbackConfiguration:
///           alarms:
///             - alarmName: ${exampleAwsCloudwatchMetricAlarm.alarmName}
///       name: my-inference-component
///       endpointName: ${exampleAwsSagemakerEndpoint.name}
///       variantName: variant-1
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `name` (String) Name of the inference component.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import SageMaker AI Inference Components using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/inferenceComponent:InferenceComponent example my-inference-component
/// ```
class InferenceComponent extends pulumi.CustomResource {
  /// ARN of the inference component.
  late final pulumi.Output<String> arn;
  /// Time when the inference component was created.
  late final pulumi.Output<String> creationTime;
  /// Deployment configuration for the inference component, which controls the rollout strategy and rollback behavior. This directive applies only when the inference component is **updated** — the `CreateInferenceComponent` API does not accept it, so it has no effect on initial creation. It is not returned by the API and is therefore not refreshed into state or verified on import. See `deploymentConfig` Block.
  late final pulumi.Output<InferenceComponentDeploymentConfig?> deploymentConfig;
  /// ARN of the endpoint that hosts the inference component.
  late final pulumi.Output<String> endpointArn;
  /// Name of an existing endpoint where you host the inference component.
  late final pulumi.Output<String> endpointName;
  /// If the inference component status is `Failed`, the reason for the failure.
  late final pulumi.Output<String> failureReason;
  /// Time when the inference component was last updated.
  late final pulumi.Output<String> lastModifiedTime;
  /// Unique name to assign to the inference component.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Runtime settings for a model that is deployed with an inference component. See `runtimeConfig` Block.
  late final pulumi.Output<InferenceComponentRuntimeConfig?> runtimeConfig;
  /// Details about the resources to deploy with this inference component. Exactly one of `specification` or `specifications` must be configured. See `specification` and `specifications` Block.
  late final pulumi.Output<InferenceComponentSpecification?> specification;
  /// List of specification objects for the inference component, one per instance type. At least two blocks are required; configure `specification` instead to deploy to a single instance type. Exactly one of `specification` or `specifications` must be configured. See `specification` and `specifications` Block.
  late final pulumi.Output<List<InferenceComponentSpecification>?> specifications;
  /// Status of the inference component (e.g., `InService`, `Creating`, `Updating`, `Failed`, `Deleting`).
  late final pulumi.Output<String> status;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<InferenceComponentTimeouts?> timeouts;
  /// Name of an existing production variant where you host the inference component. Required for a standard inference component; must be omitted for an adapter inference component (one that sets `baseInferenceComponentName`).
  late final pulumi.Output<String> variantName;

  /// Creates a new [InferenceComponent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InferenceComponent]. {@macro pulumi_sagemaker_inference_component_inference_component_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InferenceComponent(
    String name, {
    InferenceComponentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/inferenceComponent:InferenceComponent',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.54.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    creationTime = registerOutput<String>('creationTime');
    deploymentConfig = registerOutput<InferenceComponentDeploymentConfig?>('deploymentConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InferenceComponentDeploymentConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    endpointArn = registerOutput<String>('endpointArn');
    endpointName = registerOutput<String>('endpointName');
    failureReason = registerOutput<String>('failureReason');
    lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    runtimeConfig = registerOutput<InferenceComponentRuntimeConfig?>('runtimeConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InferenceComponentRuntimeConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    specification = registerOutput<InferenceComponentSpecification?>('specification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InferenceComponentSpecification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    specifications = registerOutput<List<InferenceComponentSpecification>?>('specifications', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InferenceComponentSpecification>(guardedValue, (value) => InferenceComponentSpecification.fromMap((value as Map).cast<String, dynamic>())); });
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<InferenceComponentTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InferenceComponentTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    variantName = registerOutput<String>('variantName');
  }

  /// Gets an existing [InferenceComponent] resource's state with the given [name] and [id].
  static InferenceComponent get(
    String name,
    pulumi.Input<String> id, {
    InferenceComponentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return InferenceComponent._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  InferenceComponent._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/inferenceComponent:InferenceComponent',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    creationTime = registerOutput<String>('creationTime');
    deploymentConfig = registerOutput<InferenceComponentDeploymentConfig?>('deploymentConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InferenceComponentDeploymentConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    endpointArn = registerOutput<String>('endpointArn');
    endpointName = registerOutput<String>('endpointName');
    failureReason = registerOutput<String>('failureReason');
    lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    runtimeConfig = registerOutput<InferenceComponentRuntimeConfig?>('runtimeConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InferenceComponentRuntimeConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    specification = registerOutput<InferenceComponentSpecification?>('specification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InferenceComponentSpecification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    specifications = registerOutput<List<InferenceComponentSpecification>?>('specifications', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InferenceComponentSpecification>(guardedValue, (value) => InferenceComponentSpecification.fromMap((value as Map).cast<String, dynamic>())); });
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<InferenceComponentTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InferenceComponentTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    variantName = registerOutput<String>('variantName');
  }

  /// Creates a typed reference to an existing [InferenceComponent] resource.
  InferenceComponent.reference(String urn)
    : super(
        'aws:sagemaker/inferenceComponent:InferenceComponent',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    creationTime = registerOutput<String>('creationTime');
    deploymentConfig = registerOutput<InferenceComponentDeploymentConfig?>('deploymentConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InferenceComponentDeploymentConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    endpointArn = registerOutput<String>('endpointArn');
    endpointName = registerOutput<String>('endpointName');
    failureReason = registerOutput<String>('failureReason');
    lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    runtimeConfig = registerOutput<InferenceComponentRuntimeConfig?>('runtimeConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InferenceComponentRuntimeConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    specification = registerOutput<InferenceComponentSpecification?>('specification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InferenceComponentSpecification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    specifications = registerOutput<List<InferenceComponentSpecification>?>('specifications', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InferenceComponentSpecification>(guardedValue, (value) => InferenceComponentSpecification.fromMap((value as Map).cast<String, dynamic>())); });
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<InferenceComponentTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InferenceComponentTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    variantName = registerOutput<String>('variantName');
  }
}
