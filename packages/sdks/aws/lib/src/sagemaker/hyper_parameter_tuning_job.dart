import 'package:pulumi/pulumi.dart' as pulumi;
import 'hyper_parameter_tuning_job_args.dart';
import 'hyper_parameter_tuning_job_autotune.dart';
import 'hyper_parameter_tuning_job_config.dart';
import 'hyper_parameter_tuning_job_state.dart';
import 'hyper_parameter_tuning_job_timeouts.dart';
import 'hyper_parameter_tuning_job_training_job_definition.dart';
import 'hyper_parameter_tuning_job_warm_start_config.dart';

/// Manages an AWS SageMaker AI Hyper Parameter Tuning Job.
///
/// &gt; **NOTE:** This resource does not wait for the tuning job to complete before returning. Terraform may complete apply before the job reaches a terminal state.
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
/// const example = new aws.sagemaker.HyperParameterTuningJob("example", {
///     config: {
///         objective: {
///             metricName: "test:msd",
///             type: "Minimize",
///         },
///         parameterRanges: {
///             categoricalParameterRanges: [{
///                 name: "init_method",
///                 values: [
///                     "kmeans++",
///                     "random",
///                 ],
///             }],
///             integerParameterRanges: [
///                 {
///                     name: "epochs",
///                     minValue: "1",
///                     maxValue: "10",
///                     scalingType: "Auto",
///                 },
///                 {
///                     name: "extra_center_factor",
///                     minValue: "4",
///                     maxValue: "10",
///                     scalingType: "Auto",
///                 },
///                 {
///                     name: "mini_batch_size",
///                     minValue: "3000",
///                     maxValue: "15000",
///                     scalingType: "Auto",
///                 },
///             ],
///         },
///         resourceLimits: {
///             maxNumberOfTrainingJobs: 2,
///             maxParallelTrainingJobs: 1,
///         },
///         strategy: "Bayesian",
///     },
///     trainingJobDefinition: {
///         algorithmSpecification: {
///             trainingImage: "174872318107.dkr.ecr.us-west-2.amazonaws.com/kmeans:1",
///             trainingInputMode: "File",
///         },
///         outputDataConfig: {
///             s3OutputPath: "s3://example-bucket/output/",
///         },
///         resourceConfig: {
///             instanceCount: 1,
///             instanceType: "ml.m5.large",
///             volumeSizeInGb: 30,
///         },
///         stoppingCondition: {
///             maxRuntimeInSeconds: 3600,
///         },
///         inputDataConfigs: [
///             {
///                 dataSource: {
///                     s3DataSource: {
///                         s3DataType: "S3Prefix",
///                         s3Uri: "s3://example-bucket/input/",
///                     },
///                 },
///                 channelName: "train",
///                 contentType: "text/csv",
///                 inputMode: "File",
///             },
///             {
///                 dataSource: {
///                     s3DataSource: {
///                         s3DataType: "S3Prefix",
///                         s3Uri: "s3://example-bucket/input/",
///                     },
///                 },
///                 channelName: "test",
///                 contentType: "text/csv",
///                 inputMode: "File",
///             },
///         ],
///         roleArn: "arn:aws:iam::123456789012:role/example-sagemaker-execution-role",
///         staticHyperParameters: {
///             feature_dim: "3",
///             k: "2",
///         },
///     },
///     name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.HyperParameterTuningJob("example",
///     config={
///         "objective": {
///             "metric_name": "test:msd",
///             "type": "Minimize",
///         },
///         "parameter_ranges": {
///             "categorical_parameter_ranges": [{
///                 "name": "init_method",
///                 "values": [
///                     "kmeans++",
///                     "random",
///                 ],
///             }],
///             "integer_parameter_ranges": [
///                 {
///                     "name": "epochs",
///                     "min_value": "1",
///                     "max_value": "10",
///                     "scaling_type": "Auto",
///                 },
///                 {
///                     "name": "extra_center_factor",
///                     "min_value": "4",
///                     "max_value": "10",
///                     "scaling_type": "Auto",
///                 },
///                 {
///                     "name": "mini_batch_size",
///                     "min_value": "3000",
///                     "max_value": "15000",
///                     "scaling_type": "Auto",
///                 },
///             ],
///         },
///         "resource_limits": {
///             "max_number_of_training_jobs": 2,
///             "max_parallel_training_jobs": 1,
///         },
///         "strategy": "Bayesian",
///     },
///     training_job_definition={
///         "algorithm_specification": {
///             "training_image": "174872318107.dkr.ecr.us-west-2.amazonaws.com/kmeans:1",
///             "training_input_mode": "File",
///         },
///         "output_data_config": {
///             "s3_output_path": "s3://example-bucket/output/",
///         },
///         "resource_config": {
///             "instance_count": 1,
///             "instance_type": "ml.m5.large",
///             "volume_size_in_gb": 30,
///         },
///         "stopping_condition": {
///             "max_runtime_in_seconds": 3600,
///         },
///         "input_data_configs": [
///             {
///                 "data_source": {
///                     "s3_data_source": {
///                         "s3_data_type": "S3Prefix",
///                         "s3_uri": "s3://example-bucket/input/",
///                     },
///                 },
///                 "channel_name": "train",
///                 "content_type": "text/csv",
///                 "input_mode": "File",
///             },
///             {
///                 "data_source": {
///                     "s3_data_source": {
///                         "s3_data_type": "S3Prefix",
///                         "s3_uri": "s3://example-bucket/input/",
///                     },
///                 },
///                 "channel_name": "test",
///                 "content_type": "text/csv",
///                 "input_mode": "File",
///             },
///         ],
///         "role_arn": "arn:aws:iam::123456789012:role/example-sagemaker-execution-role",
///         "static_hyper_parameters": {
///             "feature_dim": "3",
///             "k": "2",
///         },
///     },
///     name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Sagemaker.HyperParameterTuningJob("example", new()
///     {
///         Config = new Aws.Sagemaker.Inputs.HyperParameterTuningJobConfigArgs
///         {
///             Objective = new Aws.Sagemaker.Inputs.HyperParameterTuningJobConfigObjectiveArgs
///             {
///                 MetricName = "test:msd",
///                 Type = "Minimize",
///             },
///             ParameterRanges = new Aws.Sagemaker.Inputs.HyperParameterTuningJobConfigParameterRangesArgs
///             {
///                 CategoricalParameterRanges = new[]
///                 {
///                     new Aws.Sagemaker.Inputs.HyperParameterTuningJobConfigParameterRangesCategoricalParameterRangeArgs
///                     {
///                         Name = "init_method",
///                         Values = new[]
///                         {
///                             "kmeans++",
///                             "random",
///                         },
///                     },
///                 },
///                 IntegerParameterRanges = new[]
///                 {
///                     new Aws.Sagemaker.Inputs.HyperParameterTuningJobConfigParameterRangesIntegerParameterRangeArgs
///                     {
///                         Name = "epochs",
///                         MinValue = "1",
///                         MaxValue = "10",
///                         ScalingType = "Auto",
///                     },
///                     new Aws.Sagemaker.Inputs.HyperParameterTuningJobConfigParameterRangesIntegerParameterRangeArgs
///                     {
///                         Name = "extra_center_factor",
///                         MinValue = "4",
///                         MaxValue = "10",
///                         ScalingType = "Auto",
///                     },
///                     new Aws.Sagemaker.Inputs.HyperParameterTuningJobConfigParameterRangesIntegerParameterRangeArgs
///                     {
///                         Name = "mini_batch_size",
///                         MinValue = "3000",
///                         MaxValue = "15000",
///                         ScalingType = "Auto",
///                     },
///                 },
///             },
///             ResourceLimits = new Aws.Sagemaker.Inputs.HyperParameterTuningJobConfigResourceLimitsArgs
///             {
///                 MaxNumberOfTrainingJobs = 2,
///                 MaxParallelTrainingJobs = 1,
///             },
///             Strategy = "Bayesian",
///         },
///         TrainingJobDefinition = new Aws.Sagemaker.Inputs.HyperParameterTuningJobTrainingJobDefinitionArgs
///         {
///             AlgorithmSpecification = new Aws.Sagemaker.Inputs.HyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecificationArgs
///             {
///                 TrainingImage = "174872318107.dkr.ecr.us-west-2.amazonaws.com/kmeans:1",
///                 TrainingInputMode = "File",
///             },
///             OutputDataConfig = new Aws.Sagemaker.Inputs.HyperParameterTuningJobTrainingJobDefinitionOutputDataConfigArgs
///             {
///                 S3OutputPath = "s3://example-bucket/output/",
///             },
///             ResourceConfig = new Aws.Sagemaker.Inputs.HyperParameterTuningJobTrainingJobDefinitionResourceConfigArgs
///             {
///                 InstanceCount = 1,
///                 InstanceType = "ml.m5.large",
///                 VolumeSizeInGb = 30,
///             },
///             StoppingCondition = new Aws.Sagemaker.Inputs.HyperParameterTuningJobTrainingJobDefinitionStoppingConditionArgs
///             {
///                 MaxRuntimeInSeconds = 3600,
///             },
///             InputDataConfigs = new[]
///             {
///                 new Aws.Sagemaker.Inputs.HyperParameterTuningJobTrainingJobDefinitionInputDataConfigArgs
///                 {
///                     DataSource = new Aws.Sagemaker.Inputs.HyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceArgs
///                     {
///                         S3DataSource = new Aws.Sagemaker.Inputs.HyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceArgs
///                         {
///                             S3DataType = "S3Prefix",
///                             S3Uri = "s3://example-bucket/input/",
///                         },
///                     },
///                     ChannelName = "train",
///                     ContentType = "text/csv",
///                     InputMode = "File",
///                 },
///                 new Aws.Sagemaker.Inputs.HyperParameterTuningJobTrainingJobDefinitionInputDataConfigArgs
///                 {
///                     DataSource = new Aws.Sagemaker.Inputs.HyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceArgs
///                     {
///                         S3DataSource = new Aws.Sagemaker.Inputs.HyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceArgs
///                         {
///                             S3DataType = "S3Prefix",
///                             S3Uri = "s3://example-bucket/input/",
///                         },
///                     },
///                     ChannelName = "test",
///                     ContentType = "text/csv",
///                     InputMode = "File",
///                 },
///             },
///             RoleArn = "arn:aws:iam::123456789012:role/example-sagemaker-execution-role",
///             StaticHyperParameters =
///             {
///                 { "feature_dim", "3" },
///                 { "k", "2" },
///             },
///         },
///         Name = "example",
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
/// 		_, err := sagemaker.NewHyperParameterTuningJob(ctx, "example", &sagemaker.HyperParameterTuningJobArgs{
/// 			Config: &sagemaker.HyperParameterTuningJobConfigArgs{
/// 				Objective: &sagemaker.HyperParameterTuningJobConfigObjectiveArgs{
/// 					MetricName: pulumi.String("test:msd"),
/// 					Type:       pulumi.String("Minimize"),
/// 				},
/// 				ParameterRanges: &sagemaker.HyperParameterTuningJobConfigParameterRangesArgs{
/// 					CategoricalParameterRanges: sagemaker.HyperParameterTuningJobConfigParameterRangesCategoricalParameterRangeArray{
/// 						&sagemaker.HyperParameterTuningJobConfigParameterRangesCategoricalParameterRangeArgs{
/// 							Name: pulumi.String("init_method"),
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("kmeans++"),
/// 								pulumi.String("random"),
/// 							},
/// 						},
/// 					},
/// 					IntegerParameterRanges: sagemaker.HyperParameterTuningJobConfigParameterRangesIntegerParameterRangeArray{
/// 						&sagemaker.HyperParameterTuningJobConfigParameterRangesIntegerParameterRangeArgs{
/// 							Name:        pulumi.String("epochs"),
/// 							MinValue:    pulumi.String("1"),
/// 							MaxValue:    pulumi.String("10"),
/// 							ScalingType: pulumi.String("Auto"),
/// 						},
/// 						&sagemaker.HyperParameterTuningJobConfigParameterRangesIntegerParameterRangeArgs{
/// 							Name:        pulumi.String("extra_center_factor"),
/// 							MinValue:    pulumi.String("4"),
/// 							MaxValue:    pulumi.String("10"),
/// 							ScalingType: pulumi.String("Auto"),
/// 						},
/// 						&sagemaker.HyperParameterTuningJobConfigParameterRangesIntegerParameterRangeArgs{
/// 							Name:        pulumi.String("mini_batch_size"),
/// 							MinValue:    pulumi.String("3000"),
/// 							MaxValue:    pulumi.String("15000"),
/// 							ScalingType: pulumi.String("Auto"),
/// 						},
/// 					},
/// 				},
/// 				ResourceLimits: &sagemaker.HyperParameterTuningJobConfigResourceLimitsArgs{
/// 					MaxNumberOfTrainingJobs: pulumi.Int(2),
/// 					MaxParallelTrainingJobs: pulumi.Int(1),
/// 				},
/// 				Strategy: pulumi.String("Bayesian"),
/// 			},
/// 			TrainingJobDefinition: &sagemaker.HyperParameterTuningJobTrainingJobDefinitionArgs{
/// 				AlgorithmSpecification: &sagemaker.HyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecificationArgs{
/// 					TrainingImage:     pulumi.String("174872318107.dkr.ecr.us-west-2.amazonaws.com/kmeans:1"),
/// 					TrainingInputMode: pulumi.String("File"),
/// 				},
/// 				OutputDataConfig: &sagemaker.HyperParameterTuningJobTrainingJobDefinitionOutputDataConfigArgs{
/// 					S3OutputPath: pulumi.String("s3://example-bucket/output/"),
/// 				},
/// 				ResourceConfig: &sagemaker.HyperParameterTuningJobTrainingJobDefinitionResourceConfigArgs{
/// 					InstanceCount:  pulumi.Int(1),
/// 					InstanceType:   pulumi.String("ml.m5.large"),
/// 					VolumeSizeInGb: pulumi.Int(30),
/// 				},
/// 				StoppingCondition: &sagemaker.HyperParameterTuningJobTrainingJobDefinitionStoppingConditionArgs{
/// 					MaxRuntimeInSeconds: pulumi.Int(3600),
/// 				},
/// 				InputDataConfigs: sagemaker.HyperParameterTuningJobTrainingJobDefinitionInputDataConfigArray{
/// 					&sagemaker.HyperParameterTuningJobTrainingJobDefinitionInputDataConfigArgs{
/// 						DataSource: &sagemaker.HyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceArgs{
/// 							S3DataSource: &sagemaker.HyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceArgs{
/// 								S3DataType: pulumi.String("S3Prefix"),
/// 								S3Uri:      pulumi.String("s3://example-bucket/input/"),
/// 							},
/// 						},
/// 						ChannelName: pulumi.String("train"),
/// 						ContentType: pulumi.String("text/csv"),
/// 						InputMode:   pulumi.String("File"),
/// 					},
/// 					&sagemaker.HyperParameterTuningJobTrainingJobDefinitionInputDataConfigArgs{
/// 						DataSource: &sagemaker.HyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceArgs{
/// 							S3DataSource: &sagemaker.HyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceArgs{
/// 								S3DataType: pulumi.String("S3Prefix"),
/// 								S3Uri:      pulumi.String("s3://example-bucket/input/"),
/// 							},
/// 						},
/// 						ChannelName: pulumi.String("test"),
/// 						ContentType: pulumi.String("text/csv"),
/// 						InputMode:   pulumi.String("File"),
/// 					},
/// 				},
/// 				RoleArn: pulumi.String("arn:aws:iam::123456789012:role/example-sagemaker-execution-role"),
/// 				StaticHyperParameters: pulumi.StringMap{
/// 					"feature_dim": pulumi.String("3"),
/// 					"k":           pulumi.String("2"),
/// 				},
/// 			},
/// 			Name: pulumi.String("example"),
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
/// resource "aws_sagemaker_hyperparametertuningjob" "example" {
///   config = {
///     objective = {
///       metric_name = "test:msd"
///       type        = "Minimize"
///     }
///     parameter_ranges = {
///       categorical_parameter_ranges = [{
///         "name"   = "init_method"
///         "values" = ["kmeans++", "random"]
///       }]
///       integer_parameter_ranges = [{
///         "name"        = "epochs"
///         "minValue"    = "1"
///         "maxValue"    = "10"
///         "scalingType" = "Auto"
///         }, {
///         "name"        = "extra_center_factor"
///         "minValue"    = "4"
///         "maxValue"    = "10"
///         "scalingType" = "Auto"
///         }, {
///         "name"        = "mini_batch_size"
///         "minValue"    = "3000"
///         "maxValue"    = "15000"
///         "scalingType" = "Auto"
///       }]
///     }
///     resource_limits = {
///       max_number_of_training_jobs = 2
///       max_parallel_training_jobs  = 1
///     }
///     strategy = "Bayesian"
///   }
///   training_job_definition = {
///     algorithm_specification = {
///       training_image      = "174872318107.dkr.ecr.us-west-2.amazonaws.com/kmeans:1"
///       training_input_mode = "File"
///     }
///     output_data_config = {
///       s3_output_path = "s3://example-bucket/output/"
///     }
///     resource_config = {
///       instance_count    = 1
///       instance_type     = "ml.m5.large"
///       volume_size_in_gb = 30
///     }
///     stopping_condition = {
///       max_runtime_in_seconds = 3600
///     }
///     input_data_configs = [{
///       "dataSource" = {
///         "s3DataSource" = {
///           "s3DataType" = "S3Prefix"
///           "s3Uri"      = "s3://example-bucket/input/"
///         }
///       }
///       "channelName" = "train"
///       "contentType" = "text/csv"
///       "inputMode"   = "File"
///       }, {
///       "dataSource" = {
///         "s3DataSource" = {
///           "s3DataType" = "S3Prefix"
///           "s3Uri"      = "s3://example-bucket/input/"
///         }
///       }
///       "channelName" = "test"
///       "contentType" = "text/csv"
///       "inputMode"   = "File"
///     }]
///     role_arn = "arn:aws:iam::123456789012:role/example-sagemaker-execution-role"
///     static_hyper_parameters = {
///       "feature_dim" = "3"
///       "k"           = "2"
///     }
///   }
///   name = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sagemaker.HyperParameterTuningJob;
/// import com.pulumi.aws.sagemaker.HyperParameterTuningJobArgs;
/// import com.pulumi.aws.sagemaker.inputs.HyperParameterTuningJobConfigArgs;
/// import com.pulumi.aws.sagemaker.inputs.HyperParameterTuningJobConfigObjectiveArgs;
/// import com.pulumi.aws.sagemaker.inputs.HyperParameterTuningJobConfigParameterRangesArgs;
/// import com.pulumi.aws.sagemaker.inputs.HyperParameterTuningJobConfigParameterRangesCategoricalParameterRangeArgs;
/// import com.pulumi.aws.sagemaker.inputs.HyperParameterTuningJobConfigParameterRangesIntegerParameterRangeArgs;
/// import com.pulumi.aws.sagemaker.inputs.HyperParameterTuningJobConfigResourceLimitsArgs;
/// import com.pulumi.aws.sagemaker.inputs.HyperParameterTuningJobTrainingJobDefinitionArgs;
/// import com.pulumi.aws.sagemaker.inputs.HyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecificationArgs;
/// import com.pulumi.aws.sagemaker.inputs.HyperParameterTuningJobTrainingJobDefinitionOutputDataConfigArgs;
/// import com.pulumi.aws.sagemaker.inputs.HyperParameterTuningJobTrainingJobDefinitionResourceConfigArgs;
/// import com.pulumi.aws.sagemaker.inputs.HyperParameterTuningJobTrainingJobDefinitionStoppingConditionArgs;
/// import com.pulumi.aws.sagemaker.inputs.HyperParameterTuningJobTrainingJobDefinitionInputDataConfigArgs;
/// import com.pulumi.aws.sagemaker.inputs.HyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceArgs;
/// import com.pulumi.aws.sagemaker.inputs.HyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceArgs;
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
///         var example = new HyperParameterTuningJob("example", HyperParameterTuningJobArgs.builder()
///             .config(HyperParameterTuningJobConfigArgs.builder()
///                 .objective(HyperParameterTuningJobConfigObjectiveArgs.builder()
///                     .metricName("test:msd")
///                     .type("Minimize")
///                     .build())
///                 .parameterRanges(HyperParameterTuningJobConfigParameterRangesArgs.builder()
///                     .categoricalParameterRanges(HyperParameterTuningJobConfigParameterRangesCategoricalParameterRangeArgs.builder()
///                         .name("init_method")
///                         .values(
///                             "kmeans++",
///                             "random")
///                         .build())
///                     .integerParameterRanges(
///                         HyperParameterTuningJobConfigParameterRangesIntegerParameterRangeArgs.builder()
///                             .name("epochs")
///                             .minValue("1")
///                             .maxValue("10")
///                             .scalingType("Auto")
///                             .build(),
///                         HyperParameterTuningJobConfigParameterRangesIntegerParameterRangeArgs.builder()
///                             .name("extra_center_factor")
///                             .minValue("4")
///                             .maxValue("10")
///                             .scalingType("Auto")
///                             .build(),
///                         HyperParameterTuningJobConfigParameterRangesIntegerParameterRangeArgs.builder()
///                             .name("mini_batch_size")
///                             .minValue("3000")
///                             .maxValue("15000")
///                             .scalingType("Auto")
///                             .build())
///                     .build())
///                 .resourceLimits(HyperParameterTuningJobConfigResourceLimitsArgs.builder()
///                     .maxNumberOfTrainingJobs(2)
///                     .maxParallelTrainingJobs(1)
///                     .build())
///                 .strategy("Bayesian")
///                 .build())
///             .trainingJobDefinition(HyperParameterTuningJobTrainingJobDefinitionArgs.builder()
///                 .algorithmSpecification(HyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecificationArgs.builder()
///                     .trainingImage("174872318107.dkr.ecr.us-west-2.amazonaws.com/kmeans:1")
///                     .trainingInputMode("File")
///                     .build())
///                 .outputDataConfig(HyperParameterTuningJobTrainingJobDefinitionOutputDataConfigArgs.builder()
///                     .s3OutputPath("s3://example-bucket/output/")
///                     .build())
///                 .resourceConfig(HyperParameterTuningJobTrainingJobDefinitionResourceConfigArgs.builder()
///                     .instanceCount(1)
///                     .instanceType("ml.m5.large")
///                     .volumeSizeInGb(30)
///                     .build())
///                 .stoppingCondition(HyperParameterTuningJobTrainingJobDefinitionStoppingConditionArgs.builder()
///                     .maxRuntimeInSeconds(3600)
///                     .build())
///                 .inputDataConfigs(
///                     HyperParameterTuningJobTrainingJobDefinitionInputDataConfigArgs.builder()
///                         .dataSource(HyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceArgs.builder()
///                             .s3DataSource(HyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceArgs.builder()
///                                 .s3DataType("S3Prefix")
///                                 .s3Uri("s3://example-bucket/input/")
///                                 .build())
///                             .build())
///                         .channelName("train")
///                         .contentType("text/csv")
///                         .inputMode("File")
///                         .build(),
///                     HyperParameterTuningJobTrainingJobDefinitionInputDataConfigArgs.builder()
///                         .dataSource(HyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceArgs.builder()
///                             .s3DataSource(HyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceArgs.builder()
///                                 .s3DataType("S3Prefix")
///                                 .s3Uri("s3://example-bucket/input/")
///                                 .build())
///                             .build())
///                         .channelName("test")
///                         .contentType("text/csv")
///                         .inputMode("File")
///                         .build())
///                 .roleArn("arn:aws:iam::123456789012:role/example-sagemaker-execution-role")
///                 .staticHyperParameters(Map.ofEntries(
///                     Map.entry("feature_dim", "3"),
///                     Map.entry("k", "2")
///                 ))
///                 .build())
///             .name("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sagemaker:HyperParameterTuningJob
///     properties:
///       config:
///         objective:
///           metricName: test:msd
///           type: Minimize
///         parameterRanges:
///           categoricalParameterRanges:
///             - name: init_method
///               values:
///                 - kmeans++
///                 - random
///           integerParameterRanges:
///             - name: epochs
///               minValue: '1'
///               maxValue: '10'
///               scalingType: Auto
///             - name: extra_center_factor
///               minValue: '4'
///               maxValue: '10'
///               scalingType: Auto
///             - name: mini_batch_size
///               minValue: '3000'
///               maxValue: '15000'
///               scalingType: Auto
///         resourceLimits:
///           maxNumberOfTrainingJobs: 2
///           maxParallelTrainingJobs: 1
///         strategy: Bayesian
///       trainingJobDefinition:
///         algorithmSpecification:
///           trainingImage: 174872318107.dkr.ecr.us-west-2.amazonaws.com/kmeans:1
///           trainingInputMode: File
///         outputDataConfig:
///           s3OutputPath: s3://example-bucket/output/
///         resourceConfig:
///           instanceCount: 1
///           instanceType: ml.m5.large
///           volumeSizeInGb: 30
///         stoppingCondition:
///           maxRuntimeInSeconds: 3600
///         inputDataConfigs:
///           - dataSource:
///               s3DataSource:
///                 s3DataType: S3Prefix
///                 s3Uri: s3://example-bucket/input/
///             channelName: train
///             contentType: text/csv
///             inputMode: File
///           - dataSource:
///               s3DataSource:
///                 s3DataType: S3Prefix
///                 s3Uri: s3://example-bucket/input/
///             channelName: test
///             contentType: text/csv
///             inputMode: File
///         roleArn: arn:aws:iam::123456789012:role/example-sagemaker-execution-role
///         staticHyperParameters:
///           feature_dim: '3'
///           k: '2'
///       name: example
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `name` (String) Name of the Hyper Parameter Tuning Job.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import SageMaker AI Hyper Parameter Tuning Jobs using `name`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/hyperParameterTuningJob:HyperParameterTuningJob example example-hyper-parameter-tuning-job
/// ```
class HyperParameterTuningJob extends pulumi.CustomResource {
  /// ARN of the Hyper Parameter Tuning Job.
  late final pulumi.Output<String> arn;
  /// Autotune settings. See `autotune`.
  late final pulumi.Output<HyperParameterTuningJobAutotune?> autotune;
  /// Tuning job settings. See `config`.
  late final pulumi.Output<HyperParameterTuningJobConfig> config;
  /// Reason returned by SageMaker AI when a job fails.
  late final pulumi.Output<String> failureReason;
  /// Name of the tuning job.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Current tuning job status.
  late final pulumi.Output<String> status;
  /// Map of tags to assign to this resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<HyperParameterTuningJobTimeouts?> timeouts;
  /// Single training job definition for tuning. See `trainingJobDefinition`.
  late final pulumi.Output<HyperParameterTuningJobTrainingJobDefinition?> trainingJobDefinition;
  /// Multiple training job definitions for tuning. See `trainingJobDefinition`.
  late final pulumi.Output<List<HyperParameterTuningJobTrainingJobDefinition>?> trainingJobDefinitions;
  /// Warm start settings. See `warmStartConfig`.
  late final pulumi.Output<HyperParameterTuningJobWarmStartConfig?> warmStartConfig;

