import 'package:pulumi/pulumi.dart' as pulumi;
import 'training_job_algorithm_specification.dart';
import 'training_job_args.dart';
import 'training_job_checkpoint_config.dart';
import 'training_job_debug_hook_config.dart';
import 'training_job_experiment_config.dart';
import 'training_job_infra_check_config.dart';
import 'training_job_mlflow_config.dart';
import 'training_job_model_package_config.dart';
import 'training_job_output_data_config.dart';
import 'training_job_profiler_config.dart';
import 'training_job_remote_debug_config.dart';
import 'training_job_resource_config.dart';
import 'training_job_retry_strategy.dart';
import 'training_job_serverless_job_config.dart';
import 'training_job_session_chaining_config.dart';
import 'training_job_state.dart';
import 'training_job_stopping_condition.dart';
import 'training_job_tensor_board_output_config.dart';
import 'training_job_timeouts.dart';
import 'training_job_vpc_config.dart';

/// Manages an AWS SageMaker AI Training Job.
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
/// const example = new aws.sagemaker.TrainingJob("example", {
///     trainingJobName: "example",
///     roleArn: exampleAwsIamRole.arn,
///     algorithmSpecification: {
///         trainingInputMode: "File",
///         trainingImage: exampleAwsSagemakerPrebuiltEcrImage.registryPath,
///     },
///     outputDataConfig: {
///         s3OutputPath: `s3://${exampleAwsS3Bucket.bucket}/output/`,
///     },
///     resourceConfig: {
///         instanceType: "ml.m5.large",
///         instanceCount: 1,
///         volumeSizeInGb: 30,
///     },
///     stoppingCondition: {
///         maxRuntimeInSeconds: 3600,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.TrainingJob("example",
///     training_job_name="example",
///     role_arn=example_aws_iam_role["arn"],
///     algorithm_specification={
///         "training_input_mode": "File",
///         "training_image": example_aws_sagemaker_prebuilt_ecr_image["registryPath"],
///     },
///     output_data_config={
///         "s3_output_path": f"s3://{example_aws_s3_bucket['bucket']}/output/",
///     },
///     resource_config={
///         "instance_type": "ml.m5.large",
///         "instance_count": 1,
///         "volume_size_in_gb": 30,
///     },
///     stopping_condition={
///         "max_runtime_in_seconds": 3600,
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
///     var example = new Aws.Sagemaker.TrainingJob("example", new()
///     {
///         TrainingJobName = "example",
///         RoleArn = exampleAwsIamRole.Arn,
///         AlgorithmSpecification = new Aws.Sagemaker.Inputs.TrainingJobAlgorithmSpecificationArgs
///         {
///             TrainingInputMode = "File",
///             TrainingImage = exampleAwsSagemakerPrebuiltEcrImage.RegistryPath,
///         },
///         OutputDataConfig = new Aws.Sagemaker.Inputs.TrainingJobOutputDataConfigArgs
///         {
///             S3OutputPath = $"s3://{exampleAwsS3Bucket.Bucket}/output/",
///         },
///         ResourceConfig = new Aws.Sagemaker.Inputs.TrainingJobResourceConfigArgs
///         {
///             InstanceType = "ml.m5.large",
///             InstanceCount = 1,
///             VolumeSizeInGb = 30,
///         },
///         StoppingCondition = new Aws.Sagemaker.Inputs.TrainingJobStoppingConditionArgs
///         {
///             MaxRuntimeInSeconds = 3600,
///         },
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
/// 		_, err := sagemaker.NewTrainingJob(ctx, "example", &sagemaker.TrainingJobArgs{
/// 			TrainingJobName: pulumi.String("example"),
/// 			RoleArn:         pulumi.Any(exampleAwsIamRole.Arn),
/// 			AlgorithmSpecification: &sagemaker.TrainingJobAlgorithmSpecificationArgs{
/// 				TrainingInputMode: pulumi.String("File"),
/// 				TrainingImage:     pulumi.Any(exampleAwsSagemakerPrebuiltEcrImage.RegistryPath),
/// 			},
/// 			OutputDataConfig: &sagemaker.TrainingJobOutputDataConfigArgs{
/// 				S3OutputPath: pulumi.Sprintf("s3://%v/output/", exampleAwsS3Bucket.Bucket),
/// 			},
/// 			ResourceConfig: &sagemaker.TrainingJobResourceConfigArgs{
/// 				InstanceType:   pulumi.String("ml.m5.large"),
/// 				InstanceCount:  pulumi.Int(1),
/// 				VolumeSizeInGb: pulumi.Int(30),
/// 			},
/// 			StoppingCondition: &sagemaker.TrainingJobStoppingConditionArgs{
/// 				MaxRuntimeInSeconds: pulumi.Int(3600),
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
/// resource "aws_sagemaker_trainingjob" "example" {
///   training_job_name = "example"
///   role_arn          = exampleAwsIamRole.arn
///   algorithm_specification = {
///     training_input_mode = "File"
///     training_image      = exampleAwsSagemakerPrebuiltEcrImage.registryPath
///   }
///   output_data_config = {
///     s3_output_path ="s3://${exampleAwsS3Bucket.bucket}/output/"
///   }
///   resource_config = {
///     instance_type     = "ml.m5.large"
///     instance_count    = 1
///     volume_size_in_gb = 30
///   }
///   stopping_condition = {
///     max_runtime_in_seconds = 3600
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sagemaker.TrainingJob;
/// import com.pulumi.aws.sagemaker.TrainingJobArgs;
/// import com.pulumi.aws.sagemaker.inputs.TrainingJobAlgorithmSpecificationArgs;
/// import com.pulumi.aws.sagemaker.inputs.TrainingJobOutputDataConfigArgs;
/// import com.pulumi.aws.sagemaker.inputs.TrainingJobResourceConfigArgs;
/// import com.pulumi.aws.sagemaker.inputs.TrainingJobStoppingConditionArgs;
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
///         var example = new TrainingJob("example", TrainingJobArgs.builder()
///             .trainingJobName("example")
///             .roleArn(exampleAwsIamRole.arn())
///             .algorithmSpecification(TrainingJobAlgorithmSpecificationArgs.builder()
///                 .trainingInputMode("File")
///                 .trainingImage(exampleAwsSagemakerPrebuiltEcrImage.registryPath())
///                 .build())
///             .outputDataConfig(TrainingJobOutputDataConfigArgs.builder()
///                 .s3OutputPath(String.format("s3://%s/output/", exampleAwsS3Bucket.bucket()))
///                 .build())
///             .resourceConfig(TrainingJobResourceConfigArgs.builder()
///                 .instanceType("ml.m5.large")
///                 .instanceCount(1)
///                 .volumeSizeInGb(30)
///                 .build())
///             .stoppingCondition(TrainingJobStoppingConditionArgs.builder()
///                 .maxRuntimeInSeconds(3600)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sagemaker:TrainingJob
///     properties:
///       trainingJobName: example
///       roleArn: ${exampleAwsIamRole.arn}
///       algorithmSpecification:
///         trainingInputMode: File
///         trainingImage: ${exampleAwsSagemakerPrebuiltEcrImage.registryPath}
///       outputDataConfig:
///         s3OutputPath: s3://${exampleAwsS3Bucket.bucket}/output/
///       resourceConfig:
///         instanceType: ml.m5.large
///         instanceCount: 1
///         volumeSizeInGb: 30
///       stoppingCondition:
///         maxRuntimeInSeconds: 3600
/// ```
///
///
/// ### With VPC Configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sagemaker.TrainingJob("example", {
///     trainingJobName: "example",
///     roleArn: exampleAwsIamRole.arn,
///     algorithmSpecification: {
///         trainingInputMode: "File",
///         trainingImage: exampleAwsSagemakerPrebuiltEcrImage.registryPath,
///     },
///     outputDataConfig: {
///         s3OutputPath: `s3://${exampleAwsS3Bucket.bucket}/output/`,
///     },
///     resourceConfig: {
///         instanceType: "ml.m5.large",
///         instanceCount: 1,
///         volumeSizeInGb: 30,
///     },
///     stoppingCondition: {
///         maxRuntimeInSeconds: 3600,
///     },
///     vpcConfig: {
///         securityGroupIds: [exampleAwsSecurityGroup.id],
///         subnets: [exampleAwsSubnet.id],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.TrainingJob("example",
///     training_job_name="example",
///     role_arn=example_aws_iam_role["arn"],
///     algorithm_specification={
///         "training_input_mode": "File",
///         "training_image": example_aws_sagemaker_prebuilt_ecr_image["registryPath"],
///     },
///     output_data_config={
///         "s3_output_path": f"s3://{example_aws_s3_bucket['bucket']}/output/",
///     },
///     resource_config={
///         "instance_type": "ml.m5.large",
///         "instance_count": 1,
///         "volume_size_in_gb": 30,
///     },
///     stopping_condition={
///         "max_runtime_in_seconds": 3600,
///     },
///     vpc_config={
///         "security_group_ids": [example_aws_security_group["id"]],
///         "subnets": [example_aws_subnet["id"]],
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
///     var example = new Aws.Sagemaker.TrainingJob("example", new()
///     {
///         TrainingJobName = "example",
///         RoleArn = exampleAwsIamRole.Arn,
///         AlgorithmSpecification = new Aws.Sagemaker.Inputs.TrainingJobAlgorithmSpecificationArgs
///         {
///             TrainingInputMode = "File",
///             TrainingImage = exampleAwsSagemakerPrebuiltEcrImage.RegistryPath,
///         },
///         OutputDataConfig = new Aws.Sagemaker.Inputs.TrainingJobOutputDataConfigArgs
///         {
///             S3OutputPath = $"s3://{exampleAwsS3Bucket.Bucket}/output/",
///         },
///         ResourceConfig = new Aws.Sagemaker.Inputs.TrainingJobResourceConfigArgs
///         {
///             InstanceType = "ml.m5.large",
///             InstanceCount = 1,
///             VolumeSizeInGb = 30,
///         },
///         StoppingCondition = new Aws.Sagemaker.Inputs.TrainingJobStoppingConditionArgs
///         {
///             MaxRuntimeInSeconds = 3600,
///         },
///         VpcConfig = new Aws.Sagemaker.Inputs.TrainingJobVpcConfigArgs
///         {
///             SecurityGroupIds = new[]
///             {
///                 exampleAwsSecurityGroup.Id,
///             },
///             Subnets = new[]
///             {
///                 exampleAwsSubnet.Id,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sagemaker.NewTrainingJob(ctx, "example", &sagemaker.TrainingJobArgs{
/// 			TrainingJobName: pulumi.String("example"),
/// 			RoleArn:         pulumi.Any(exampleAwsIamRole.Arn),
/// 			AlgorithmSpecification: &sagemaker.TrainingJobAlgorithmSpecificationArgs{
/// 				TrainingInputMode: pulumi.String("File"),
/// 				TrainingImage:     pulumi.Any(exampleAwsSagemakerPrebuiltEcrImage.RegistryPath),
/// 			},
/// 			OutputDataConfig: &sagemaker.TrainingJobOutputDataConfigArgs{
/// 				S3OutputPath: pulumi.Sprintf("s3://%v/output/", exampleAwsS3Bucket.Bucket),
/// 			},
/// 			ResourceConfig: &sagemaker.TrainingJobResourceConfigArgs{
/// 				InstanceType:   pulumi.String("ml.m5.large"),
/// 				InstanceCount:  pulumi.Int(1),
/// 				VolumeSizeInGb: pulumi.Int(30),
/// 			},
/// 			StoppingCondition: &sagemaker.TrainingJobStoppingConditionArgs{
/// 				MaxRuntimeInSeconds: pulumi.Int(3600),
/// 			},
/// 			VpcConfig: &sagemaker.TrainingJobVpcConfigArgs{
/// 				SecurityGroupIds: pulumi.StringArray{
/// 					exampleAwsSecurityGroup.Id,
/// 				},
/// 				Subnets: pulumi.StringArray{
/// 					exampleAwsSubnet.Id,
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
/// resource "aws_sagemaker_trainingjob" "example" {
///   training_job_name = "example"
///   role_arn          = exampleAwsIamRole.arn
///   algorithm_specification = {
///     training_input_mode = "File"
///     training_image      = exampleAwsSagemakerPrebuiltEcrImage.registryPath
///   }
///   output_data_config = {
///     s3_output_path ="s3://${exampleAwsS3Bucket.bucket}/output/"
///   }
///   resource_config = {
///     instance_type     = "ml.m5.large"
///     instance_count    = 1
///     volume_size_in_gb = 30
///   }
///   stopping_condition = {
///     max_runtime_in_seconds = 3600
///   }
///   vpc_config = {
///     security_group_ids = [exampleAwsSecurityGroup.id]
///     subnets            = [exampleAwsSubnet.id]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sagemaker.TrainingJob;
/// import com.pulumi.aws.sagemaker.TrainingJobArgs;
/// import com.pulumi.aws.sagemaker.inputs.TrainingJobAlgorithmSpecificationArgs;
/// import com.pulumi.aws.sagemaker.inputs.TrainingJobOutputDataConfigArgs;
/// import com.pulumi.aws.sagemaker.inputs.TrainingJobResourceConfigArgs;
/// import com.pulumi.aws.sagemaker.inputs.TrainingJobStoppingConditionArgs;
/// import com.pulumi.aws.sagemaker.inputs.TrainingJobVpcConfigArgs;
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
///         var example = new TrainingJob("example", TrainingJobArgs.builder()
///             .trainingJobName("example")
///             .roleArn(exampleAwsIamRole.arn())
///             .algorithmSpecification(TrainingJobAlgorithmSpecificationArgs.builder()
///                 .trainingInputMode("File")
///                 .trainingImage(exampleAwsSagemakerPrebuiltEcrImage.registryPath())
///                 .build())
///             .outputDataConfig(TrainingJobOutputDataConfigArgs.builder()
///                 .s3OutputPath(String.format("s3://%s/output/", exampleAwsS3Bucket.bucket()))
///                 .build())
///             .resourceConfig(TrainingJobResourceConfigArgs.builder()
///                 .instanceType("ml.m5.large")
///                 .instanceCount(1)
///                 .volumeSizeInGb(30)
///                 .build())
///             .stoppingCondition(TrainingJobStoppingConditionArgs.builder()
///                 .maxRuntimeInSeconds(3600)
///                 .build())
///             .vpcConfig(TrainingJobVpcConfigArgs.builder()
///                 .securityGroupIds(exampleAwsSecurityGroup.id())
///                 .subnets(exampleAwsSubnet.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sagemaker:TrainingJob
///     properties:
///       trainingJobName: example
///       roleArn: ${exampleAwsIamRole.arn}
///       algorithmSpecification:
///         trainingInputMode: File
///         trainingImage: ${exampleAwsSagemakerPrebuiltEcrImage.registryPath}
///       outputDataConfig:
///         s3OutputPath: s3://${exampleAwsS3Bucket.bucket}/output/
///       resourceConfig:
///         instanceType: ml.m5.large
///         instanceCount: 1
///         volumeSizeInGb: 30
///       stoppingCondition:
///         maxRuntimeInSeconds: 3600
///       vpcConfig:
///         securityGroupIds:
///           - ${exampleAwsSecurityGroup.id}
///         subnets:
///           - ${exampleAwsSubnet.id}
/// ```
///
///
/// ### With Input Data and Hyperparameters
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sagemaker.TrainingJob("example", {
///     trainingJobName: "example",
///     roleArn: exampleAwsIamRole.arn,
///     algorithmSpecification: {
///         trainingInputMode: "File",
///         trainingImage: exampleAwsSagemakerPrebuiltEcrImage.registryPath,
///         enableSagemakerMetricsTimeSeries: true,
///     },
///     hyperParameters: {
///         mini_batch_size: "200",
///         epochs: "10",
///     },
///     inputDataConfigs: [{
///         channelName: "train",
///         dataSource: {
///             s3DataSource: {
///                 s3DataType: "S3Prefix",
///                 s3Uri: `s3://${exampleAwsS3Bucket.bucket}/train/`,
///             },
///         },
///     }],
///     outputDataConfig: {
///         s3OutputPath: `s3://${exampleAwsS3Bucket.bucket}/output/`,
///     },
///     resourceConfig: {
///         instanceType: "ml.m5.large",
///         instanceCount: 1,
///         volumeSizeInGb: 30,
///     },
///     stoppingCondition: {
///         maxRuntimeInSeconds: 3600,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.TrainingJob("example",
///     training_job_name="example",
///     role_arn=example_aws_iam_role["arn"],
///     algorithm_specification={
///         "training_input_mode": "File",
///         "training_image": example_aws_sagemaker_prebuilt_ecr_image["registryPath"],
///         "enable_sagemaker_metrics_time_series": True,
///     },
///     hyper_parameters={
///         "mini_batch_size": "200",
///         "epochs": "10",
///     },
///     input_data_configs=[{
///         "channel_name": "train",
///         "data_source": {
///             "s3_data_source": {
///                 "s3_data_type": "S3Prefix",
///                 "s3_uri": f"s3://{example_aws_s3_bucket['bucket']}/train/",
///             },
///         },
///     }],
///     output_data_config={
///         "s3_output_path": f"s3://{example_aws_s3_bucket['bucket']}/output/",
///     },
///     resource_config={
///         "instance_type": "ml.m5.large",
///         "instance_count": 1,
///         "volume_size_in_gb": 30,
///     },
///     stopping_condition={
///         "max_runtime_in_seconds": 3600,
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
///     var example = new Aws.Sagemaker.TrainingJob("example", new()
///     {
///         TrainingJobName = "example",
///         RoleArn = exampleAwsIamRole.Arn,
///         AlgorithmSpecification = new Aws.Sagemaker.Inputs.TrainingJobAlgorithmSpecificationArgs
///         {
///             TrainingInputMode = "File",
///             TrainingImage = exampleAwsSagemakerPrebuiltEcrImage.RegistryPath,
///             EnableSagemakerMetricsTimeSeries = true,
///         },
///         HyperParameters =
///         {
///             { "mini_batch_size", "200" },
///             { "epochs", "10" },
///         },
///         InputDataConfigs = new[]
///         {
///             new Aws.Sagemaker.Inputs.TrainingJobInputDataConfigArgs
///             {
///                 ChannelName = "train",
///                 DataSource = new Aws.Sagemaker.Inputs.TrainingJobInputDataConfigDataSourceArgs
///                 {
///                     S3DataSource = new Aws.Sagemaker.Inputs.TrainingJobInputDataConfigDataSourceS3DataSourceArgs
///                     {
///                         S3DataType = "S3Prefix",
///                         S3Uri = $"s3://{exampleAwsS3Bucket.Bucket}/train/",
///                     },
///                 },
///             },
///         },
///         OutputDataConfig = new Aws.Sagemaker.Inputs.TrainingJobOutputDataConfigArgs
///         {
///             S3OutputPath = $"s3://{exampleAwsS3Bucket.Bucket}/output/",
///         },
///         ResourceConfig = new Aws.Sagemaker.Inputs.TrainingJobResourceConfigArgs
///         {
///             InstanceType = "ml.m5.large",
///             InstanceCount = 1,
///             VolumeSizeInGb = 30,
///         },
///         StoppingCondition = new Aws.Sagemaker.Inputs.TrainingJobStoppingConditionArgs
///         {
///             MaxRuntimeInSeconds = 3600,
///         },
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
/// 		_, err := sagemaker.NewTrainingJob(ctx, "example", &sagemaker.TrainingJobArgs{
/// 			TrainingJobName: pulumi.String("example"),
/// 			RoleArn:         pulumi.Any(exampleAwsIamRole.Arn),
/// 			AlgorithmSpecification: &sagemaker.TrainingJobAlgorithmSpecificationArgs{
/// 				TrainingInputMode:                pulumi.String("File"),
/// 				TrainingImage:                    pulumi.Any(exampleAwsSagemakerPrebuiltEcrImage.RegistryPath),
/// 				EnableSagemakerMetricsTimeSeries: pulumi.Bool(true),
/// 			},
/// 			HyperParameters: pulumi.StringMap{
/// 				"mini_batch_size": pulumi.String("200"),
/// 				"epochs":          pulumi.String("10"),
/// 			},
/// 			InputDataConfigs: sagemaker.TrainingJobInputDataConfigArray{
/// 				&sagemaker.TrainingJobInputDataConfigArgs{
/// 					ChannelName: pulumi.String("train"),
/// 					DataSource: &sagemaker.TrainingJobInputDataConfigDataSourceArgs{
/// 						S3DataSource: &sagemaker.TrainingJobInputDataConfigDataSourceS3DataSourceArgs{
/// 							S3DataType: pulumi.String("S3Prefix"),
/// 							S3Uri:      pulumi.Sprintf("s3://%v/train/", exampleAwsS3Bucket.Bucket),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			OutputDataConfig: &sagemaker.TrainingJobOutputDataConfigArgs{
/// 				S3OutputPath: pulumi.Sprintf("s3://%v/output/", exampleAwsS3Bucket.Bucket),
/// 			},
/// 			ResourceConfig: &sagemaker.TrainingJobResourceConfigArgs{
/// 				InstanceType:   pulumi.String("ml.m5.large"),
/// 				InstanceCount:  pulumi.Int(1),
/// 				VolumeSizeInGb: pulumi.Int(30),
/// 			},
/// 			StoppingCondition: &sagemaker.TrainingJobStoppingConditionArgs{
/// 				MaxRuntimeInSeconds: pulumi.Int(3600),
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
/// resource "aws_sagemaker_trainingjob" "example" {
///   training_job_name = "example"
///   role_arn          = exampleAwsIamRole.arn
///   algorithm_specification = {
///     training_input_mode                  = "File"
///     training_image                       = exampleAwsSagemakerPrebuiltEcrImage.registryPath
///     enable_sagemaker_metrics_time_series = true
///   }
///   hyper_parameters = {
///     "mini_batch_size" = "200"
///     "epochs"          = "10"
///   }
///   input_data_configs {
///     channel_name = "train"
///     data_source = {
///       s3_data_source = {
///         s3_data_type = "S3Prefix"
///         s3_uri       ="s3://${exampleAwsS3Bucket.bucket}/train/"
///       }
///     }
///   }
///   output_data_config = {
///     s3_output_path ="s3://${exampleAwsS3Bucket.bucket}/output/"
///   }
///   resource_config = {
///     instance_type     = "ml.m5.large"
///     instance_count    = 1
///     volume_size_in_gb = 30
///   }
///   stopping_condition = {
///     max_runtime_in_seconds = 3600
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sagemaker.TrainingJob;
/// import com.pulumi.aws.sagemaker.TrainingJobArgs;
/// import com.pulumi.aws.sagemaker.inputs.TrainingJobAlgorithmSpecificationArgs;
/// import com.pulumi.aws.sagemaker.inputs.TrainingJobInputDataConfigArgs;
/// import com.pulumi.aws.sagemaker.inputs.TrainingJobInputDataConfigDataSourceArgs;
/// import com.pulumi.aws.sagemaker.inputs.TrainingJobInputDataConfigDataSourceS3DataSourceArgs;
/// import com.pulumi.aws.sagemaker.inputs.TrainingJobOutputDataConfigArgs;
/// import com.pulumi.aws.sagemaker.inputs.TrainingJobResourceConfigArgs;
/// import com.pulumi.aws.sagemaker.inputs.TrainingJobStoppingConditionArgs;
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
///         var example = new TrainingJob("example", TrainingJobArgs.builder()
///             .trainingJobName("example")
///             .roleArn(exampleAwsIamRole.arn())
///             .algorithmSpecification(TrainingJobAlgorithmSpecificationArgs.builder()
///                 .trainingInputMode("File")
///                 .trainingImage(exampleAwsSagemakerPrebuiltEcrImage.registryPath())
///                 .enableSagemakerMetricsTimeSeries(true)
///                 .build())
///             .hyperParameters(Map.ofEntries(
///                 Map.entry("mini_batch_size", "200"),
///                 Map.entry("epochs", "10")
///             ))
///             .inputDataConfigs(TrainingJobInputDataConfigArgs.builder()
///                 .channelName("train")
///                 .dataSource(TrainingJobInputDataConfigDataSourceArgs.builder()
///                     .s3DataSource(TrainingJobInputDataConfigDataSourceS3DataSourceArgs.builder()
///                         .s3DataType("S3Prefix")
///                         .s3Uri(String.format("s3://%s/train/", exampleAwsS3Bucket.bucket()))
///                         .build())
///                     .build())
///                 .build())
///             .outputDataConfig(TrainingJobOutputDataConfigArgs.builder()
///                 .s3OutputPath(String.format("s3://%s/output/", exampleAwsS3Bucket.bucket()))
///                 .build())
///             .resourceConfig(TrainingJobResourceConfigArgs.builder()
///                 .instanceType("ml.m5.large")
///                 .instanceCount(1)
///                 .volumeSizeInGb(30)
///                 .build())
///             .stoppingCondition(TrainingJobStoppingConditionArgs.builder()
///                 .maxRuntimeInSeconds(3600)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sagemaker:TrainingJob
///     properties:
///       trainingJobName: example
///       roleArn: ${exampleAwsIamRole.arn}
///       algorithmSpecification:
///         trainingInputMode: File
///         trainingImage: ${exampleAwsSagemakerPrebuiltEcrImage.registryPath}
///         enableSagemakerMetricsTimeSeries: true
///       hyperParameters:
///         mini_batch_size: '200'
///         epochs: '10'
///       inputDataConfigs:
///         - channelName: train
///           dataSource:
///             s3DataSource:
///               s3DataType: S3Prefix
///               s3Uri: s3://${exampleAwsS3Bucket.bucket}/train/
///       outputDataConfig:
///         s3OutputPath: s3://${exampleAwsS3Bucket.bucket}/output/
///       resourceConfig:
///         instanceType: ml.m5.large
///         instanceCount: 1
///         volumeSizeInGb: 30
///       stoppingCondition:
///         maxRuntimeInSeconds: 3600
/// ```
///
///
/// ### With Encrypted Output, Checkpoints, and TensorBoard
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sagemaker.TrainingJob("example", {
///     trainingJobName: "example",
///     roleArn: exampleAwsIamRole.arn,
///     algorithmSpecification: {
///         trainingInputMode: "File",
///         trainingImage: exampleAwsSagemakerPrebuiltEcrImage.registryPath,
///     },
///     checkpointConfig: {
///         localPath: "/opt/ml/checkpoints",
///         s3Uri: `s3://${exampleAwsS3Bucket.bucket}/checkpoints/`,
///     },
///     outputDataConfig: {
///         compressionType: "GZIP",
///         kmsKeyId: exampleAwsKmsKey.arn,
///         s3OutputPath: `s3://${exampleAwsS3Bucket.bucket}/output/`,
///     },
///     resourceConfig: {
///         instanceType: "ml.m5.large",
///         instanceCount: 1,
///         volumeSizeInGb: 30,
///         volumeKmsKeyId: exampleAwsKmsKey.arn,
///     },
///     stoppingCondition: {
///         maxRuntimeInSeconds: 3600,
///     },
///     tensorBoardOutputConfig: {
///         localPath: "/opt/ml/output/tensorboard",
///         s3OutputPath: `s3://${exampleAwsS3Bucket.bucket}/tensorboard/`,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.TrainingJob("example",
///     training_job_name="example",
///     role_arn=example_aws_iam_role["arn"],
///     algorithm_specification={
///         "training_input_mode": "File",
///         "training_image": example_aws_sagemaker_prebuilt_ecr_image["registryPath"],
///     },
///     checkpoint_config={
///         "local_path": "/opt/ml/checkpoints",
///         "s3_uri": f"s3://{example_aws_s3_bucket['bucket']}/checkpoints/",
///     },
///     output_data_config={
///         "compression_type": "GZIP",
///         "kms_key_id": example_aws_kms_key["arn"],
///         "s3_output_path": f"s3://{example_aws_s3_bucket['bucket']}/output/",
///     },
///     resource_config={
///         "instance_type": "ml.m5.large",
///         "instance_count": 1,
///         "volume_size_in_gb": 30,
///         "volume_kms_key_id": example_aws_kms_key["arn"],
///     },
///     stopping_condition={
///         "max_runtime_in_seconds": 3600,
///     },
///     tensor_board_output_config={
///         "local_path": "/opt/ml/output/tensorboard",
///         "s3_output_path": f"s3://{example_aws_s3_bucket['bucket']}/tensorboard/",
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
///     var example = new Aws.Sagemaker.TrainingJob("example", new()
///     {
///         TrainingJobName = "example",
///         RoleArn = exampleAwsIamRole.Arn,
///         AlgorithmSpecification = new Aws.Sagemaker.Inputs.TrainingJobAlgorithmSpecificationArgs
///         {
///             TrainingInputMode = "File",
///             TrainingImage = exampleAwsSagemakerPrebuiltEcrImage.RegistryPath,
///         },
///         CheckpointConfig = new Aws.Sagemaker.Inputs.TrainingJobCheckpointConfigArgs
///         {
///             LocalPath = "/opt/ml/checkpoints",
///             S3Uri = $"s3://{exampleAwsS3Bucket.Bucket}/checkpoints/",
///         },
///         OutputDataConfig = new Aws.Sagemaker.Inputs.TrainingJobOutputDataConfigArgs
///         {
///             CompressionType = "GZIP",
///             KmsKeyId = exampleAwsKmsKey.Arn,
///             S3OutputPath = $"s3://{exampleAwsS3Bucket.Bucket}/output/",
///         },
///         ResourceConfig = new Aws.Sagemaker.Inputs.TrainingJobResourceConfigArgs
///         {
///             InstanceType = "ml.m5.large",
///             InstanceCount = 1,
///             VolumeSizeInGb = 30,
///             VolumeKmsKeyId = exampleAwsKmsKey.Arn,
///         },
///         StoppingCondition = new Aws.Sagemaker.Inputs.TrainingJobStoppingConditionArgs
///         {
///             MaxRuntimeInSeconds = 3600,
///         },
///         TensorBoardOutputConfig = new Aws.Sagemaker.Inputs.TrainingJobTensorBoardOutputConfigArgs
///         {
///             LocalPath = "/opt/ml/output/tensorboard",
///             S3OutputPath = $"s3://{exampleAwsS3Bucket.Bucket}/tensorboard/",
///         },
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
/// 		_, err := sagemaker.NewTrainingJob(ctx, "example", &sagemaker.TrainingJobArgs{
/// 			TrainingJobName: pulumi.String("example"),
/// 			RoleArn:         pulumi.Any(exampleAwsIamRole.Arn),
/// 			AlgorithmSpecification: &sagemaker.TrainingJobAlgorithmSpecificationArgs{
/// 				TrainingInputMode: pulumi.String("File"),
/// 				TrainingImage:     pulumi.Any(exampleAwsSagemakerPrebuiltEcrImage.RegistryPath),
/// 			},
/// 			CheckpointConfig: &sagemaker.TrainingJobCheckpointConfigArgs{
/// 				LocalPath: pulumi.String("/opt/ml/checkpoints"),
/// 				S3Uri:     pulumi.Sprintf("s3://%v/checkpoints/", exampleAwsS3Bucket.Bucket),
/// 			},
/// 			OutputDataConfig: &sagemaker.TrainingJobOutputDataConfigArgs{
/// 				CompressionType: pulumi.String("GZIP"),
/// 				KmsKeyId:        pulumi.Any(exampleAwsKmsKey.Arn),
/// 				S3OutputPath:    pulumi.Sprintf("s3://%v/output/", exampleAwsS3Bucket.Bucket),
/// 			},
/// 			ResourceConfig: &sagemaker.TrainingJobResourceConfigArgs{
/// 				InstanceType:   pulumi.String("ml.m5.large"),
/// 				InstanceCount:  pulumi.Int(1),
/// 				VolumeSizeInGb: pulumi.Int(30),
/// 				VolumeKmsKeyId: pulumi.Any(exampleAwsKmsKey.Arn),
/// 			},
/// 			StoppingCondition: &sagemaker.TrainingJobStoppingConditionArgs{
/// 				MaxRuntimeInSeconds: pulumi.Int(3600),
/// 			},
/// 			TensorBoardOutputConfig: &sagemaker.TrainingJobTensorBoardOutputConfigArgs{
/// 				LocalPath:    pulumi.String("/opt/ml/output/tensorboard"),
/// 				S3OutputPath: pulumi.Sprintf("s3://%v/tensorboard/", exampleAwsS3Bucket.Bucket),
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
/// resource "aws_sagemaker_trainingjob" "example" {
///   training_job_name = "example"
///   role_arn          = exampleAwsIamRole.arn
///   algorithm_specification = {
///     training_input_mode = "File"
///     training_image      = exampleAwsSagemakerPrebuiltEcrImage.registryPath
///   }
///   checkpoint_config = {
///     local_path = "/opt/ml/checkpoints"
///     s3_uri     ="s3://${exampleAwsS3Bucket.bucket}/checkpoints/"
///   }
///   output_data_config = {
///     compression_type = "GZIP"
///     kms_key_id       = exampleAwsKmsKey.arn
///     s3_output_path   ="s3://${exampleAwsS3Bucket.bucket}/output/"
///   }
///   resource_config = {
///     instance_type     = "ml.m5.large"
///     instance_count    = 1
///     volume_size_in_gb = 30
///     volume_kms_key_id = exampleAwsKmsKey.arn
///   }
///   stopping_condition = {
///     max_runtime_in_seconds = 3600
///   }
///   tensor_board_output_config = {
///     local_path     = "/opt/ml/output/tensorboard"
///     s3_output_path ="s3://${exampleAwsS3Bucket.bucket}/tensorboard/"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sagemaker.TrainingJob;
/// import com.pulumi.aws.sagemaker.TrainingJobArgs;
/// import com.pulumi.aws.sagemaker.inputs.TrainingJobAlgorithmSpecificationArgs;
/// import com.pulumi.aws.sagemaker.inputs.TrainingJobCheckpointConfigArgs;
/// import com.pulumi.aws.sagemaker.inputs.TrainingJobOutputDataConfigArgs;
/// import com.pulumi.aws.sagemaker.inputs.TrainingJobResourceConfigArgs;
/// import com.pulumi.aws.sagemaker.inputs.TrainingJobStoppingConditionArgs;
/// import com.pulumi.aws.sagemaker.inputs.TrainingJobTensorBoardOutputConfigArgs;
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
///         var example = new TrainingJob("example", TrainingJobArgs.builder()
///             .trainingJobName("example")
///             .roleArn(exampleAwsIamRole.arn())
///             .algorithmSpecification(TrainingJobAlgorithmSpecificationArgs.builder()
///                 .trainingInputMode("File")
///                 .trainingImage(exampleAwsSagemakerPrebuiltEcrImage.registryPath())
///                 .build())
///             .checkpointConfig(TrainingJobCheckpointConfigArgs.builder()
///                 .localPath("/opt/ml/checkpoints")
///                 .s3Uri(String.format("s3://%s/checkpoints/", exampleAwsS3Bucket.bucket()))
///                 .build())
///             .outputDataConfig(TrainingJobOutputDataConfigArgs.builder()
///                 .compressionType("GZIP")
///                 .kmsKeyId(exampleAwsKmsKey.arn())
///                 .s3OutputPath(String.format("s3://%s/output/", exampleAwsS3Bucket.bucket()))
///                 .build())
///             .resourceConfig(TrainingJobResourceConfigArgs.builder()
///                 .instanceType("ml.m5.large")
///                 .instanceCount(1)
///                 .volumeSizeInGb(30)
///                 .volumeKmsKeyId(exampleAwsKmsKey.arn())
///                 .build())
///             .stoppingCondition(TrainingJobStoppingConditionArgs.builder()
///                 .maxRuntimeInSeconds(3600)
///                 .build())
///             .tensorBoardOutputConfig(TrainingJobTensorBoardOutputConfigArgs.builder()
///                 .localPath("/opt/ml/output/tensorboard")
///                 .s3OutputPath(String.format("s3://%s/tensorboard/", exampleAwsS3Bucket.bucket()))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sagemaker:TrainingJob
///     properties:
///       trainingJobName: example
///       roleArn: ${exampleAwsIamRole.arn}
///       algorithmSpecification:
///         trainingInputMode: File
///         trainingImage: ${exampleAwsSagemakerPrebuiltEcrImage.registryPath}
///       checkpointConfig:
///         localPath: /opt/ml/checkpoints
///         s3Uri: s3://${exampleAwsS3Bucket.bucket}/checkpoints/
///       outputDataConfig:
///         compressionType: GZIP
///         kmsKeyId: ${exampleAwsKmsKey.arn}
///         s3OutputPath: s3://${exampleAwsS3Bucket.bucket}/output/
///       resourceConfig:
///         instanceType: ml.m5.large
///         instanceCount: 1
///         volumeSizeInGb: 30
///         volumeKmsKeyId: ${exampleAwsKmsKey.arn}
///       stoppingCondition:
///         maxRuntimeInSeconds: 3600
///       tensorBoardOutputConfig:
///         localPath: /opt/ml/output/tensorboard
///         s3OutputPath: s3://${exampleAwsS3Bucket.bucket}/tensorboard/
/// ```
///
///
/// ### With Managed Spot Training and Custom Metrics
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sagemaker.TrainingJob("example", {
///     trainingJobName: "example",
///     roleArn: exampleAwsIamRole.arn,
///     enableManagedSpotTraining: true,
///     enableNetworkIsolation: true,
///     enableInterContainerTrafficEncryption: true,
///     algorithmSpecification: {
///         trainingInputMode: "File",
///         trainingImage: trainingImage,
///         containerEntrypoints: [
///             "python",
///             "/opt/ml/code/train.py",
///         ],
///         containerArguments: [
///             "--epochs",
///             "10",
///             "--batch-size",
///             "128",
///         ],
///         metricDefinitions: [
///             {
///                 name: "train:loss",
///                 regex: "loss: ([0-9\\.]+)",
///             },
///             {
///                 name: "validation:accuracy",
///                 regex: "accuracy: ([0-9\\.]+)",
///             },
///         ],
///     },
///     environment: {
///         MODEL_DIR: "/opt/ml/model",
///         SM_LOG_LEVEL: "20",
///     },
///     hyperParameters: {
///         epochs: "10",
///         batch_size: "128",
///     },
///     outputDataConfig: {
///         s3OutputPath: `s3://${exampleAwsS3Bucket.bucket}/output/`,
///     },
///     resourceConfig: {
///         instanceType: "ml.m5.xlarge",
///         instanceCount: 1,
///         volumeSizeInGb: 50,
///         keepAlivePeriodInSeconds: 600,
///     },
///     retryStrategy: {
///         maximumRetryAttempts: 3,
///     },
///     stoppingCondition: {
///         maxRuntimeInSeconds: 3600,
///         maxWaitTimeInSeconds: 7200,
///     },
///     tags: {
///         Environment: "test",
///         Workload: "training",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.TrainingJob("example",
///     training_job_name="example",
///     role_arn=example_aws_iam_role["arn"],
///     enable_managed_spot_training=True,
///     enable_network_isolation=True,
///     enable_inter_container_traffic_encryption=True,
///     algorithm_specification={
///         "training_input_mode": "File",
///         "training_image": training_image,
///         "container_entrypoints": [
///             "python",
///             "/opt/ml/code/train.py",
///         ],
///         "container_arguments": [
///             "--epochs",
///             "10",
///             "--batch-size",
///             "128",
///         ],
///         "metric_definitions": [
///             {
///                 "name": "train:loss",
///                 "regex": "loss: ([0-9\\.]+)",
///             },
///             {
///                 "name": "validation:accuracy",
///                 "regex": "accuracy: ([0-9\\.]+)",
///             },
///         ],
///     },
///     environment={
///         "MODEL_DIR": "/opt/ml/model",
///         "SM_LOG_LEVEL": "20",
///     },
///     hyper_parameters={
///         "epochs": "10",
///         "batch_size": "128",
///     },
///     output_data_config={
///         "s3_output_path": f"s3://{example_aws_s3_bucket['bucket']}/output/",
///     },
///     resource_config={
///         "instance_type": "ml.m5.xlarge",
///         "instance_count": 1,
///         "volume_size_in_gb": 50,
///         "keep_alive_period_in_seconds": 600,
///     },
///     retry_strategy={
///         "maximum_retry_attempts": 3,
///     },
///     stopping_condition={
///         "max_runtime_in_seconds": 3600,
///         "max_wait_time_in_seconds": 7200,
///     },
///     tags={
///         "Environment": "test",
///         "Workload": "training",
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
///     var example = new Aws.Sagemaker.TrainingJob("example", new()
///     {
///         TrainingJobName = "example",
///         RoleArn = exampleAwsIamRole.Arn,
///         EnableManagedSpotTraining = true,
///         EnableNetworkIsolation = true,
///         EnableInterContainerTrafficEncryption = true,
///         AlgorithmSpecification = new Aws.Sagemaker.Inputs.TrainingJobAlgorithmSpecificationArgs
///         {
///             TrainingInputMode = "File",
///             TrainingImage = trainingImage,
///             ContainerEntrypoints = new[]
///             {
///                 "python",
///                 "/opt/ml/code/train.py",
///             },
///             ContainerArguments = new[]
///             {
///                 "--epochs",
///                 "10",
///                 "--batch-size",
///                 "128",
///             },
///             MetricDefinitions = new[]
///             {
///                 new Aws.Sagemaker.Inputs.TrainingJobAlgorithmSpecificationMetricDefinitionArgs
///                 {
///                     Name = "train:loss",
///                     Regex = "loss: ([0-9\\.]+)",
///                 },
///                 new Aws.Sagemaker.Inputs.TrainingJobAlgorithmSpecificationMetricDefinitionArgs
///                 {
///                     Name = "validation:accuracy",
///                     Regex = "accuracy: ([0-9\\.]+)",
///                 },
///             },
///         },
///         Environment =
///         {
///             { "MODEL_DIR", "/opt/ml/model" },
///             { "SM_LOG_LEVEL", "20" },
///         },
///         HyperParameters =
///         {
///             { "epochs", "10" },
///             { "batch_size", "128" },
///         },
///         OutputDataConfig = new Aws.Sagemaker.Inputs.TrainingJobOutputDataConfigArgs
///         {
///             S3OutputPath = $"s3://{exampleAwsS3Bucket.Bucket}/output/",
///         },
///         ResourceConfig = new Aws.Sagemaker.Inputs.TrainingJobResourceConfigArgs
///         {
///             InstanceType = "ml.m5.xlarge",
///             InstanceCount = 1,
///             VolumeSizeInGb = 50,
///             KeepAlivePeriodInSeconds = 600,
///         },
///         RetryStrategy = new Aws.Sagemaker.Inputs.TrainingJobRetryStrategyArgs
///         {
///             MaximumRetryAttempts = 3,
///         },
///         StoppingCondition = new Aws.Sagemaker.Inputs.TrainingJobStoppingConditionArgs
///         {
///             MaxRuntimeInSeconds = 3600,
///             MaxWaitTimeInSeconds = 7200,
///         },
///         Tags =
///         {
///             { "Environment", "test" },
///             { "Workload", "training" },
///         },
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
/// 		_, err := sagemaker.NewTrainingJob(ctx, "example", &sagemaker.TrainingJobArgs{
/// 			TrainingJobName:                       pulumi.String("example"),
/// 			RoleArn:                               pulumi.Any(exampleAwsIamRole.Arn),
/// 			EnableManagedSpotTraining:             pulumi.Bool(true),
/// 			EnableNetworkIsolation:                pulumi.Bool(true),
/// 			EnableInterContainerTrafficEncryption: pulumi.Bool(true),
/// 			AlgorithmSpecification: &sagemaker.TrainingJobAlgorithmSpecificationArgs{
/// 				TrainingInputMode: pulumi.String("File"),
/// 				TrainingImage:     pulumi.Any(trainingImage),
/// 				ContainerEntrypoints: pulumi.StringArray{
/// 					pulumi.String("python"),
/// 					pulumi.String("/opt/ml/code/train.py"),
/// 				},
/// 				ContainerArguments: pulumi.StringArray{
/// 					pulumi.String("--epochs"),
/// 					pulumi.String("10"),
/// 					pulumi.String("--batch-size"),
/// 					pulumi.String("128"),
/// 				},
/// 				MetricDefinitions: sagemaker.TrainingJobAlgorithmSpecificationMetricDefinitionArray{
/// 					&sagemaker.TrainingJobAlgorithmSpecificationMetricDefinitionArgs{
/// 						Name:  pulumi.String("train:loss"),
/// 						Regex: pulumi.String("loss: ([0-9\\.]+)"),
/// 					},
/// 					&sagemaker.TrainingJobAlgorithmSpecificationMetricDefinitionArgs{
/// 						Name:  pulumi.String("validation:accuracy"),
/// 						Regex: pulumi.String("accuracy: ([0-9\\.]+)"),
/// 					},
/// 				},
/// 			},
/// 			Environment: pulumi.StringMap{
/// 				"MODEL_DIR":    pulumi.String("/opt/ml/model"),
/// 				"SM_LOG_LEVEL": pulumi.String("20"),
/// 			},
/// 			HyperParameters: pulumi.StringMap{
/// 				"epochs":     pulumi.String("10"),
/// 				"batch_size": pulumi.String("128"),
/// 			},
/// 			OutputDataConfig: &sagemaker.TrainingJobOutputDataConfigArgs{
/// 				S3OutputPath: pulumi.Sprintf("s3://%v/output/", exampleAwsS3Bucket.Bucket),
/// 			},
/// 			ResourceConfig: &sagemaker.TrainingJobResourceConfigArgs{
/// 				InstanceType:             pulumi.String("ml.m5.xlarge"),
/// 				InstanceCount:            pulumi.Int(1),
/// 				VolumeSizeInGb:           pulumi.Int(50),
/// 				KeepAlivePeriodInSeconds: pulumi.Int(600),
/// 			},
/// 			RetryStrategy: &sagemaker.TrainingJobRetryStrategyArgs{
/// 				MaximumRetryAttempts: pulumi.Int(3),
/// 			},
/// 			StoppingCondition: &sagemaker.TrainingJobStoppingConditionArgs{
/// 				MaxRuntimeInSeconds:  pulumi.Int(3600),
/// 				MaxWaitTimeInSeconds: pulumi.Int(7200),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("test"),
/// 				"Workload":    pulumi.String("training"),
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
/// resource "aws_sagemaker_trainingjob" "example" {
///   training_job_name                         = "example"
///   role_arn                                  = exampleAwsIamRole.arn
///   enable_managed_spot_training              = true
///   enable_network_isolation                  = true
///   enable_inter_container_traffic_encryption = true
///   algorithm_specification = {
///     training_input_mode   = "File"
///     training_image        = trainingImage
///     container_entrypoints = ["python", "/opt/ml/code/train.py"]
///     container_arguments   = ["--epochs", "10", "--batch-size", "128"]
///     metric_definitions = [{
///       "name"  = "train:loss"
///       "regex" = "loss: ([0-9\\.]+)"
///       }, {
///       "name"  = "validation:accuracy"
///       "regex" = "accuracy: ([0-9\\.]+)"
///     }]
///   }
///   environment = {
///     "MODEL_DIR"    = "/opt/ml/model"
///     "SM_LOG_LEVEL" = "20"
///   }
///   hyper_parameters = {
///     "epochs"     = "10"
///     "batch_size" = "128"
///   }
///   output_data_config = {
///     s3_output_path ="s3://${exampleAwsS3Bucket.bucket}/output/"
///   }
///   resource_config = {
///     instance_type                = "ml.m5.xlarge"
///     instance_count               = 1
///     volume_size_in_gb            = 50
///     keep_alive_period_in_seconds = 600
///   }
///   retry_strategy = {
///     maximum_retry_attempts = 3
///   }
///   stopping_condition = {
///     max_runtime_in_seconds   = 3600
///     max_wait_time_in_seconds = 7200
///   }
///   tags = {
///     "Environment" = "test"
///     "Workload"    = "training"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sagemaker.TrainingJob;
/// import com.pulumi.aws.sagemaker.TrainingJobArgs;
/// import com.pulumi.aws.sagemaker.inputs.TrainingJobAlgorithmSpecificationArgs;
/// import com.pulumi.aws.sagemaker.inputs.TrainingJobAlgorithmSpecificationMetricDefinitionArgs;
/// import com.pulumi.aws.sagemaker.inputs.TrainingJobOutputDataConfigArgs;
/// import com.pulumi.aws.sagemaker.inputs.TrainingJobResourceConfigArgs;
/// import com.pulumi.aws.sagemaker.inputs.TrainingJobRetryStrategyArgs;
/// import com.pulumi.aws.sagemaker.inputs.TrainingJobStoppingConditionArgs;
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
///         var example = new TrainingJob("example", TrainingJobArgs.builder()
///             .trainingJobName("example")
///             .roleArn(exampleAwsIamRole.arn())
///             .enableManagedSpotTraining(true)
///             .enableNetworkIsolation(true)
///             .enableInterContainerTrafficEncryption(true)
///             .algorithmSpecification(TrainingJobAlgorithmSpecificationArgs.builder()
///                 .trainingInputMode("File")
///                 .trainingImage(trainingImage)
///                 .containerEntrypoints(
///                     "python",
///                     "/opt/ml/code/train.py")
///                 .containerArguments(
///                     "--epochs",
///                     "10",
///                     "--batch-size",
///                     "128")
///                 .metricDefinitions(
///                     TrainingJobAlgorithmSpecificationMetricDefinitionArgs.builder()
///                         .name("train:loss")
///                         .regex("loss: ([0-9\\.]+)")
///                         .build(),
///                     TrainingJobAlgorithmSpecificationMetricDefinitionArgs.builder()
///                         .name("validation:accuracy")
///                         .regex("accuracy: ([0-9\\.]+)")
///                         .build())
///                 .build())
///             .environment(Map.ofEntries(
///                 Map.entry("MODEL_DIR", "/opt/ml/model"),
///                 Map.entry("SM_LOG_LEVEL", "20")
///             ))
///             .hyperParameters(Map.ofEntries(
///                 Map.entry("epochs", "10"),
///                 Map.entry("batch_size", "128")
///             ))
///             .outputDataConfig(TrainingJobOutputDataConfigArgs.builder()
///                 .s3OutputPath(String.format("s3://%s/output/", exampleAwsS3Bucket.bucket()))
///                 .build())
///             .resourceConfig(TrainingJobResourceConfigArgs.builder()
///                 .instanceType("ml.m5.xlarge")
///                 .instanceCount(1)
///                 .volumeSizeInGb(50)
///                 .keepAlivePeriodInSeconds(600)
///                 .build())
///             .retryStrategy(TrainingJobRetryStrategyArgs.builder()
///                 .maximumRetryAttempts(3)
///                 .build())
///             .stoppingCondition(TrainingJobStoppingConditionArgs.builder()
///                 .maxRuntimeInSeconds(3600)
///                 .maxWaitTimeInSeconds(7200)
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("Environment", "test"),
///                 Map.entry("Workload", "training")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sagemaker:TrainingJob
///     properties:
///       trainingJobName: example
///       roleArn: ${exampleAwsIamRole.arn}
///       enableManagedSpotTraining: true
///       enableNetworkIsolation: true
///       enableInterContainerTrafficEncryption: true
///       algorithmSpecification:
///         trainingInputMode: File
///         trainingImage: ${trainingImage}
///         containerEntrypoints:
///           - python
///           - /opt/ml/code/train.py
///         containerArguments:
///           - --epochs
///           - '10'
///           - --batch-size
///           - '128'
///         metricDefinitions:
///           - name: train:loss
///             regex: 'loss: ([0-9\.]+)'
///           - name: validation:accuracy
///             regex: 'accuracy: ([0-9\.]+)'
///       environment:
///         MODEL_DIR: /opt/ml/model
///         SM_LOG_LEVEL: '20'
///       hyperParameters:
///         epochs: '10'
///         batch_size: '128'
///       outputDataConfig:
///         s3OutputPath: s3://${exampleAwsS3Bucket.bucket}/output/
///       resourceConfig:
///         instanceType: ml.m5.xlarge
///         instanceCount: 1
///         volumeSizeInGb: 50
///         keepAlivePeriodInSeconds: 600
///       retryStrategy:
///         maximumRetryAttempts: 3
///       stoppingCondition:
///         maxRuntimeInSeconds: 3600
///         maxWaitTimeInSeconds: 7200
///       tags:
///         Environment: test
///         Workload: training
/// ```
///
///
/// ### With Multiple Input Channels, Infrastructure Checks, and Session Tag Chaining
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sagemaker.TrainingJob("example", {
///     trainingJobName: "example",
///     roleArn: exampleAwsIamRole.arn,
///     algorithmSpecification: {
///         trainingInputMode: "File",
///         trainingImage: exampleAwsSagemakerPrebuiltEcrImage.registryPath,
///     },
///     inputDataConfigs: [
///         {
///             channelName: "train",
///             contentType: "text/csv",
///             inputMode: "File",
///             dataSource: {
///                 s3DataSource: {
///                     s3DataDistributionType: "FullyReplicated",
///                     s3DataType: "S3Prefix",
///                     s3Uri: `s3://${exampleAwsS3Bucket.bucket}/train/`,
///                 },
///             },
///         },
///         {
///             channelName: "validation",
///             contentType: "text/csv",
///             inputMode: "File",
///             dataSource: {
///                 s3DataSource: {
///                     s3DataDistributionType: "FullyReplicated",
///                     s3DataType: "S3Prefix",
///                     s3Uri: `s3://${exampleAwsS3Bucket.bucket}/validation/`,
///                 },
///             },
///         },
///     ],
///     infraCheckConfig: {
///         enableInfraCheck: true,
///     },
///     outputDataConfig: {
///         s3OutputPath: `s3://${exampleAwsS3Bucket.bucket}/output/`,
///     },
///     resourceConfig: {
///         instanceType: "ml.m5.large",
///         instanceCount: 1,
///         volumeSizeInGb: 30,
///     },
///     sessionChainingConfig: {
///         enableSessionTagChaining: true,
///     },
///     stoppingCondition: {
///         maxRuntimeInSeconds: 3600,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.TrainingJob("example",
///     training_job_name="example",
///     role_arn=example_aws_iam_role["arn"],
///     algorithm_specification={
///         "training_input_mode": "File",
///         "training_image": example_aws_sagemaker_prebuilt_ecr_image["registryPath"],
///     },
///     input_data_configs=[
///         {
///             "channel_name": "train",
///             "content_type": "text/csv",
///             "input_mode": "File",
///             "data_source": {
///                 "s3_data_source": {
///                     "s3_data_distribution_type": "FullyReplicated",
///                     "s3_data_type": "S3Prefix",
///                     "s3_uri": f"s3://{example_aws_s3_bucket['bucket']}/train/",
///                 },
///             },
///         },
///         {
///             "channel_name": "validation",
///             "content_type": "text/csv",
///             "input_mode": "File",
///             "data_source": {
///                 "s3_data_source": {
///                     "s3_data_distribution_type": "FullyReplicated",
///                     "s3_data_type": "S3Prefix",
///                     "s3_uri": f"s3://{example_aws_s3_bucket['bucket']}/validation/",
///                 },
///             },
///         },
///     ],
///     infra_check_config={
///         "enable_infra_check": True,
///     },
///     output_data_config={
///         "s3_output_path": f"s3://{example_aws_s3_bucket['bucket']}/output/",
///     },
///     resource_config={
///         "instance_type": "ml.m5.large",
///         "instance_count": 1,
///         "volume_size_in_gb": 30,
///     },
///     session_chaining_config={
///         "enable_session_tag_chaining": True,
///     },
///     stopping_condition={
///         "max_runtime_in_seconds": 3600,
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
///     var example = new Aws.Sagemaker.TrainingJob("example", new()
///     {
///         TrainingJobName = "example",
///         RoleArn = exampleAwsIamRole.Arn,
///         AlgorithmSpecification = new Aws.Sagemaker.Inputs.TrainingJobAlgorithmSpecificationArgs
///         {
///             TrainingInputMode = "File",
///             TrainingImage = exampleAwsSagemakerPrebuiltEcrImage.RegistryPath,
///         },
///         InputDataConfigs = new[]
///         {
///             new Aws.Sagemaker.Inputs.TrainingJobInputDataConfigArgs
///             {
///                 ChannelName = "train",
///                 ContentType = "text/csv",
///                 InputMode = "File",
///                 DataSource = new Aws.Sagemaker.Inputs.TrainingJobInputDataConfigDataSourceArgs
///                 {
///                     S3DataSource = new Aws.Sagemaker.Inputs.TrainingJobInputDataConfigDataSourceS3DataSourceArgs
///                     {
///                         S3DataDistributionType = "FullyReplicated",
///                         S3DataType = "S3Prefix",
///                         S3Uri = $"s3://{exampleAwsS3Bucket.Bucket}/train/",
///                     },
///                 },
///             },
///             new Aws.Sagemaker.Inputs.TrainingJobInputDataConfigArgs
///             {
///                 ChannelName = "validation",
///                 ContentType = "text/csv",
///                 InputMode = "File",
///                 DataSource = new Aws.Sagemaker.Inputs.TrainingJobInputDataConfigDataSourceArgs
///                 {
///                     S3DataSource = new Aws.Sagemaker.Inputs.TrainingJobInputDataConfigDataSourceS3DataSourceArgs
///                     {
///                         S3DataDistributionType = "FullyReplicated",
///                         S3DataType = "S3Prefix",
///                         S3Uri = $"s3://{exampleAwsS3Bucket.Bucket}/validation/",
///                     },
///                 },
///             },
///         },
///         InfraCheckConfig = new Aws.Sagemaker.Inputs.TrainingJobInfraCheckConfigArgs
///         {
///             EnableInfraCheck = true,
///         },
///         OutputDataConfig = new Aws.Sagemaker.Inputs.TrainingJobOutputDataConfigArgs
///         {
///             S3OutputPath = $"s3://{exampleAwsS3Bucket.Bucket}/output/",
///         },
///         ResourceConfig = new Aws.Sagemaker.Inputs.TrainingJobResourceConfigArgs
///         {
///             InstanceType = "ml.m5.large",
///             InstanceCount = 1,
///             VolumeSizeInGb = 30,
///         },
///         SessionChainingConfig = new Aws.Sagemaker.Inputs.TrainingJobSessionChainingConfigArgs
///         {
///             EnableSessionTagChaining = true,
///         },
///         StoppingCondition = new Aws.Sagemaker.Inputs.TrainingJobStoppingConditionArgs
///         {
///             MaxRuntimeInSeconds = 3600,
///         },
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
/// 		_, err := sagemaker.NewTrainingJob(ctx, "example", &sagemaker.TrainingJobArgs{
/// 			TrainingJobName: pulumi.String("example"),
/// 			RoleArn:         pulumi.Any(exampleAwsIamRole.Arn),
/// 			AlgorithmSpecification: &sagemaker.TrainingJobAlgorithmSpecificationArgs{
/// 				TrainingInputMode: pulumi.String("File"),
/// 				TrainingImage:     pulumi.Any(exampleAwsSagemakerPrebuiltEcrImage.RegistryPath),
/// 			},
/// 			InputDataConfigs: sagemaker.TrainingJobInputDataConfigArray{
/// 				&sagemaker.TrainingJobInputDataConfigArgs{
/// 					ChannelName: pulumi.String("train"),
/// 					ContentType: pulumi.String("text/csv"),
/// 					InputMode:   pulumi.String("File"),
/// 					DataSource: &sagemaker.TrainingJobInputDataConfigDataSourceArgs{
/// 						S3DataSource: &sagemaker.TrainingJobInputDataConfigDataSourceS3DataSourceArgs{
/// 							S3DataDistributionType: pulumi.String("FullyReplicated"),
/// 							S3DataType:             pulumi.String("S3Prefix"),
/// 							S3Uri:                  pulumi.Sprintf("s3://%v/train/", exampleAwsS3Bucket.Bucket),
/// 						},
/// 					},
/// 				},
/// 				&sagemaker.TrainingJobInputDataConfigArgs{
/// 					ChannelName: pulumi.String("validation"),
/// 					ContentType: pulumi.String("text/csv"),
/// 					InputMode:   pulumi.String("File"),
/// 					DataSource: &sagemaker.TrainingJobInputDataConfigDataSourceArgs{
/// 						S3DataSource: &sagemaker.TrainingJobInputDataConfigDataSourceS3DataSourceArgs{
/// 							S3DataDistributionType: pulumi.String("FullyReplicated"),
/// 							S3DataType:             pulumi.String("S3Prefix"),
/// 							S3Uri:                  pulumi.Sprintf("s3://%v/validation/", exampleAwsS3Bucket.Bucket),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			InfraCheckConfig: &sagemaker.TrainingJobInfraCheckConfigArgs{
/// 				EnableInfraCheck: pulumi.Bool(true),
/// 			},
/// 			OutputDataConfig: &sagemaker.TrainingJobOutputDataConfigArgs{
/// 				S3OutputPath: pulumi.Sprintf("s3://%v/output/", exampleAwsS3Bucket.Bucket),
/// 			},
/// 			ResourceConfig: &sagemaker.TrainingJobResourceConfigArgs{
/// 				InstanceType:   pulumi.String("ml.m5.large"),
/// 				InstanceCount:  pulumi.Int(1),
/// 				VolumeSizeInGb: pulumi.Int(30),
/// 			},
/// 			SessionChainingConfig: &sagemaker.TrainingJobSessionChainingConfigArgs{
/// 				EnableSessionTagChaining: pulumi.Bool(true),
/// 			},
/// 			StoppingCondition: &sagemaker.TrainingJobStoppingConditionArgs{
/// 				MaxRuntimeInSeconds: pulumi.Int(3600),
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
/// resource "aws_sagemaker_trainingjob" "example" {
///   training_job_name = "example"
///   role_arn          = exampleAwsIamRole.arn
///   algorithm_specification = {
///     training_input_mode = "File"
///     training_image      = exampleAwsSagemakerPrebuiltEcrImage.registryPath
///   }
///   input_data_configs {
///     channel_name = "train"
///     content_type = "text/csv"
///     input_mode   = "File"
///     data_source = {
///       s3_data_source = {
///         s3_data_distribution_type = "FullyReplicated"
///         s3_data_type              = "S3Prefix"
///         s3_uri                    ="s3://${exampleAwsS3Bucket.bucket}/train/"
///       }
///     }
///   }
///   input_data_configs {
///     channel_name = "validation"
///     content_type = "text/csv"
///     input_mode   = "File"
///     data_source = {
///       s3_data_source = {
///         s3_data_distribution_type = "FullyReplicated"
///         s3_data_type              = "S3Prefix"
///         s3_uri                    ="s3://${exampleAwsS3Bucket.bucket}/validation/"
///       }
///     }
///   }
///   infra_check_config = {
///     enable_infra_check = true
///   }
///   output_data_config = {
///     s3_output_path ="s3://${exampleAwsS3Bucket.bucket}/output/"
///   }
///   resource_config = {
///     instance_type     = "ml.m5.large"
///     instance_count    = 1
///     volume_size_in_gb = 30
///   }
///   session_chaining_config = {
///     enable_session_tag_chaining = true
///   }
///   stopping_condition = {
///     max_runtime_in_seconds = 3600
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sagemaker.TrainingJob;
/// import com.pulumi.aws.sagemaker.TrainingJobArgs;
/// import com.pulumi.aws.sagemaker.inputs.TrainingJobAlgorithmSpecificationArgs;
/// import com.pulumi.aws.sagemaker.inputs.TrainingJobInputDataConfigArgs;
/// import com.pulumi.aws.sagemaker.inputs.TrainingJobInputDataConfigDataSourceArgs;
/// import com.pulumi.aws.sagemaker.inputs.TrainingJobInputDataConfigDataSourceS3DataSourceArgs;
/// import com.pulumi.aws.sagemaker.inputs.TrainingJobInfraCheckConfigArgs;
/// import com.pulumi.aws.sagemaker.inputs.TrainingJobOutputDataConfigArgs;
/// import com.pulumi.aws.sagemaker.inputs.TrainingJobResourceConfigArgs;
/// import com.pulumi.aws.sagemaker.inputs.TrainingJobSessionChainingConfigArgs;
/// import com.pulumi.aws.sagemaker.inputs.TrainingJobStoppingConditionArgs;
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
///         var example = new TrainingJob("example", TrainingJobArgs.builder()
///             .trainingJobName("example")
///             .roleArn(exampleAwsIamRole.arn())
///             .algorithmSpecification(TrainingJobAlgorithmSpecificationArgs.builder()
///                 .trainingInputMode("File")
///                 .trainingImage(exampleAwsSagemakerPrebuiltEcrImage.registryPath())
///                 .build())
///             .inputDataConfigs(
///                 TrainingJobInputDataConfigArgs.builder()
///                     .channelName("train")
///                     .contentType("text/csv")
///                     .inputMode("File")
///                     .dataSource(TrainingJobInputDataConfigDataSourceArgs.builder()
///                         .s3DataSource(TrainingJobInputDataConfigDataSourceS3DataSourceArgs.builder()
///                             .s3DataDistributionType("FullyReplicated")
///                             .s3DataType("S3Prefix")
///                             .s3Uri(String.format("s3://%s/train/", exampleAwsS3Bucket.bucket()))
///                             .build())
///                         .build())
///                     .build(),
///                 TrainingJobInputDataConfigArgs.builder()
///                     .channelName("validation")
///                     .contentType("text/csv")
///                     .inputMode("File")
///                     .dataSource(TrainingJobInputDataConfigDataSourceArgs.builder()
///                         .s3DataSource(TrainingJobInputDataConfigDataSourceS3DataSourceArgs.builder()
///                             .s3DataDistributionType("FullyReplicated")
///                             .s3DataType("S3Prefix")
///                             .s3Uri(String.format("s3://%s/validation/", exampleAwsS3Bucket.bucket()))
///                             .build())
///                         .build())
///                     .build())
///             .infraCheckConfig(TrainingJobInfraCheckConfigArgs.builder()
///                 .enableInfraCheck(true)
///                 .build())
///             .outputDataConfig(TrainingJobOutputDataConfigArgs.builder()
///                 .s3OutputPath(String.format("s3://%s/output/", exampleAwsS3Bucket.bucket()))
///                 .build())
///             .resourceConfig(TrainingJobResourceConfigArgs.builder()
///                 .instanceType("ml.m5.large")
///                 .instanceCount(1)
///                 .volumeSizeInGb(30)
///                 .build())
///             .sessionChainingConfig(TrainingJobSessionChainingConfigArgs.builder()
///                 .enableSessionTagChaining(true)
///                 .build())
///             .stoppingCondition(TrainingJobStoppingConditionArgs.builder()
///                 .maxRuntimeInSeconds(3600)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sagemaker:TrainingJob
///     properties:
///       trainingJobName: example
///       roleArn: ${exampleAwsIamRole.arn}
///       algorithmSpecification:
///         trainingInputMode: File
///         trainingImage: ${exampleAwsSagemakerPrebuiltEcrImage.registryPath}
///       inputDataConfigs:
///         - channelName: train
///           contentType: text/csv
///           inputMode: File
///           dataSource:
///             s3DataSource:
///               s3DataDistributionType: FullyReplicated
///               s3DataType: S3Prefix
///               s3Uri: s3://${exampleAwsS3Bucket.bucket}/train/
///         - channelName: validation
///           contentType: text/csv
///           inputMode: File
///           dataSource:
///             s3DataSource:
///               s3DataDistributionType: FullyReplicated
///               s3DataType: S3Prefix
///               s3Uri: s3://${exampleAwsS3Bucket.bucket}/validation/
///       infraCheckConfig:
///         enableInfraCheck: true
///       outputDataConfig:
///         s3OutputPath: s3://${exampleAwsS3Bucket.bucket}/output/
///       resourceConfig:
///         instanceType: ml.m5.large
///         instanceCount: 1
///         volumeSizeInGb: 30
///       sessionChainingConfig:
///         enableSessionTagChaining: true
///       stoppingCondition:
///         maxRuntimeInSeconds: 3600
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `trainingJobName` - (String) Name of the Training Job.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import SageMaker AI Training Job using the `trainingJobName`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/trainingJob:TrainingJob example my-training-job
/// ```
class TrainingJob extends pulumi.CustomResource {
  /// Algorithm-related parameters of the training job. See `algorithmSpecification` below. Conflicts with `serverlessJobConfig`.
  late final pulumi.Output<TrainingJobAlgorithmSpecification?> algorithmSpecification;
  /// ARN of the Training Job.
  late final pulumi.Output<String> arn;
  /// Location of checkpoints during training. See `checkpointConfig` below. Conflicts with `serverlessJobConfig`.
  late final pulumi.Output<TrainingJobCheckpointConfig?> checkpointConfig;
  /// Configuration for debugging rules. See `debugHookConfig` below. Conflicts with `serverlessJobConfig`.
  late final pulumi.Output<TrainingJobDebugHookConfig?> debugHookConfig;
  /// List of debug rule configurations. Maximum of 20. See `debugRuleConfigurations` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> debugRuleConfigurations;
  /// Whether to delete model packages in the configured model package group when the training job is destroyed. Default is `false`.
  late final pulumi.Output<bool?> deleteModelPackagesOnDestroy;
  /// Whether to delete detached VPC ENIs SageMaker may leave behind when the training job is destroyed. Default is `false`.
  late final pulumi.Output<bool?> deleteVpcEnisOnDestroy;
  /// Whether to encrypt inter-container traffic. When enabled, communications between containers are encrypted.
  late final pulumi.Output<bool> enableInterContainerTrafficEncryption;
  /// Whether to use managed spot training. Optimizes the cost of training by using Amazon EC2 Spot Instances. Conflicts with `serverlessJobConfig`.
  late final pulumi.Output<bool> enableManagedSpotTraining;
  /// Whether to isolate the training container from the network. No inbound or outbound network calls can be made.
  late final pulumi.Output<bool> enableNetworkIsolation;
  /// Map of environment variables to set in the training container. Maximum of 100 entries.  Conflicts with `serverlessJobConfig`.
  late final pulumi.Output<Map<String, String>?> environment;
  /// Associates a SageMaker AI Experiment or Trial to the training job. See `experimentConfig` below. Conflicts with `serverlessJobConfig`.
  late final pulumi.Output<TrainingJobExperimentConfig?> experimentConfig;
  /// Map of hyperparameters for the training algorithm. Maximum of 100 entries.
  late final pulumi.Output<Map<String, String>?> hyperParameters;
  /// Infrastructure health check configuration. See `infraCheckConfig` below.
  late final pulumi.Output<TrainingJobInfraCheckConfig?> infraCheckConfig;
  /// List of input data channel configurations for the training job. Maximum of 20. See `inputDataConfig` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> inputDataConfigs;
  /// MLflow integration configuration. See `mlflowConfig` below.
  late final pulumi.Output<TrainingJobMlflowConfig?> mlflowConfig;
  /// Model package configuration. Requires `serverlessJobConfig`. See `modelPackageConfig` below.
  late final pulumi.Output<TrainingJobModelPackageConfig?> modelPackageConfig;
  /// Location of the output data from the training job. See `outputDataConfig` below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<TrainingJobOutputDataConfig?> outputDataConfig;
  /// Configuration for the profiler. See `profilerConfig` below. Conflicts with `serverlessJobConfig`.
  late final pulumi.Output<TrainingJobProfilerConfig?> profilerConfig;
  /// List of profiler rule configurations. Maximum of 20. See `profilerRuleConfigurations` below. Conflicts with `serverlessJobConfig`.
  late final pulumi.Output<List<Map<String, dynamic>>?> profilerRuleConfigurations;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Configuration for remote debugging. See `remoteDebugConfig` below.
  late final pulumi.Output<TrainingJobRemoteDebugConfig?> remoteDebugConfig;
  /// Resources for the training job, including compute instances and storage volumes. See `resourceConfig` below.
  late final pulumi.Output<TrainingJobResourceConfig?> resourceConfig;
  /// Number of times to retry the job if it fails. See `retryStrategy` below. Conflicts with `serverlessJobConfig`.
  late final pulumi.Output<TrainingJobRetryStrategy?> retryStrategy;
  /// ARN of the IAM role that SageMaker AI assumes to perform tasks on your behalf during training.
  late final pulumi.Output<String> roleArn;
  /// Configuration for serverless training jobs using foundation models. Conflicts with `algorithmSpecification`, `enableManagedSpotTraining`, `environment`, `retryStrategy`, `checkpointConfig`, `debugHookConfig`, `experimentConfig`, `profilerConfig`, `profilerRuleConfigurations`, and `tensorBoardOutputConfig`. See `serverlessJobConfig` below.
  late final pulumi.Output<TrainingJobServerlessJobConfig?> serverlessJobConfig;
  /// Configuration for session tag chaining. See `sessionChainingConfig` below.
  late final pulumi.Output<TrainingJobSessionChainingConfig?> sessionChainingConfig;
  late final pulumi.Output<TrainingJobStoppingCondition?> stoppingCondition;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Configuration for TensorBoard output. See `tensorBoardOutputConfig` below. Conflicts with `serverlessJobConfig`.
  late final pulumi.Output<TrainingJobTensorBoardOutputConfig?> tensorBoardOutputConfig;
  late final pulumi.Output<TrainingJobTimeouts?> timeouts;
  /// Name of the training job. Must be between 1 and 63 characters, start with a letter or number, and contain only letters, numbers, and hyphens.
  late final pulumi.Output<String> trainingJobName;
  /// VPC configuration for the training job. See `vpcConfig` below.
  late final pulumi.Output<TrainingJobVpcConfig?> vpcConfig;

  /// Creates a new [TrainingJob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TrainingJob]. {@macro pulumi_sagemaker_training_job_training_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TrainingJob(
    String name, {
    TrainingJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/trainingJob:TrainingJob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    algorithmSpecification = registerOutput<TrainingJobAlgorithmSpecification?>('algorithmSpecification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrainingJobAlgorithmSpecification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    arn = registerOutput<String>('arn');
    checkpointConfig = registerOutput<TrainingJobCheckpointConfig?>('checkpointConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrainingJobCheckpointConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    debugHookConfig = registerOutput<TrainingJobDebugHookConfig?>('debugHookConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrainingJobDebugHookConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    debugRuleConfigurations = registerOutput<List<Map<String, dynamic>>?>('debugRuleConfigurations');
    deleteModelPackagesOnDestroy = registerOutput<bool?>('deleteModelPackagesOnDestroy');
    deleteVpcEnisOnDestroy = registerOutput<bool?>('deleteVpcEnisOnDestroy');
    enableInterContainerTrafficEncryption = registerOutput<bool>('enableInterContainerTrafficEncryption');
    enableManagedSpotTraining = registerOutput<bool>('enableManagedSpotTraining');
    enableNetworkIsolation = registerOutput<bool>('enableNetworkIsolation');
    environment = registerOutput<Map<String, String>?>('environment');
    experimentConfig = registerOutput<TrainingJobExperimentConfig?>('experimentConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrainingJobExperimentConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    hyperParameters = registerOutput<Map<String, String>?>('hyperParameters');
    infraCheckConfig = registerOutput<TrainingJobInfraCheckConfig?>('infraCheckConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrainingJobInfraCheckConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    inputDataConfigs = registerOutput<List<Map<String, dynamic>>?>('inputDataConfigs');
    mlflowConfig = registerOutput<TrainingJobMlflowConfig?>('mlflowConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrainingJobMlflowConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modelPackageConfig = registerOutput<TrainingJobModelPackageConfig?>('modelPackageConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrainingJobModelPackageConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    outputDataConfig = registerOutput<TrainingJobOutputDataConfig?>('outputDataConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrainingJobOutputDataConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    profilerConfig = registerOutput<TrainingJobProfilerConfig?>('profilerConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrainingJobProfilerConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    profilerRuleConfigurations = registerOutput<List<Map<String, dynamic>>?>('profilerRuleConfigurations');
    region = registerOutput<String>('region');
    remoteDebugConfig = registerOutput<TrainingJobRemoteDebugConfig?>('remoteDebugConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrainingJobRemoteDebugConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceConfig = registerOutput<TrainingJobResourceConfig?>('resourceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrainingJobResourceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    retryStrategy = registerOutput<TrainingJobRetryStrategy?>('retryStrategy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrainingJobRetryStrategy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    roleArn = registerOutput<String>('roleArn');
    serverlessJobConfig = registerOutput<TrainingJobServerlessJobConfig?>('serverlessJobConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrainingJobServerlessJobConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sessionChainingConfig = registerOutput<TrainingJobSessionChainingConfig?>('sessionChainingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrainingJobSessionChainingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    stoppingCondition = registerOutput<TrainingJobStoppingCondition?>('stoppingCondition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrainingJobStoppingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    tensorBoardOutputConfig = registerOutput<TrainingJobTensorBoardOutputConfig?>('tensorBoardOutputConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrainingJobTensorBoardOutputConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeouts = registerOutput<TrainingJobTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrainingJobTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    trainingJobName = registerOutput<String>('trainingJobName');
    vpcConfig = registerOutput<TrainingJobVpcConfig?>('vpcConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrainingJobVpcConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [TrainingJob] resource's state with the given [name] and [id].
  static TrainingJob get(
    String name,
    pulumi.Input<String> id, {
    TrainingJobState? state,
  }) {
    return TrainingJob._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TrainingJob._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/trainingJob:TrainingJob',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    algorithmSpecification = registerOutput<TrainingJobAlgorithmSpecification?>('algorithmSpecification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrainingJobAlgorithmSpecification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    arn = registerOutput<String>('arn');
    checkpointConfig = registerOutput<TrainingJobCheckpointConfig?>('checkpointConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrainingJobCheckpointConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    debugHookConfig = registerOutput<TrainingJobDebugHookConfig?>('debugHookConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrainingJobDebugHookConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    debugRuleConfigurations = registerOutput<List<Map<String, dynamic>>?>('debugRuleConfigurations');
    deleteModelPackagesOnDestroy = registerOutput<bool?>('deleteModelPackagesOnDestroy');
    deleteVpcEnisOnDestroy = registerOutput<bool?>('deleteVpcEnisOnDestroy');
    enableInterContainerTrafficEncryption = registerOutput<bool>('enableInterContainerTrafficEncryption');
    enableManagedSpotTraining = registerOutput<bool>('enableManagedSpotTraining');
    enableNetworkIsolation = registerOutput<bool>('enableNetworkIsolation');
    environment = registerOutput<Map<String, String>?>('environment');
    experimentConfig = registerOutput<TrainingJobExperimentConfig?>('experimentConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrainingJobExperimentConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    hyperParameters = registerOutput<Map<String, String>?>('hyperParameters');
    infraCheckConfig = registerOutput<TrainingJobInfraCheckConfig?>('infraCheckConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrainingJobInfraCheckConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    inputDataConfigs = registerOutput<List<Map<String, dynamic>>?>('inputDataConfigs');
    mlflowConfig = registerOutput<TrainingJobMlflowConfig?>('mlflowConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrainingJobMlflowConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modelPackageConfig = registerOutput<TrainingJobModelPackageConfig?>('modelPackageConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrainingJobModelPackageConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    outputDataConfig = registerOutput<TrainingJobOutputDataConfig?>('outputDataConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrainingJobOutputDataConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    profilerConfig = registerOutput<TrainingJobProfilerConfig?>('profilerConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrainingJobProfilerConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    profilerRuleConfigurations = registerOutput<List<Map<String, dynamic>>?>('profilerRuleConfigurations');
    region = registerOutput<String>('region');
    remoteDebugConfig = registerOutput<TrainingJobRemoteDebugConfig?>('remoteDebugConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrainingJobRemoteDebugConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceConfig = registerOutput<TrainingJobResourceConfig?>('resourceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrainingJobResourceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    retryStrategy = registerOutput<TrainingJobRetryStrategy?>('retryStrategy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrainingJobRetryStrategy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    roleArn = registerOutput<String>('roleArn');
    serverlessJobConfig = registerOutput<TrainingJobServerlessJobConfig?>('serverlessJobConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrainingJobServerlessJobConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sessionChainingConfig = registerOutput<TrainingJobSessionChainingConfig?>('sessionChainingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrainingJobSessionChainingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    stoppingCondition = registerOutput<TrainingJobStoppingCondition?>('stoppingCondition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrainingJobStoppingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    tensorBoardOutputConfig = registerOutput<TrainingJobTensorBoardOutputConfig?>('tensorBoardOutputConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrainingJobTensorBoardOutputConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeouts = registerOutput<TrainingJobTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrainingJobTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    trainingJobName = registerOutput<String>('trainingJobName');
    vpcConfig = registerOutput<TrainingJobVpcConfig?>('vpcConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrainingJobVpcConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