  /// Creates a new [HyperParameterTuningJob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HyperParameterTuningJob]. {@macro pulumi_sagemaker_hyper_parameter_tuning_job_hyper_parameter_tuning_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HyperParameterTuningJob(
    String name, {
    HyperParameterTuningJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/hyperParameterTuningJob:HyperParameterTuningJob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    autotune = registerOutput<HyperParameterTuningJobAutotune?>('autotune', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HyperParameterTuningJobAutotune.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    config = registerOutput<HyperParameterTuningJobConfig>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HyperParameterTuningJobConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    failureReason = registerOutput<String>('failureReason');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<HyperParameterTuningJobTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HyperParameterTuningJobTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    trainingJobDefinition = registerOutput<HyperParameterTuningJobTrainingJobDefinition?>('trainingJobDefinition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HyperParameterTuningJobTrainingJobDefinition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    trainingJobDefinitions = registerOutput<List<HyperParameterTuningJobTrainingJobDefinition>?>('trainingJobDefinitions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<HyperParameterTuningJobTrainingJobDefinition>(guardedValue, (value) => HyperParameterTuningJobTrainingJobDefinition.fromMap((value as Map).cast<String, dynamic>())); });
    warmStartConfig = registerOutput<HyperParameterTuningJobWarmStartConfig?>('warmStartConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HyperParameterTuningJobWarmStartConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [HyperParameterTuningJob] resource's state with the given [name] and [id].
  static HyperParameterTuningJob get(
    String name,
    pulumi.Input<String> id, {
    HyperParameterTuningJobState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return HyperParameterTuningJob._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  HyperParameterTuningJob._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/hyperParameterTuningJob:HyperParameterTuningJob',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    autotune = registerOutput<HyperParameterTuningJobAutotune?>('autotune', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HyperParameterTuningJobAutotune.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    config = registerOutput<HyperParameterTuningJobConfig>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HyperParameterTuningJobConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    failureReason = registerOutput<String>('failureReason');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<HyperParameterTuningJobTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HyperParameterTuningJobTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    trainingJobDefinition = registerOutput<HyperParameterTuningJobTrainingJobDefinition?>('trainingJobDefinition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HyperParameterTuningJobTrainingJobDefinition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    trainingJobDefinitions = registerOutput<List<HyperParameterTuningJobTrainingJobDefinition>?>('trainingJobDefinitions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<HyperParameterTuningJobTrainingJobDefinition>(guardedValue, (value) => HyperParameterTuningJobTrainingJobDefinition.fromMap((value as Map).cast<String, dynamic>())); });
    warmStartConfig = registerOutput<HyperParameterTuningJobWarmStartConfig?>('warmStartConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HyperParameterTuningJobWarmStartConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [HyperParameterTuningJob] resource.
  HyperParameterTuningJob.reference(String urn)
    : super(
        'aws:sagemaker/hyperParameterTuningJob:HyperParameterTuningJob',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    autotune = registerOutput<HyperParameterTuningJobAutotune?>('autotune', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HyperParameterTuningJobAutotune.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    config = registerOutput<HyperParameterTuningJobConfig>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HyperParameterTuningJobConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    failureReason = registerOutput<String>('failureReason');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<HyperParameterTuningJobTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HyperParameterTuningJobTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    trainingJobDefinition = registerOutput<HyperParameterTuningJobTrainingJobDefinition?>('trainingJobDefinition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HyperParameterTuningJobTrainingJobDefinition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    trainingJobDefinitions = registerOutput<List<HyperParameterTuningJobTrainingJobDefinition>?>('trainingJobDefinitions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<HyperParameterTuningJobTrainingJobDefinition>(guardedValue, (value) => HyperParameterTuningJobTrainingJobDefinition.fromMap((value as Map).cast<String, dynamic>())); });
    warmStartConfig = registerOutput<HyperParameterTuningJobWarmStartConfig?>('warmStartConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HyperParameterTuningJobWarmStartConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
