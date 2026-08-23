import 'package:pulumi/pulumi.dart' as pulumi;
import 'algorithm_args.dart';
import 'algorithm_inference_specification.dart';
import 'algorithm_state.dart';
import 'algorithm_timeouts.dart';
import 'algorithm_training_specification.dart';
import 'algorithm_validation_specification.dart';

/// Manages an AWS SageMaker AI Algorithm.
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
/// const example = new aws.sagemaker.Algorithm("example", {
///     algorithmName: "example-algorithm",
///     trainingSpecification: {
///         supportedTrainingInstanceTypes: ["ml.m5.large"],
///         trainingImage: "123456789012.dkr.ecr.us-west-2.amazonaws.com/example-training:latest",
///         trainingChannels: [{
///             name: "train",
///             supportedContentTypes: ["text/csv"],
///             supportedInputModes: ["File"],
///         }],
///     },
///     tags: {
///         Environment: "test",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.Algorithm("example",
///     algorithm_name="example-algorithm",
///     training_specification={
///         "supported_training_instance_types": ["ml.m5.large"],
///         "training_image": "123456789012.dkr.ecr.us-west-2.amazonaws.com/example-training:latest",
///         "training_channels": [{
///             "name": "train",
///             "supported_content_types": ["text/csv"],
///             "supported_input_modes": ["File"],
///         }],
///     },
///     tags={
///         "Environment": "test",
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
///     var example = new Aws.Sagemaker.Algorithm("example", new()
///     {
///         AlgorithmName = "example-algorithm",
///         TrainingSpecification = new Aws.Sagemaker.Inputs.AlgorithmTrainingSpecificationArgs
///         {
///             SupportedTrainingInstanceTypes = new[]
///             {
///                 "ml.m5.large",
///             },
///             TrainingImage = "123456789012.dkr.ecr.us-west-2.amazonaws.com/example-training:latest",
///             TrainingChannels = new[]
///             {
///                 new Aws.Sagemaker.Inputs.AlgorithmTrainingSpecificationTrainingChannelArgs
///                 {
///                     Name = "train",
///                     SupportedContentTypes = new[]
///                     {
///                         "text/csv",
///                     },
///                     SupportedInputModes = new[]
///                     {
///                         "File",
///                     },
///                 },
///             },
///         },
///         Tags =
///         {
///             { "Environment", "test" },
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
/// 		_, err := sagemaker.NewAlgorithm(ctx, "example", &sagemaker.AlgorithmArgs{
/// 			AlgorithmName: pulumi.String("example-algorithm"),
/// 			TrainingSpecification: &sagemaker.AlgorithmTrainingSpecificationArgs{
/// 				SupportedTrainingInstanceTypes: pulumi.StringArray{
/// 					pulumi.String("ml.m5.large"),
/// 				},
/// 				TrainingImage: pulumi.String("123456789012.dkr.ecr.us-west-2.amazonaws.com/example-training:latest"),
/// 				TrainingChannels: sagemaker.AlgorithmTrainingSpecificationTrainingChannelArray{
/// 					&sagemaker.AlgorithmTrainingSpecificationTrainingChannelArgs{
/// 						Name: pulumi.String("train"),
/// 						SupportedContentTypes: pulumi.StringArray{
/// 							pulumi.String("text/csv"),
/// 						},
/// 						SupportedInputModes: pulumi.StringArray{
/// 							pulumi.String("File"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("test"),
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
/// resource "aws_sagemaker_algorithm" "example" {
///   algorithm_name = "example-algorithm"
///   training_specification = {
///     supported_training_instance_types = ["ml.m5.large"]
///     training_image                    = "123456789012.dkr.ecr.us-west-2.amazonaws.com/example-training:latest"
///     training_channels = [{
///       "name"                  = "train"
///       "supportedContentTypes" = ["text/csv"]
///       "supportedInputModes"   = ["File"]
///     }]
///   }
///   tags = {
///     "Environment" = "test"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sagemaker.Algorithm;
/// import com.pulumi.aws.sagemaker.AlgorithmArgs;
/// import com.pulumi.aws.sagemaker.inputs.AlgorithmTrainingSpecificationArgs;
/// import com.pulumi.aws.sagemaker.inputs.AlgorithmTrainingSpecificationTrainingChannelArgs;
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
///         var example = new Algorithm("example", AlgorithmArgs.builder()
///             .algorithmName("example-algorithm")
///             .trainingSpecification(AlgorithmTrainingSpecificationArgs.builder()
///                 .supportedTrainingInstanceTypes("ml.m5.large")
///                 .trainingImage("123456789012.dkr.ecr.us-west-2.amazonaws.com/example-training:latest")
///                 .trainingChannels(AlgorithmTrainingSpecificationTrainingChannelArgs.builder()
///                     .name("train")
///                     .supportedContentTypes("text/csv")
///                     .supportedInputModes("File")
///                     .build())
///                 .build())
///             .tags(Map.of("Environment", "test"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sagemaker:Algorithm
///     properties:
///       algorithmName: example-algorithm
///       trainingSpecification:
///         supportedTrainingInstanceTypes:
///           - ml.m5.large
///         trainingImage: 123456789012.dkr.ecr.us-west-2.amazonaws.com/example-training:latest
///         trainingChannels:
///           - name: train
///             supportedContentTypes:
///               - text/csv
///             supportedInputModes:
///               - File
///       tags:
///         Environment: test
/// ```
///
///
/// ### Training Specification
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.sagemaker.getPrebuiltEcrImage({
///     repositoryName: "linear-learner",
///     imageTag: "1",
/// });
/// const exampleAlgorithm = new aws.sagemaker.Algorithm("example", {
///     algorithmName: "example-training-algorithm",
///     trainingSpecification: {
///         supportedTrainingInstanceTypes: [
///             "ml.m5.large",
///             "ml.c5.xlarge",
///         ],
///         supportsDistributedTraining: true,
///         trainingImage: example.then(example => example.registryPath),
///         metricDefinitions: [{
///             name: "train:loss",
///             regex: "loss=(.*?);",
///         }],
///         supportedHyperParameters: [
///             {
///                 defaultValue: "0.5",
///                 description: "Continuous learning rate",
///                 isRequired: true,
///                 isTunable: true,
///                 name: "eta",
///                 type: "Continuous",
///                 range: {
///                     continuousParameterRangeSpecification: {
///                         minValue: "0.1",
///                         maxValue: "0.9",
///                     },
///                 },
///             },
///             {
///                 defaultValue: "5",
///                 description: "Maximum tree depth",
///                 isRequired: false,
///                 isTunable: true,
///                 name: "max_depth",
///                 type: "Integer",
///                 range: {
///                     integerParameterRangeSpecification: {
///                         minValue: "1",
///                         maxValue: "10",
///                     },
///                 },
///             },
///             {
///                 defaultValue: "reg:squarederror",
///                 description: "Objective function",
///                 isRequired: false,
///                 isTunable: false,
///                 name: "objective",
///                 type: "Categorical",
///                 range: {
///                     categoricalParameterRangeSpecification: {
///                         values: [
///                             "reg:squarederror",
///                             "binary:logistic",
///                         ],
///                     },
///                 },
///             },
///         ],
///         supportedTuningJobObjectiveMetrics: [{
///             metricName: "train:loss",
///             type: "Minimize",
///         }],
///         trainingChannels: [
///             {
///                 description: "Training data channel",
///                 isRequired: true,
///                 name: "train",
///                 supportedCompressionTypes: [
///                     "None",
///                     "Gzip",
///                 ],
///                 supportedContentTypes: ["text/csv"],
///                 supportedInputModes: ["File"],
///             },
///             {
///                 name: "validation",
///                 supportedContentTypes: ["application/json"],
///                 supportedInputModes: ["Pipe"],
///             },
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.get_prebuilt_ecr_image(repository_name="linear-learner",
///     image_tag="1")
/// example_algorithm = aws.sagemaker.Algorithm("example",
///     algorithm_name="example-training-algorithm",
///     training_specification={
///         "supported_training_instance_types": [
///             "ml.m5.large",
///             "ml.c5.xlarge",
///         ],
///         "supports_distributed_training": True,
///         "training_image": example.registry_path,
///         "metric_definitions": [{
///             "name": "train:loss",
///             "regex": "loss=(.*?);",
///         }],
///         "supported_hyper_parameters": [
///             {
///                 "default_value": "0.5",
///                 "description": "Continuous learning rate",
///                 "is_required": True,
///                 "is_tunable": True,
///                 "name": "eta",
///                 "type": "Continuous",
///                 "range": {
///                     "continuous_parameter_range_specification": {
///                         "min_value": "0.1",
///                         "max_value": "0.9",
///                     },
///                 },
///             },
///             {
///                 "default_value": "5",
///                 "description": "Maximum tree depth",
///                 "is_required": False,
///                 "is_tunable": True,
///                 "name": "max_depth",
///                 "type": "Integer",
///                 "range": {
///                     "integer_parameter_range_specification": {
///                         "min_value": "1",
///                         "max_value": "10",
///                     },
///                 },
///             },
///             {
///                 "default_value": "reg:squarederror",
///                 "description": "Objective function",
///                 "is_required": False,
///                 "is_tunable": False,
///                 "name": "objective",
///                 "type": "Categorical",
///                 "range": {
///                     "categorical_parameter_range_specification": {
///                         "values": [
///                             "reg:squarederror",
///                             "binary:logistic",
///                         ],
///                     },
///                 },
///             },
///         ],
///         "supported_tuning_job_objective_metrics": [{
///             "metric_name": "train:loss",
///             "type": "Minimize",
///         }],
///         "training_channels": [
///             {
///                 "description": "Training data channel",
///                 "is_required": True,
///                 "name": "train",
///                 "supported_compression_types": [
///                     "None",
///                     "Gzip",
///                 ],
///                 "supported_content_types": ["text/csv"],
///                 "supported_input_modes": ["File"],
///             },
///             {
///                 "name": "validation",
///                 "supported_content_types": ["application/json"],
///                 "supported_input_modes": ["Pipe"],
///             },
///         ],
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
///     var example = Aws.Sagemaker.GetPrebuiltEcrImage.Invoke(new()
///     {
///         RepositoryName = "linear-learner",
///         ImageTag = "1",
///     });
///
///     var exampleAlgorithm = new Aws.Sagemaker.Algorithm("example", new()
///     {
///         AlgorithmName = "example-training-algorithm",
///         TrainingSpecification = new Aws.Sagemaker.Inputs.AlgorithmTrainingSpecificationArgs
///         {
///             SupportedTrainingInstanceTypes = new[]
///             {
///                 "ml.m5.large",
///                 "ml.c5.xlarge",
///             },
///             SupportsDistributedTraining = true,
///             TrainingImage = example.Apply(getPrebuiltEcrImageResult => getPrebuiltEcrImageResult.RegistryPath),
///             MetricDefinitions = new[]
///             {
///                 new Aws.Sagemaker.Inputs.AlgorithmTrainingSpecificationMetricDefinitionArgs
///                 {
///                     Name = "train:loss",
///                     Regex = "loss=(.*?);",
///                 },
///             },
///             SupportedHyperParameters = new[]
///             {
///                 new Aws.Sagemaker.Inputs.AlgorithmTrainingSpecificationSupportedHyperParameterArgs
///                 {
///                     DefaultValue = "0.5",
///                     Description = "Continuous learning rate",
///                     IsRequired = true,
///                     IsTunable = true,
///                     Name = "eta",
///                     Type = "Continuous",
///                     Range = new Aws.Sagemaker.Inputs.AlgorithmTrainingSpecificationSupportedHyperParameterRangeArgs
///                     {
///                         ContinuousParameterRangeSpecification = new Aws.Sagemaker.Inputs.AlgorithmTrainingSpecificationSupportedHyperParameterRangeContinuousParameterRangeSpecificationArgs
///                         {
///                             MinValue = "0.1",
///                             MaxValue = "0.9",
///                         },
///                     },
///                 },
///                 new Aws.Sagemaker.Inputs.AlgorithmTrainingSpecificationSupportedHyperParameterArgs
///                 {
///                     DefaultValue = "5",
///                     Description = "Maximum tree depth",
///                     IsRequired = false,
///                     IsTunable = true,
///                     Name = "max_depth",
///                     Type = "Integer",
///                     Range = new Aws.Sagemaker.Inputs.AlgorithmTrainingSpecificationSupportedHyperParameterRangeArgs
///                     {
///                         IntegerParameterRangeSpecification = new Aws.Sagemaker.Inputs.AlgorithmTrainingSpecificationSupportedHyperParameterRangeIntegerParameterRangeSpecificationArgs
///                         {
///                             MinValue = "1",
///                             MaxValue = "10",
///                         },
///                     },
///                 },
///                 new Aws.Sagemaker.Inputs.AlgorithmTrainingSpecificationSupportedHyperParameterArgs
///                 {
///                     DefaultValue = "reg:squarederror",
///                     Description = "Objective function",
///                     IsRequired = false,
///                     IsTunable = false,
///                     Name = "objective",
///                     Type = "Categorical",
///                     Range = new Aws.Sagemaker.Inputs.AlgorithmTrainingSpecificationSupportedHyperParameterRangeArgs
///                     {
///                         CategoricalParameterRangeSpecification = new Aws.Sagemaker.Inputs.AlgorithmTrainingSpecificationSupportedHyperParameterRangeCategoricalParameterRangeSpecificationArgs
///                         {
///                             Values = new[]
///                             {
///                                 "reg:squarederror",
///                                 "binary:logistic",
///                             },
///                         },
///                     },
///                 },
///             },
///             SupportedTuningJobObjectiveMetrics = new[]
///             {
///                 new Aws.Sagemaker.Inputs.AlgorithmTrainingSpecificationSupportedTuningJobObjectiveMetricArgs
///                 {
///                     MetricName = "train:loss",
///                     Type = "Minimize",
///                 },
///             },
///             TrainingChannels = new[]
///             {
///                 new Aws.Sagemaker.Inputs.AlgorithmTrainingSpecificationTrainingChannelArgs
///                 {
///                     Description = "Training data channel",
///                     IsRequired = true,
///                     Name = "train",
///                     SupportedCompressionTypes = new[]
///                     {
///                         "None",
///                         "Gzip",
///                     },
///                     SupportedContentTypes = new[]
///                     {
///                         "text/csv",
///                     },
///                     SupportedInputModes = new[]
///                     {
///                         "File",
///                     },
///                 },
///                 new Aws.Sagemaker.Inputs.AlgorithmTrainingSpecificationTrainingChannelArgs
///                 {
///                     Name = "validation",
///                     SupportedContentTypes = new[]
///                     {
///                         "application/json",
///                     },
///                     SupportedInputModes = new[]
///                     {
///                         "Pipe",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := sagemaker.GetPrebuiltEcrImage(ctx, &sagemaker.GetPrebuiltEcrImageArgs{
/// 			RepositoryName: "linear-learner",
/// 			ImageTag:       pulumi.StringRef("1"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sagemaker.NewAlgorithm(ctx, "example", &sagemaker.AlgorithmArgs{
/// 			AlgorithmName: pulumi.String("example-training-algorithm"),
/// 			TrainingSpecification: &sagemaker.AlgorithmTrainingSpecificationArgs{
/// 				SupportedTrainingInstanceTypes: pulumi.StringArray{
/// 					pulumi.String("ml.m5.large"),
/// 					pulumi.String("ml.c5.xlarge"),
/// 				},
/// 				SupportsDistributedTraining: pulumi.Bool(true),
/// 				TrainingImage:               pulumi.String(example.RegistryPath),
/// 				MetricDefinitions: sagemaker.AlgorithmTrainingSpecificationMetricDefinitionArray{
/// 					&sagemaker.AlgorithmTrainingSpecificationMetricDefinitionArgs{
/// 						Name:  pulumi.String("train:loss"),
/// 						Regex: pulumi.String("loss=(.*?);"),
/// 					},
/// 				},
/// 				SupportedHyperParameters: sagemaker.AlgorithmTrainingSpecificationSupportedHyperParameterArray{
/// 					&sagemaker.AlgorithmTrainingSpecificationSupportedHyperParameterArgs{
/// 						DefaultValue: pulumi.String("0.5"),
/// 						Description:  pulumi.String("Continuous learning rate"),
/// 						IsRequired:   pulumi.Bool(true),
/// 						IsTunable:    pulumi.Bool(true),
/// 						Name:         pulumi.String("eta"),
/// 						Type:         pulumi.String("Continuous"),
/// 						Range: &sagemaker.AlgorithmTrainingSpecificationSupportedHyperParameterRangeArgs{
/// 							ContinuousParameterRangeSpecification: &sagemaker.AlgorithmTrainingSpecificationSupportedHyperParameterRangeContinuousParameterRangeSpecificationArgs{
/// 								MinValue: pulumi.String("0.1"),
/// 								MaxValue: pulumi.String("0.9"),
/// 							},
/// 						},
/// 					},
/// 					&sagemaker.AlgorithmTrainingSpecificationSupportedHyperParameterArgs{
/// 						DefaultValue: pulumi.String("5"),
/// 						Description:  pulumi.String("Maximum tree depth"),
/// 						IsRequired:   pulumi.Bool(false),
/// 						IsTunable:    pulumi.Bool(true),
/// 						Name:         pulumi.String("max_depth"),
/// 						Type:         pulumi.String("Integer"),
/// 						Range: &sagemaker.AlgorithmTrainingSpecificationSupportedHyperParameterRangeArgs{
/// 							IntegerParameterRangeSpecification: &sagemaker.AlgorithmTrainingSpecificationSupportedHyperParameterRangeIntegerParameterRangeSpecificationArgs{
/// 								MinValue: pulumi.String("1"),
/// 								MaxValue: pulumi.String("10"),
/// 							},
/// 						},
/// 					},
/// 					&sagemaker.AlgorithmTrainingSpecificationSupportedHyperParameterArgs{
/// 						DefaultValue: pulumi.String("reg:squarederror"),
/// 						Description:  pulumi.String("Objective function"),
/// 						IsRequired:   pulumi.Bool(false),
/// 						IsTunable:    pulumi.Bool(false),
/// 						Name:         pulumi.String("objective"),
/// 						Type:         pulumi.String("Categorical"),
/// 						Range: &sagemaker.AlgorithmTrainingSpecificationSupportedHyperParameterRangeArgs{
/// 							CategoricalParameterRangeSpecification: &sagemaker.AlgorithmTrainingSpecificationSupportedHyperParameterRangeCategoricalParameterRangeSpecificationArgs{
/// 								Values: pulumi.StringArray{
/// 									pulumi.String("reg:squarederror"),
/// 									pulumi.String("binary:logistic"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				SupportedTuningJobObjectiveMetrics: sagemaker.AlgorithmTrainingSpecificationSupportedTuningJobObjectiveMetricArray{
/// 					&sagemaker.AlgorithmTrainingSpecificationSupportedTuningJobObjectiveMetricArgs{
/// 						MetricName: pulumi.String("train:loss"),
/// 						Type:       pulumi.String("Minimize"),
/// 					},
/// 				},
/// 				TrainingChannels: sagemaker.AlgorithmTrainingSpecificationTrainingChannelArray{
/// 					&sagemaker.AlgorithmTrainingSpecificationTrainingChannelArgs{
/// 						Description: pulumi.String("Training data channel"),
/// 						IsRequired:  pulumi.Bool(true),
/// 						Name:        pulumi.String("train"),
/// 						SupportedCompressionTypes: pulumi.StringArray{
/// 							pulumi.String("None"),
/// 							pulumi.String("Gzip"),
/// 						},
/// 						SupportedContentTypes: pulumi.StringArray{
/// 							pulumi.String("text/csv"),
/// 						},
/// 						SupportedInputModes: pulumi.StringArray{
/// 							pulumi.String("File"),
/// 						},
/// 					},
/// 					&sagemaker.AlgorithmTrainingSpecificationTrainingChannelArgs{
/// 						Name: pulumi.String("validation"),
/// 						SupportedContentTypes: pulumi.StringArray{
/// 							pulumi.String("application/json"),
/// 						},
/// 						SupportedInputModes: pulumi.StringArray{
/// 							pulumi.String("Pipe"),
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
/// data "aws_sagemaker_getprebuiltecrimage" "example" {
///   repository_name = "linear-learner"
///   image_tag       = "1"
/// }
///
/// resource "aws_sagemaker_algorithm" "example" {
///   algorithm_name = "example-training-algorithm"
///   training_specification = {
///     supported_training_instance_types = ["ml.m5.large", "ml.c5.xlarge"]
///     supports_distributed_training     = true
///     training_image                    = data.aws_sagemaker_getprebuiltecrimage.example.registry_path
///     metric_definitions = [{
///       "name"  = "train:loss"
///       "regex" = "loss=(.*?);"
///     }]
///     supported_hyper_parameters = [{
///       "defaultValue" = "0.5"
///       "description"  = "Continuous learning rate"
///       "isRequired"   = true
///       "isTunable"    = true
///       "name"         = "eta"
///       "type"         = "Continuous"
///       "range" = {
///         "continuousParameterRangeSpecification" = {
///           "minValue" = "0.1"
///           "maxValue" = "0.9"
///         }
///       }
///       }, {
///       "defaultValue" = "5"
///       "description"  = "Maximum tree depth"
///       "isRequired"   = false
///       "isTunable"    = true
///       "name"         = "max_depth"
///       "type"         = "Integer"
///       "range" = {
///         "integerParameterRangeSpecification" = {
///           "minValue" = "1"
///           "maxValue" = "10"
///         }
///       }
///       }, {
///       "defaultValue" = "reg:squarederror"
///       "description"  = "Objective function"
///       "isRequired"   = false
///       "isTunable"    = false
///       "name"         = "objective"
///       "type"         = "Categorical"
///       "range" = {
///         "categoricalParameterRangeSpecification" = {
///           "values" = ["reg:squarederror", "binary:logistic"]
///         }
///       }
///     }]
///     supported_tuning_job_objective_metrics = [{
///       "metricName" = "train:loss"
///       "type"       = "Minimize"
///     }]
///     training_channels = [{
///       "description"               = "Training data channel"
///       "isRequired"                = true
///       "name"                      = "train"
///       "supportedCompressionTypes" = ["None", "Gzip"]
///       "supportedContentTypes"     = ["text/csv"]
///       "supportedInputModes"       = ["File"]
///       }, {
///       "name"                  = "validation"
///       "supportedContentTypes" = ["application/json"]
///       "supportedInputModes"   = ["Pipe"]
///     }]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sagemaker.SagemakerFunctions;
/// import com.pulumi.aws.sagemaker.inputs.GetPrebuiltEcrImageArgs;
/// import com.pulumi.aws.sagemaker.Algorithm;
/// import com.pulumi.aws.sagemaker.AlgorithmArgs;
/// import com.pulumi.aws.sagemaker.inputs.AlgorithmTrainingSpecificationArgs;
/// import com.pulumi.aws.sagemaker.inputs.AlgorithmTrainingSpecificationMetricDefinitionArgs;
/// import com.pulumi.aws.sagemaker.inputs.AlgorithmTrainingSpecificationSupportedHyperParameterArgs;
/// import com.pulumi.aws.sagemaker.inputs.AlgorithmTrainingSpecificationSupportedHyperParameterRangeArgs;
/// import com.pulumi.aws.sagemaker.inputs.AlgorithmTrainingSpecificationSupportedHyperParameterRangeContinuousParameterRangeSpecificationArgs;
/// import com.pulumi.aws.sagemaker.inputs.AlgorithmTrainingSpecificationSupportedHyperParameterRangeIntegerParameterRangeSpecificationArgs;
/// import com.pulumi.aws.sagemaker.inputs.AlgorithmTrainingSpecificationSupportedHyperParameterRangeCategoricalParameterRangeSpecificationArgs;
/// import com.pulumi.aws.sagemaker.inputs.AlgorithmTrainingSpecificationSupportedTuningJobObjectiveMetricArgs;
/// import com.pulumi.aws.sagemaker.inputs.AlgorithmTrainingSpecificationTrainingChannelArgs;
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
///         final var example = SagemakerFunctions.getPrebuiltEcrImage(GetPrebuiltEcrImageArgs.builder()
///             .repositoryName("linear-learner")
///             .imageTag("1")
///             .build());
///
///         var exampleAlgorithm = new Algorithm("exampleAlgorithm", AlgorithmArgs.builder()
///             .algorithmName("example-training-algorithm")
///             .trainingSpecification(AlgorithmTrainingSpecificationArgs.builder()
///                 .supportedTrainingInstanceTypes(
///                     "ml.m5.large",
///                     "ml.c5.xlarge")
///                 .supportsDistributedTraining(true)
///                 .trainingImage(example.registryPath())
///                 .metricDefinitions(AlgorithmTrainingSpecificationMetricDefinitionArgs.builder()
///                     .name("train:loss")
///                     .regex("loss=(.*?);")
///                     .build())
///                 .supportedHyperParameters(
///                     AlgorithmTrainingSpecificationSupportedHyperParameterArgs.builder()
///                         .defaultValue("0.5")
///                         .description("Continuous learning rate")
///                         .isRequired(true)
///                         .isTunable(true)
///                         .name("eta")
///                         .type("Continuous")
///                         .range(AlgorithmTrainingSpecificationSupportedHyperParameterRangeArgs.builder()
///                             .continuousParameterRangeSpecification(AlgorithmTrainingSpecificationSupportedHyperParameterRangeContinuousParameterRangeSpecificationArgs.builder()
///                                 .minValue("0.1")
///                                 .maxValue("0.9")
///                                 .build())
///                             .build())
///                         .build(),
///                     AlgorithmTrainingSpecificationSupportedHyperParameterArgs.builder()
///                         .defaultValue("5")
///                         .description("Maximum tree depth")
///                         .isRequired(false)
///                         .isTunable(true)
///                         .name("max_depth")
///                         .type("Integer")
///                         .range(AlgorithmTrainingSpecificationSupportedHyperParameterRangeArgs.builder()
///                             .integerParameterRangeSpecification(AlgorithmTrainingSpecificationSupportedHyperParameterRangeIntegerParameterRangeSpecificationArgs.builder()
///                                 .minValue("1")
///                                 .maxValue("10")
///                                 .build())
///                             .build())
///                         .build(),
///                     AlgorithmTrainingSpecificationSupportedHyperParameterArgs.builder()
///                         .defaultValue("reg:squarederror")
///                         .description("Objective function")
///                         .isRequired(false)
///                         .isTunable(false)
///                         .name("objective")
///                         .type("Categorical")
///                         .range(AlgorithmTrainingSpecificationSupportedHyperParameterRangeArgs.builder()
///                             .categoricalParameterRangeSpecification(AlgorithmTrainingSpecificationSupportedHyperParameterRangeCategoricalParameterRangeSpecificationArgs.builder()
///                                 .values(
///                                     "reg:squarederror",
///                                     "binary:logistic")
///                                 .build())
///                             .build())
///                         .build())
///                 .supportedTuningJobObjectiveMetrics(AlgorithmTrainingSpecificationSupportedTuningJobObjectiveMetricArgs.builder()
///                     .metricName("train:loss")
///                     .type("Minimize")
///                     .build())
///                 .trainingChannels(
///                     AlgorithmTrainingSpecificationTrainingChannelArgs.builder()
///                         .description("Training data channel")
///                         .isRequired(true)
///                         .name("train")
///                         .supportedCompressionTypes(
///                             "None",
///                             "Gzip")
///                         .supportedContentTypes("text/csv")
///                         .supportedInputModes("File")
///                         .build(),
///                     AlgorithmTrainingSpecificationTrainingChannelArgs.builder()
///                         .name("validation")
///                         .supportedContentTypes("application/json")
///                         .supportedInputModes("Pipe")
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleAlgorithm:
///     type: aws:sagemaker:Algorithm
///     name: example
///     properties:
///       algorithmName: example-training-algorithm
///       trainingSpecification:
///         supportedTrainingInstanceTypes:
///           - ml.m5.large
///           - ml.c5.xlarge
///         supportsDistributedTraining: true
///         trainingImage: ${example.registryPath}
///         metricDefinitions:
///           - name: train:loss
///             regex: loss=(.*?);
///         supportedHyperParameters:
///           - defaultValue: '0.5'
///             description: Continuous learning rate
///             isRequired: true
///             isTunable: true
///             name: eta
///             type: Continuous
///             range:
///               continuousParameterRangeSpecification:
///                 minValue: '0.1'
///                 maxValue: '0.9'
///           - defaultValue: '5'
///             description: Maximum tree depth
///             isRequired: false
///             isTunable: true
///             name: max_depth
///             type: Integer
///             range:
///               integerParameterRangeSpecification:
///                 minValue: '1'
///                 maxValue: '10'
///           - defaultValue: reg:squarederror
///             description: Objective function
///             isRequired: false
///             isTunable: false
///             name: objective
///             type: Categorical
///             range:
///               categoricalParameterRangeSpecification:
///                 values:
///                   - reg:squarederror
///                   - binary:logistic
///         supportedTuningJobObjectiveMetrics:
///           - metricName: train:loss
///             type: Minimize
///         trainingChannels:
///           - description: Training data channel
///             isRequired: true
///             name: train
///             supportedCompressionTypes:
///               - None
///               - Gzip
///             supportedContentTypes:
///               - text/csv
///             supportedInputModes:
///               - File
///           - name: validation
///             supportedContentTypes:
///               - application/json
///             supportedInputModes:
///               - Pipe
/// variables:
///   example:
///     fn::invoke:
///       function: aws:sagemaker:getPrebuiltEcrImage
///       arguments:
///         repositoryName: linear-learner
///         imageTag: '1'
/// ```
///
///
/// ### Inference Specification
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.sagemaker.getPrebuiltEcrImage({
///     repositoryName: "linear-learner",
///     imageTag: "1",
/// });
/// const exampleAlgorithm = new aws.sagemaker.Algorithm("example", {
///     algorithmName: "example-inference-algorithm",
///     trainingSpecification: {
///         supportedTrainingInstanceTypes: ["ml.m5.large"],
///         trainingImage: example.then(example => example.registryPath),
///         trainingChannels: [{
///             name: "train",
///             supportedContentTypes: ["text/csv"],
///             supportedInputModes: ["File"],
///         }],
///     },
///     inferenceSpecification: {
///         supportedContentTypes: ["text/csv"],
///         supportedRealtimeInferenceInstanceTypes: ["ml.m5.large"],
///         supportedResponseMimeTypes: ["text/csv"],
///         supportedTransformInstanceTypes: ["ml.m5.large"],
///         containers: [{
///             containerHostname: "test-host",
///             environment: {
///                 TEST: "value",
///             },
///             framework: "XGBOOST",
///             frameworkVersion: "1.5-1",
///             image: example.then(example => example.registryPath),
///             isCheckpoint: true,
///             nearestModelName: "nearest-model",
///             baseModel: {
///                 hubContentName: "basemodel",
///                 hubContentVersion: "1.0.0",
///                 recipeName: "recipe",
///             },
///             modelInput: {
///                 dataInputConfig: "{}",
///             },
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.get_prebuilt_ecr_image(repository_name="linear-learner",
///     image_tag="1")
/// example_algorithm = aws.sagemaker.Algorithm("example",
///     algorithm_name="example-inference-algorithm",
///     training_specification={
///         "supported_training_instance_types": ["ml.m5.large"],
///         "training_image": example.registry_path,
///         "training_channels": [{
///             "name": "train",
///             "supported_content_types": ["text/csv"],
///             "supported_input_modes": ["File"],
///         }],
///     },
///     inference_specification={
///         "supported_content_types": ["text/csv"],
///         "supported_realtime_inference_instance_types": ["ml.m5.large"],
///         "supported_response_mime_types": ["text/csv"],
///         "supported_transform_instance_types": ["ml.m5.large"],
///         "containers": [{
///             "container_hostname": "test-host",
///             "environment": {
///                 "TEST": "value",
///             },
///             "framework": "XGBOOST",
///             "framework_version": "1.5-1",
///             "image": example.registry_path,
///             "is_checkpoint": True,
///             "nearest_model_name": "nearest-model",
///             "base_model": {
///                 "hub_content_name": "basemodel",
///                 "hub_content_version": "1.0.0",
///                 "recipe_name": "recipe",
///             },
///             "model_input": {
///                 "data_input_config": "{}",
///             },
///         }],
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
///     var example = Aws.Sagemaker.GetPrebuiltEcrImage.Invoke(new()
///     {
///         RepositoryName = "linear-learner",
///         ImageTag = "1",
///     });
///
///     var exampleAlgorithm = new Aws.Sagemaker.Algorithm("example", new()
///     {
///         AlgorithmName = "example-inference-algorithm",
///         TrainingSpecification = new Aws.Sagemaker.Inputs.AlgorithmTrainingSpecificationArgs
///         {
///             SupportedTrainingInstanceTypes = new[]
///             {
///                 "ml.m5.large",
///             },
///             TrainingImage = example.Apply(getPrebuiltEcrImageResult => getPrebuiltEcrImageResult.RegistryPath),
///             TrainingChannels = new[]
///             {
///                 new Aws.Sagemaker.Inputs.AlgorithmTrainingSpecificationTrainingChannelArgs
///                 {
///                     Name = "train",
///                     SupportedContentTypes = new[]
///                     {
///                         "text/csv",
///                     },
///                     SupportedInputModes = new[]
///                     {
///                         "File",
///                     },
///                 },
///             },
///         },
///         InferenceSpecification = new Aws.Sagemaker.Inputs.AlgorithmInferenceSpecificationArgs
///         {
///             SupportedContentTypes = new[]
///             {
///                 "text/csv",
///             },
///             SupportedRealtimeInferenceInstanceTypes = new[]
///             {
///                 "ml.m5.large",
///             },
///             SupportedResponseMimeTypes = new[]
///             {
///                 "text/csv",
///             },
///             SupportedTransformInstanceTypes = new[]
///             {
///                 "ml.m5.large",
///             },
///             Containers = new[]
///             {
///                 new Aws.Sagemaker.Inputs.AlgorithmInferenceSpecificationContainerArgs
///                 {
///                     ContainerHostname = "test-host",
///                     Environment =
///                     {
///                         { "TEST", "value" },
///                     },
///                     Framework = "XGBOOST",
///                     FrameworkVersion = "1.5-1",
///                     Image = example.Apply(getPrebuiltEcrImageResult => getPrebuiltEcrImageResult.RegistryPath),
///                     IsCheckpoint = true,
///                     NearestModelName = "nearest-model",
///                     BaseModel = new Aws.Sagemaker.Inputs.AlgorithmInferenceSpecificationContainerBaseModelArgs
///                     {
///                         HubContentName = "basemodel",
///                         HubContentVersion = "1.0.0",
///                         RecipeName = "recipe",
///                     },
///                     ModelInput = new Aws.Sagemaker.Inputs.AlgorithmInferenceSpecificationContainerModelInputArgs
///                     {
///                         DataInputConfig = "{}",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := sagemaker.GetPrebuiltEcrImage(ctx, &sagemaker.GetPrebuiltEcrImageArgs{
/// 			RepositoryName: "linear-learner",
/// 			ImageTag:       pulumi.StringRef("1"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sagemaker.NewAlgorithm(ctx, "example", &sagemaker.AlgorithmArgs{
/// 			AlgorithmName: pulumi.String("example-inference-algorithm"),
/// 			TrainingSpecification: &sagemaker.AlgorithmTrainingSpecificationArgs{
/// 				SupportedTrainingInstanceTypes: pulumi.StringArray{
/// 					pulumi.String("ml.m5.large"),
/// 				},
/// 				TrainingImage: pulumi.String(example.RegistryPath),
/// 				TrainingChannels: sagemaker.AlgorithmTrainingSpecificationTrainingChannelArray{
/// 					&sagemaker.AlgorithmTrainingSpecificationTrainingChannelArgs{
/// 						Name: pulumi.String("train"),
/// 						SupportedContentTypes: pulumi.StringArray{
/// 							pulumi.String("text/csv"),
/// 						},
/// 						SupportedInputModes: pulumi.StringArray{
/// 							pulumi.String("File"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			InferenceSpecification: &sagemaker.AlgorithmInferenceSpecificationArgs{
/// 				SupportedContentTypes: pulumi.StringArray{
/// 					pulumi.String("text/csv"),
/// 				},
/// 				SupportedRealtimeInferenceInstanceTypes: pulumi.StringArray{
/// 					pulumi.String("ml.m5.large"),
/// 				},
/// 				SupportedResponseMimeTypes: pulumi.StringArray{
/// 					pulumi.String("text/csv"),
/// 				},
/// 				SupportedTransformInstanceTypes: pulumi.StringArray{
/// 					pulumi.String("ml.m5.large"),
/// 				},
/// 				Containers: sagemaker.AlgorithmInferenceSpecificationContainerArray{
/// 					&sagemaker.AlgorithmInferenceSpecificationContainerArgs{
/// 						ContainerHostname: pulumi.String("test-host"),
/// 						Environment: pulumi.StringMap{
/// 							"TEST": pulumi.String("value"),
/// 						},
/// 						Framework:        pulumi.String("XGBOOST"),
/// 						FrameworkVersion: pulumi.String("1.5-1"),
/// 						Image:            pulumi.String(example.RegistryPath),
/// 						IsCheckpoint:     pulumi.Bool(true),
/// 						NearestModelName: pulumi.String("nearest-model"),
/// 						BaseModel: &sagemaker.AlgorithmInferenceSpecificationContainerBaseModelArgs{
/// 							HubContentName:    pulumi.String("basemodel"),
/// 							HubContentVersion: pulumi.String("1.0.0"),
/// 							RecipeName:        pulumi.String("recipe"),
/// 						},
/// 						ModelInput: &sagemaker.AlgorithmInferenceSpecificationContainerModelInputArgs{
/// 							DataInputConfig: pulumi.String("{}"),
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
/// data "aws_sagemaker_getprebuiltecrimage" "example" {
///   repository_name = "linear-learner"
///   image_tag       = "1"
/// }
///
/// resource "aws_sagemaker_algorithm" "example" {
///   algorithm_name = "example-inference-algorithm"
///   training_specification = {
///     supported_training_instance_types = ["ml.m5.large"]
///     training_image                    = data.aws_sagemaker_getprebuiltecrimage.example.registry_path
///     training_channels = [{
///       "name"                  = "train"
///       "supportedContentTypes" = ["text/csv"]
///       "supportedInputModes"   = ["File"]
///     }]
///   }
///   inference_specification = {
///     supported_content_types                     = ["text/csv"]
///     supported_realtime_inference_instance_types = ["ml.m5.large"]
///     supported_response_mime_types               = ["text/csv"]
///     supported_transform_instance_types          = ["ml.m5.large"]
///     containers = [{
///       "containerHostname" = "test-host"
///       "environment" = {
///         "TEST" = "value"
///       }
///       "framework"        = "XGBOOST"
///       "frameworkVersion" = "1.5-1"
///       "image"            = data.aws_sagemaker_getprebuiltecrimage.example.registry_path
///       "isCheckpoint"     = true
///       "nearestModelName" = "nearest-model"
///       "baseModel" = {
///         "hubContentName"    = "basemodel"
///         "hubContentVersion" = "1.0.0"
///         "recipeName"        = "recipe"
///       }
///       "modelInput" = {
///         "dataInputConfig" = "{}"
///       }
///     }]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sagemaker.SagemakerFunctions;
/// import com.pulumi.aws.sagemaker.inputs.GetPrebuiltEcrImageArgs;
/// import com.pulumi.aws.sagemaker.Algorithm;
/// import com.pulumi.aws.sagemaker.AlgorithmArgs;
/// import com.pulumi.aws.sagemaker.inputs.AlgorithmTrainingSpecificationArgs;
/// import com.pulumi.aws.sagemaker.inputs.AlgorithmTrainingSpecificationTrainingChannelArgs;
/// import com.pulumi.aws.sagemaker.inputs.AlgorithmInferenceSpecificationArgs;
/// import com.pulumi.aws.sagemaker.inputs.AlgorithmInferenceSpecificationContainerArgs;
/// import com.pulumi.aws.sagemaker.inputs.AlgorithmInferenceSpecificationContainerBaseModelArgs;
/// import com.pulumi.aws.sagemaker.inputs.AlgorithmInferenceSpecificationContainerModelInputArgs;
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
///         final var example = SagemakerFunctions.getPrebuiltEcrImage(GetPrebuiltEcrImageArgs.builder()
///             .repositoryName("linear-learner")
///             .imageTag("1")
///             .build());
///
///         var exampleAlgorithm = new Algorithm("exampleAlgorithm", AlgorithmArgs.builder()
///             .algorithmName("example-inference-algorithm")
///             .trainingSpecification(AlgorithmTrainingSpecificationArgs.builder()
///                 .supportedTrainingInstanceTypes("ml.m5.large")
///                 .trainingImage(example.registryPath())
///                 .trainingChannels(AlgorithmTrainingSpecificationTrainingChannelArgs.builder()
///                     .name("train")
///                     .supportedContentTypes("text/csv")
///                     .supportedInputModes("File")
///                     .build())
///                 .build())
///             .inferenceSpecification(AlgorithmInferenceSpecificationArgs.builder()
///                 .supportedContentTypes("text/csv")
///                 .supportedRealtimeInferenceInstanceTypes("ml.m5.large")
///                 .supportedResponseMimeTypes("text/csv")
///                 .supportedTransformInstanceTypes("ml.m5.large")
///                 .containers(AlgorithmInferenceSpecificationContainerArgs.builder()
///                     .containerHostname("test-host")
///                     .environment(Map.of("TEST", "value"))
///                     .framework("XGBOOST")
///                     .frameworkVersion("1.5-1")
///                     .image(example.registryPath())
///                     .isCheckpoint(true)
///                     .nearestModelName("nearest-model")
///                     .baseModel(AlgorithmInferenceSpecificationContainerBaseModelArgs.builder()
///                         .hubContentName("basemodel")
///                         .hubContentVersion("1.0.0")
///                         .recipeName("recipe")
///                         .build())
///                     .modelInput(AlgorithmInferenceSpecificationContainerModelInputArgs.builder()
///                         .dataInputConfig("{}")
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
///   exampleAlgorithm:
///     type: aws:sagemaker:Algorithm
///     name: example
///     properties:
///       algorithmName: example-inference-algorithm
///       trainingSpecification:
///         supportedTrainingInstanceTypes:
///           - ml.m5.large
///         trainingImage: ${example.registryPath}
///         trainingChannels:
///           - name: train
///             supportedContentTypes:
///               - text/csv
///             supportedInputModes:
///               - File
///       inferenceSpecification:
///         supportedContentTypes:
///           - text/csv
///         supportedRealtimeInferenceInstanceTypes:
///           - ml.m5.large
///         supportedResponseMimeTypes:
///           - text/csv
///         supportedTransformInstanceTypes:
///           - ml.m5.large
///         containers:
///           - containerHostname: test-host
///             environment:
///               TEST: value
///             framework: XGBOOST
///             frameworkVersion: 1.5-1
///             image: ${example.registryPath}
///             isCheckpoint: true
///             nearestModelName: nearest-model
///             baseModel:
///               hubContentName: basemodel
///               hubContentVersion: 1.0.0
///               recipeName: recipe
///             modelInput:
///               dataInputConfig: '{}'
/// variables:
///   example:
///     fn::invoke:
///       function: aws:sagemaker:getPrebuiltEcrImage
///       arguments:
///         repositoryName: linear-learner
///         imageTag: '1'
/// ```
///
///
/// ### Validation Specification
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getPartition({});
/// const example = aws.sagemaker.getPrebuiltEcrImage({
///     repositoryName: "linear-learner",
///     imageTag: "1",
/// });
/// const assumeRole = current.then(current => aws.iam.getPolicyDocument({
///     statements: [{
///         actions: ["sts:AssumeRole"],
///         principals: [{
///             type: "Service",
///             identifiers: [`sagemaker.${current.dnsSuffix}`],
///         }],
///     }],
/// }));
/// const exampleRole = new aws.iam.Role("example", {
///     name: "example-sagemaker-algorithm-role",
///     assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const exampleRolePolicyAttachment = new aws.iam.RolePolicyAttachment("example", {
///     role: exampleRole.name,
///     policyArn: current.then(current => `arn:${current.partition}:iam::aws:policy/AmazonSageMakerFullAccess`),
/// });
/// const exampleBucket = new aws.s3.Bucket("example", {
///     bucket: "example-sagemaker-algorithm-validation-bucket",
///     forceDestroy: true,
/// });
/// const s3Access = aws.iam.getPolicyDocumentOutput({
///     statements: [{
///         effect: "Allow",
///         actions: [
///             "s3:GetBucketLocation",
///             "s3:ListBucket",
///             "s3:GetObject",
///             "s3:PutObject",
///         ],
///         resources: [
///             exampleBucket.arn,
///             pulumi.interpolate`${exampleBucket.arn}/*`,
///         ],
///     }],
/// });
/// const exampleRolePolicy = new aws.iam.RolePolicy("example", {
///     role: exampleRole.name,
///     policy: s3Access.json,
/// });
/// const training = new aws.s3.BucketObjectv2("training", {
///     bucket: exampleBucket.bucket,
///     key: "algorithm/training/data.csv",
///     content: `1,1.0,0.0
/// 0,0.0,1.0
/// 1,1.0,1.0
/// 0,0.0,0.0
/// `,
/// });
/// const transform = new aws.s3.BucketObjectv2("transform", {
///     bucket: exampleBucket.bucket,
///     key: "algorithm/transform/input.csv",
///     content: `1.0,0.0
/// 0.0,1.0
/// `,
/// });
/// const exampleAlgorithm = new aws.sagemaker.Algorithm("example", {
///     algorithmName: "example-validation-algorithm",
///     trainingSpecification: {
///         trainingImage: example.then(example => example.registryPath),
///         supportedTrainingInstanceTypes: ["ml.m5.large"],
///         supportedHyperParameters: [
///             {
///                 defaultValue: "2",
///                 description: "Feature dimension",
///                 isRequired: true,
///                 isTunable: false,
///                 name: "feature_dim",
///                 type: "Integer",
///                 range: {
///                     integerParameterRangeSpecification: {
///                         minValue: "2",
///                         maxValue: "2",
///                     },
///                 },
///             },
///             {
///                 defaultValue: "4",
///                 description: "Mini batch size",
///                 isRequired: true,
///                 isTunable: false,
///                 name: "mini_batch_size",
///                 type: "Integer",
///                 range: {
///                     integerParameterRangeSpecification: {
///                         minValue: "4",
///                         maxValue: "4",
///                     },
///                 },
///             },
///             {
///                 defaultValue: "binary_classifier",
///                 description: "Predictor type",
///                 isRequired: true,
///                 isTunable: false,
///                 name: "predictor_type",
///                 type: "Categorical",
///                 range: {
///                     categoricalParameterRangeSpecification: {
///                         values: ["binary_classifier"],
///                     },
///                 },
///             },
///         ],
///         trainingChannels: [{
///             name: "train",
///             supportedContentTypes: ["text/csv"],
///             supportedInputModes: ["File"],
///         }],
///     },
///     inferenceSpecification: {
///         supportedContentTypes: ["text/csv"],
///         supportedResponseMimeTypes: ["text/csv"],
///         supportedTransformInstanceTypes: ["ml.m5.large"],
///         containers: [{
///             image: example.then(example => example.registryPath),
///         }],
///     },
///     validationSpecification: {
///         validationRole: exampleRole.arn,
///         validationProfiles: {
///             profileName: "validation-profile",
///             trainingJobDefinition: {
///                 hyperParameters: {
///                     feature_dim: "2",
///                     mini_batch_size: "4",
///                     predictor_type: "binary_classifier",
///                 },
///                 trainingInputMode: "File",
///                 inputDataConfigs: [{
///                     channelName: "train",
///                     compressionType: "None",
///                     contentType: "text/csv",
///                     inputMode: "File",
///                     recordWrapperType: "None",
///                     shuffleConfig: {
///                         seed: 1,
///                     },
///                     dataSource: {
///                         s3DataSource: {
///                             attributeNames: ["label"],
///                             s3DataDistributionType: "ShardedByS3Key",
///                             s3DataType: "S3Prefix",
///                             s3Uri: pulumi.interpolate`s3://${exampleBucket.bucket}/algorithm/training/`,
///                         },
///                     },
///                 }],
///                 outputDataConfig: {
///                     compressionType: "GZIP",
///                     s3OutputPath: pulumi.interpolate`s3://${exampleBucket.bucket}/algorithm/output`,
///                 },
///                 resourceConfig: {
///                     instanceCount: 1,
///                     instanceType: "ml.m5.large",
///                     keepAlivePeriodInSeconds: 60,
///                     volumeSizeInGb: 30,
///                 },
///                 stoppingCondition: {
///                     maxPendingTimeInSeconds: 7200,
///                     maxRuntimeInSeconds: 1800,
///                     maxWaitTimeInSeconds: 3600,
///                 },
///             },
///             transformJobDefinition: {
///                 batchStrategy: "MultiRecord",
///                 environment: {
///                     Te: "enabled",
///                 },
///                 maxConcurrentTransforms: 1,
///                 maxPayloadInMb: 6,
///                 transformInput: {
///                     compressionType: "None",
///                     contentType: "text/csv",
///                     splitType: "Line",
///                     dataSource: {
///                         s3DataSource: {
///                             s3DataType: "S3Prefix",
///                             s3Uri: pulumi.interpolate`s3://${exampleBucket.bucket}/algorithm/transform/`,
///                         },
///                     },
///                 },
///                 transformOutput: {
///                     accept: "text/csv",
///                     assembleWith: "Line",
///                     s3OutputPath: pulumi.interpolate`s3://${exampleBucket.bucket}/algorithm/transform-output`,
///                 },
///                 transformResources: {
///                     instanceCount: 1,
///                     instanceType: "ml.m5.large",
///                 },
///             },
///         },
///     },
/// }, {
///     dependsOn: [
///         exampleRolePolicyAttachment,
///         exampleRolePolicy,
///         training,
///         transform,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_partition()
/// example = aws.sagemaker.get_prebuilt_ecr_image(repository_name="linear-learner",
///     image_tag="1")
/// assume_role = aws.iam.get_policy_document(statements=[{
///     "actions": ["sts:AssumeRole"],
///     "principals": [{
///         "type": "Service",
///         "identifiers": [f"sagemaker.{current.dns_suffix}"],
///     }],
/// }])
/// example_role = aws.iam.Role("example",
///     name="example-sagemaker-algorithm-role",
///     assume_role_policy=assume_role.json)
/// example_role_policy_attachment = aws.iam.RolePolicyAttachment("example",
///     role=example_role.name,
///     policy_arn=f"arn:{current.partition}:iam::aws:policy/AmazonSageMakerFullAccess")
/// example_bucket = aws.s3.Bucket("example",
///     bucket="example-sagemaker-algorithm-validation-bucket",
///     force_destroy=True)
/// s3_access = aws.iam.get_policy_document_output(statements=[{
///     "effect": "Allow",
///     "actions": [
///         "s3:GetBucketLocation",
///         "s3:ListBucket",
///         "s3:GetObject",
///         "s3:PutObject",
///     ],
///     "resources": [
///         example_bucket.arn,
///         example_bucket.arn.apply(lambda arn: f"{arn}/*"),
///     ],
/// }])
/// example_role_policy = aws.iam.RolePolicy("example",
///     role=example_role.name,
///     policy=s3_access.json)
/// training = aws.s3.BucketObjectv2("training",
///     bucket=example_bucket.bucket,
///     key="algorithm/training/data.csv",
///     content="""1,1.0,0.0
/// 0,0.0,1.0
/// 1,1.0,1.0
/// 0,0.0,0.0
/// """)
/// transform = aws.s3.BucketObjectv2("transform",
///     bucket=example_bucket.bucket,
///     key="algorithm/transform/input.csv",
///     content="""1.0,0.0
/// 0.0,1.0
/// """)
/// example_algorithm = aws.sagemaker.Algorithm("example",
///     algorithm_name="example-validation-algorithm",
///     training_specification={
///         "training_image": example.registry_path,
///         "supported_training_instance_types": ["ml.m5.large"],
///         "supported_hyper_parameters": [
///             {
///                 "default_value": "2",
///                 "description": "Feature dimension",
///                 "is_required": True,
///                 "is_tunable": False,
///                 "name": "feature_dim",
///                 "type": "Integer",
///                 "range": {
///                     "integer_parameter_range_specification": {
///                         "min_value": "2",
///                         "max_value": "2",
///                     },
///                 },
///             },
///             {
///                 "default_value": "4",
///                 "description": "Mini batch size",
///                 "is_required": True,
///                 "is_tunable": False,
///                 "name": "mini_batch_size",
///                 "type": "Integer",
///                 "range": {
///                     "integer_parameter_range_specification": {
///                         "min_value": "4",
///                         "max_value": "4",
///                     },
///                 },
///             },
///             {
///                 "default_value": "binary_classifier",
///                 "description": "Predictor type",
///                 "is_required": True,
///                 "is_tunable": False,
///                 "name": "predictor_type",
///                 "type": "Categorical",
///                 "range": {
///                     "categorical_parameter_range_specification": {
///                         "values": ["binary_classifier"],
///                     },
///                 },
///             },
///         ],
///         "training_channels": [{
///             "name": "train",
///             "supported_content_types": ["text/csv"],
///             "supported_input_modes": ["File"],
///         }],
///     },
///     inference_specification={
///         "supported_content_types": ["text/csv"],
///         "supported_response_mime_types": ["text/csv"],
///         "supported_transform_instance_types": ["ml.m5.large"],
///         "containers": [{
///             "image": example.registry_path,
///         }],
///     },
///     validation_specification={
///         "validation_role": example_role.arn,
///         "validation_profiles": {
///             "profile_name": "validation-profile",
///             "training_job_definition": {
///                 "hyper_parameters": {
///                     "feature_dim": "2",
///                     "mini_batch_size": "4",
///                     "predictor_type": "binary_classifier",
///                 },
///                 "training_input_mode": "File",
///                 "input_data_configs": [{
///                     "channel_name": "train",
///                     "compression_type": "None",
///                     "content_type": "text/csv",
///                     "input_mode": "File",
///                     "record_wrapper_type": "None",
///                     "shuffle_config": {
///                         "seed": 1,
///                     },
///                     "data_source": {
///                         "s3_data_source": {
///                             "attribute_names": ["label"],
///                             "s3_data_distribution_type": "ShardedByS3Key",
///                             "s3_data_type": "S3Prefix",
///                             "s3_uri": example_bucket.bucket.apply(lambda bucket: f"s3://{bucket}/algorithm/training/"),
///                         },
///                     },
///                 }],
///                 "output_data_config": {
///                     "compression_type": "GZIP",
///                     "s3_output_path": example_bucket.bucket.apply(lambda bucket: f"s3://{bucket}/algorithm/output"),
///                 },
///                 "resource_config": {
///                     "instance_count": 1,
///                     "instance_type": "ml.m5.large",
///                     "keep_alive_period_in_seconds": 60,
///                     "volume_size_in_gb": 30,
///                 },
///                 "stopping_condition": {
///                     "max_pending_time_in_seconds": 7200,
///                     "max_runtime_in_seconds": 1800,
///                     "max_wait_time_in_seconds": 3600,
///                 },
///             },
///             "transform_job_definition": {
///                 "batch_strategy": "MultiRecord",
///                 "environment": {
///                     "Te": "enabled",
///                 },
///                 "max_concurrent_transforms": 1,
///                 "max_payload_in_mb": 6,
///                 "transform_input": {
///                     "compression_type": "None",
///                     "content_type": "text/csv",
///                     "split_type": "Line",
///                     "data_source": {
///                         "s3_data_source": {
///                             "s3_data_type": "S3Prefix",
///                             "s3_uri": example_bucket.bucket.apply(lambda bucket: f"s3://{bucket}/algorithm/transform/"),
///                         },
///                     },
///                 },
///                 "transform_output": {
///                     "accept": "text/csv",
///                     "assemble_with": "Line",
///                     "s3_output_path": example_bucket.bucket.apply(lambda bucket: f"s3://{bucket}/algorithm/transform-output"),
///                 },
///                 "transform_resources": {
///                     "instance_count": 1,
///                     "instance_type": "ml.m5.large",
///                 },
///             },
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[
///             example_role_policy_attachment,
///             example_role_policy,
///             training,
///             transform,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetPartition.Invoke();
///
///     var example = Aws.Sagemaker.GetPrebuiltEcrImage.Invoke(new()
///     {
///         RepositoryName = "linear-learner",
///         ImageTag = "1",
///     });
///
///     var assumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
///                 },
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             $"sagemaker.{current.Apply(getPartitionResult => getPartitionResult.DnsSuffix)}",
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
///     var exampleRole = new Aws.Iam.Role("example", new()
///     {
///         Name = "example-sagemaker-algorithm-role",
///         AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var exampleRolePolicyAttachment = new Aws.Iam.RolePolicyAttachment("example", new()
///     {
///         Role = exampleRole.Name,
///         PolicyArn = $"arn:{current.Apply(getPartitionResult => getPartitionResult.Partition)}:iam::aws:policy/AmazonSageMakerFullAccess",
///     });
///
///     var exampleBucket = new Aws.S3.Bucket("example", new()
///     {
///         BucketName = "example-sagemaker-algorithm-validation-bucket",
///         ForceDestroy = true,
///     });
///
///     var s3Access = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "s3:GetBucketLocation",
///                     "s3:ListBucket",
///                     "s3:GetObject",
///                     "s3:PutObject",
///                 },
///                 Resources = new[]
///                 {
///                     exampleBucket.Arn,
///                     $"{exampleBucket.Arn}/*",
///                 },
///             },
///         },
///     });
///
///     var exampleRolePolicy = new Aws.Iam.RolePolicy("example", new()
///     {
///         Role = exampleRole.Name,
///         Policy = s3Access.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var training = new Aws.S3.BucketObjectv2("training", new()
///     {
///         Bucket = exampleBucket.BucketName,
///         Key = "algorithm/training/data.csv",
///         Content = @"1,1.0,0.0
/// 0,0.0,1.0
/// 1,1.0,1.0
/// 0,0.0,0.0
/// ",
///     });
///
///     var transform = new Aws.S3.BucketObjectv2("transform", new()
///     {
///         Bucket = exampleBucket.BucketName,
///         Key = "algorithm/transform/input.csv",
///         Content = @"1.0,0.0
/// 0.0,1.0
/// ",
///     });
///
///     var exampleAlgorithm = new Aws.Sagemaker.Algorithm("example", new()
///     {
///         AlgorithmName = "example-validation-algorithm",
///         TrainingSpecification = new Aws.Sagemaker.Inputs.AlgorithmTrainingSpecificationArgs
///         {
///             TrainingImage = example.Apply(getPrebuiltEcrImageResult => getPrebuiltEcrImageResult.RegistryPath),
///             SupportedTrainingInstanceTypes = new[]
///             {
///                 "ml.m5.large",
///             },
///             SupportedHyperParameters = new[]
///             {
///                 new Aws.Sagemaker.Inputs.AlgorithmTrainingSpecificationSupportedHyperParameterArgs
///                 {
///                     DefaultValue = "2",
///                     Description = "Feature dimension",
///                     IsRequired = true,
///                     IsTunable = false,
///                     Name = "feature_dim",
///                     Type = "Integer",
///                     Range = new Aws.Sagemaker.Inputs.AlgorithmTrainingSpecificationSupportedHyperParameterRangeArgs
///                     {
///                         IntegerParameterRangeSpecification = new Aws.Sagemaker.Inputs.AlgorithmTrainingSpecificationSupportedHyperParameterRangeIntegerParameterRangeSpecificationArgs
///                         {
///                             MinValue = "2",
///                             MaxValue = "2",
///                         },
///                     },
///                 },
///                 new Aws.Sagemaker.Inputs.AlgorithmTrainingSpecificationSupportedHyperParameterArgs
///                 {
///                     DefaultValue = "4",
///                     Description = "Mini batch size",
///                     IsRequired = true,
///                     IsTunable = false,
///                     Name = "mini_batch_size",
///                     Type = "Integer",
///                     Range = new Aws.Sagemaker.Inputs.AlgorithmTrainingSpecificationSupportedHyperParameterRangeArgs
///                     {
///                         IntegerParameterRangeSpecification = new Aws.Sagemaker.Inputs.AlgorithmTrainingSpecificationSupportedHyperParameterRangeIntegerParameterRangeSpecificationArgs
///                         {
///                             MinValue = "4",
///                             MaxValue = "4",
///                         },
///                     },
///                 },
///                 new Aws.Sagemaker.Inputs.AlgorithmTrainingSpecificationSupportedHyperParameterArgs
///                 {
///                     DefaultValue = "binary_classifier",
///                     Description = "Predictor type",
///                     IsRequired = true,
///                     IsTunable = false,
///                     Name = "predictor_type",
///                     Type = "Categorical",
///                     Range = new Aws.Sagemaker.Inputs.AlgorithmTrainingSpecificationSupportedHyperParameterRangeArgs
///                     {
///                         CategoricalParameterRangeSpecification = new Aws.Sagemaker.Inputs.AlgorithmTrainingSpecificationSupportedHyperParameterRangeCategoricalParameterRangeSpecificationArgs
///                         {
///                             Values = new[]
///                             {
///                                 "binary_classifier",
///                             },
///                         },
///                     },
///                 },
///             },
///             TrainingChannels = new[]
///             {
///                 new Aws.Sagemaker.Inputs.AlgorithmTrainingSpecificationTrainingChannelArgs
///                 {
///                     Name = "train",
///                     SupportedContentTypes = new[]
///                     {
///                         "text/csv",
///                     },
///                     SupportedInputModes = new[]
///                     {
///                         "File",
///                     },
///                 },
///             },
///         },
///         InferenceSpecification = new Aws.Sagemaker.Inputs.AlgorithmInferenceSpecificationArgs
///         {
///             SupportedContentTypes = new[]
///             {
///                 "text/csv",
///             },
///             SupportedResponseMimeTypes = new[]
///             {
///                 "text/csv",
///             },
///             SupportedTransformInstanceTypes = new[]
///             {
///                 "ml.m5.large",
///             },
///             Containers = new[]
///             {
///                 new Aws.Sagemaker.Inputs.AlgorithmInferenceSpecificationContainerArgs
///                 {
///                     Image = example.Apply(getPrebuiltEcrImageResult => getPrebuiltEcrImageResult.RegistryPath),
///                 },
///             },
///         },
///         ValidationSpecification = new Aws.Sagemaker.Inputs.AlgorithmValidationSpecificationArgs
///         {
///             ValidationRole = exampleRole.Arn,
///             ValidationProfiles = new Aws.Sagemaker.Inputs.AlgorithmValidationSpecificationValidationProfilesArgs
///             {
///                 ProfileName = "validation-profile",
///                 TrainingJobDefinition = new Aws.Sagemaker.Inputs.AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionArgs
///                 {
///                     HyperParameters =
///                     {
///                         { "feature_dim", "2" },
///                         { "mini_batch_size", "4" },
///                         { "predictor_type", "binary_classifier" },
///                     },
///                     TrainingInputMode = "File",
///                     InputDataConfigs = new[]
///                     {
///                         new Aws.Sagemaker.Inputs.AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigArgs
///                         {
///                             ChannelName = "train",
///                             CompressionType = "None",
///                             ContentType = "text/csv",
///                             InputMode = "File",
///                             RecordWrapperType = "None",
///                             ShuffleConfig = new Aws.Sagemaker.Inputs.AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigShuffleConfigArgs
///                             {
///                                 Seed = 1,
///                             },
///                             DataSource = new Aws.Sagemaker.Inputs.AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceArgs
///                             {
///                                 S3DataSource = new Aws.Sagemaker.Inputs.AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceArgs
///                                 {
///                                     AttributeNames = new[]
///                                     {
///                                         "label",
///                                     },
///                                     S3DataDistributionType = "ShardedByS3Key",
///                                     S3DataType = "S3Prefix",
///                                     S3Uri = exampleBucket.BucketName.Apply(bucket => $"s3://{bucket}/algorithm/training/"),
///                                 },
///                             },
///                         },
///                     },
///                     OutputDataConfig = new Aws.Sagemaker.Inputs.AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionOutputDataConfigArgs
///                     {
///                         CompressionType = "GZIP",
///                         S3OutputPath = exampleBucket.BucketName.Apply(bucket => $"s3://{bucket}/algorithm/output"),
///                     },
///                     ResourceConfig = new Aws.Sagemaker.Inputs.AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfigArgs
///                     {
///                         InstanceCount = 1,
///                         InstanceType = "ml.m5.large",
///                         KeepAlivePeriodInSeconds = 60,
///                         VolumeSizeInGb = 30,
///                     },
///                     StoppingCondition = new Aws.Sagemaker.Inputs.AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionStoppingConditionArgs
///                     {
///                         MaxPendingTimeInSeconds = 7200,
///                         MaxRuntimeInSeconds = 1800,
///                         MaxWaitTimeInSeconds = 3600,
///                     },
///                 },
///                 TransformJobDefinition = new Aws.Sagemaker.Inputs.AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionArgs
///                 {
///                     BatchStrategy = "MultiRecord",
///                     Environment =
///                     {
///                         { "Te", "enabled" },
///                     },
///                     MaxConcurrentTransforms = 1,
///                     MaxPayloadInMb = 6,
///                     TransformInput = new Aws.Sagemaker.Inputs.AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformInputArgs
///                     {
///                         CompressionType = "None",
///                         ContentType = "text/csv",
///                         SplitType = "Line",
///                         DataSource = new Aws.Sagemaker.Inputs.AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformInputDataSourceArgs
///                         {
///                             S3DataSource = new Aws.Sagemaker.Inputs.AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformInputDataSourceS3DataSourceArgs
///                             {
///                                 S3DataType = "S3Prefix",
///                                 S3Uri = exampleBucket.BucketName.Apply(bucket => $"s3://{bucket}/algorithm/transform/"),
///                             },
///                         },
///                     },
///                     TransformOutput = new Aws.Sagemaker.Inputs.AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformOutputArgs
///                     {
///                         Accept = "text/csv",
///                         AssembleWith = "Line",
///                         S3OutputPath = exampleBucket.BucketName.Apply(bucket => $"s3://{bucket}/algorithm/transform-output"),
///                     },
///                     TransformResources = new Aws.Sagemaker.Inputs.AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformResourcesArgs
///                     {
///                         InstanceCount = 1,
///                         InstanceType = "ml.m5.large",
///                     },
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleRolePolicyAttachment,
///             exampleRolePolicy,
///             training,
///             transform,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetPartition(ctx, &aws.GetPartitionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := sagemaker.GetPrebuiltEcrImage(ctx, &sagemaker.GetPrebuiltEcrImageArgs{
/// 			RepositoryName: "linear-learner",
/// 			ImageTag:       pulumi.StringRef("1"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		assumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Actions: []string{
/// 						"sts:AssumeRole",
/// 					},
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								fmt.Sprintf("sagemaker.%v", current.DnsSuffix),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleRole, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// 			Name:             pulumi.String("example-sagemaker-algorithm-role"),
/// 			AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleRolePolicyAttachment, err := iam.NewRolePolicyAttachment(ctx, "example", &iam.RolePolicyAttachmentArgs{
/// 			Role:      exampleRole.Name,
/// 			PolicyArn: pulumi.Sprintf("arn:%v:iam::aws:policy/AmazonSageMakerFullAccess", current.Partition),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBucket, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// 			Bucket:       pulumi.String("example-sagemaker-algorithm-validation-bucket"),
/// 			ForceDestroy: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		s3Access := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// 			Statements: iam.GetPolicyDocumentStatementArray{
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Effect: pulumi.String("Allow"),
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("s3:GetBucketLocation"),
/// 						pulumi.String("s3:ListBucket"),
/// 						pulumi.String("s3:GetObject"),
/// 						pulumi.String("s3:PutObject"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						exampleBucket.Arn,
/// 						exampleBucket.Arn.ApplyT(func(arn string) (string, error) {
/// 							return fmt.Sprintf("%v/*", arn), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		exampleRolePolicy, err := iam.NewRolePolicy(ctx, "example", &iam.RolePolicyArgs{
/// 			Role:   exampleRole.Name,
/// 			Policy: s3Access.Json(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		training, err := s3.NewBucketObjectv2(ctx, "training", &s3.BucketObjectv2Args{
/// 			Bucket:  exampleBucket.Bucket,
/// 			Key:     pulumi.String("algorithm/training/data.csv"),
/// 			Content: pulumi.String("1,1.0,0.0\n0,0.0,1.0\n1,1.0,1.0\n0,0.0,0.0\n"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		transform, err := s3.NewBucketObjectv2(ctx, "transform", &s3.BucketObjectv2Args{
/// 			Bucket:  exampleBucket.Bucket,
/// 			Key:     pulumi.String("algorithm/transform/input.csv"),
/// 			Content: pulumi.String("1.0,0.0\n0.0,1.0\n"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sagemaker.NewAlgorithm(ctx, "example", &sagemaker.AlgorithmArgs{
/// 			AlgorithmName: pulumi.String("example-validation-algorithm"),
/// 			TrainingSpecification: &sagemaker.AlgorithmTrainingSpecificationArgs{
/// 				TrainingImage: pulumi.String(example.RegistryPath),
/// 				SupportedTrainingInstanceTypes: pulumi.StringArray{
/// 					pulumi.String("ml.m5.large"),
/// 				},
/// 				SupportedHyperParameters: sagemaker.AlgorithmTrainingSpecificationSupportedHyperParameterArray{
/// 					&sagemaker.AlgorithmTrainingSpecificationSupportedHyperParameterArgs{
/// 						DefaultValue: pulumi.String("2"),
/// 						Description:  pulumi.String("Feature dimension"),
/// 						IsRequired:   pulumi.Bool(true),
/// 						IsTunable:    pulumi.Bool(false),
/// 						Name:         pulumi.String("feature_dim"),
/// 						Type:         pulumi.String("Integer"),
/// 						Range: &sagemaker.AlgorithmTrainingSpecificationSupportedHyperParameterRangeArgs{
/// 							IntegerParameterRangeSpecification: &sagemaker.AlgorithmTrainingSpecificationSupportedHyperParameterRangeIntegerParameterRangeSpecificationArgs{
/// 								MinValue: pulumi.String("2"),
/// 								MaxValue: pulumi.String("2"),
/// 							},
/// 						},
/// 					},
/// 					&sagemaker.AlgorithmTrainingSpecificationSupportedHyperParameterArgs{
/// 						DefaultValue: pulumi.String("4"),
/// 						Description:  pulumi.String("Mini batch size"),
/// 						IsRequired:   pulumi.Bool(true),
/// 						IsTunable:    pulumi.Bool(false),
/// 						Name:         pulumi.String("mini_batch_size"),
/// 						Type:         pulumi.String("Integer"),
/// 						Range: &sagemaker.AlgorithmTrainingSpecificationSupportedHyperParameterRangeArgs{
/// 							IntegerParameterRangeSpecification: &sagemaker.AlgorithmTrainingSpecificationSupportedHyperParameterRangeIntegerParameterRangeSpecificationArgs{
/// 								MinValue: pulumi.String("4"),
/// 								MaxValue: pulumi.String("4"),
/// 							},
/// 						},
/// 					},
/// 					&sagemaker.AlgorithmTrainingSpecificationSupportedHyperParameterArgs{
/// 						DefaultValue: pulumi.String("binary_classifier"),
/// 						Description:  pulumi.String("Predictor type"),
/// 						IsRequired:   pulumi.Bool(true),
/// 						IsTunable:    pulumi.Bool(false),
/// 						Name:         pulumi.String("predictor_type"),
/// 						Type:         pulumi.String("Categorical"),
/// 						Range: &sagemaker.AlgorithmTrainingSpecificationSupportedHyperParameterRangeArgs{
/// 							CategoricalParameterRangeSpecification: &sagemaker.AlgorithmTrainingSpecificationSupportedHyperParameterRangeCategoricalParameterRangeSpecificationArgs{
/// 								Values: pulumi.StringArray{
/// 									pulumi.String("binary_classifier"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				TrainingChannels: sagemaker.AlgorithmTrainingSpecificationTrainingChannelArray{
/// 					&sagemaker.AlgorithmTrainingSpecificationTrainingChannelArgs{
/// 						Name: pulumi.String("train"),
/// 						SupportedContentTypes: pulumi.StringArray{
/// 							pulumi.String("text/csv"),
/// 						},
/// 						SupportedInputModes: pulumi.StringArray{
/// 							pulumi.String("File"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			InferenceSpecification: &sagemaker.AlgorithmInferenceSpecificationArgs{
/// 				SupportedContentTypes: pulumi.StringArray{
/// 					pulumi.String("text/csv"),
/// 				},
/// 				SupportedResponseMimeTypes: pulumi.StringArray{
/// 					pulumi.String("text/csv"),
/// 				},
/// 				SupportedTransformInstanceTypes: pulumi.StringArray{
/// 					pulumi.String("ml.m5.large"),
/// 				},
/// 				Containers: sagemaker.AlgorithmInferenceSpecificationContainerArray{
/// 					&sagemaker.AlgorithmInferenceSpecificationContainerArgs{
/// 						Image: pulumi.String(example.RegistryPath),
/// 					},
/// 				},
/// 			},
/// 			ValidationSpecification: &sagemaker.AlgorithmValidationSpecificationArgs{
/// 				ValidationRole: exampleRole.Arn,
/// 				ValidationProfiles: &sagemaker.AlgorithmValidationSpecificationValidationProfilesArgs{
/// 					ProfileName: pulumi.String("validation-profile"),
/// 					TrainingJobDefinition: &sagemaker.AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionArgs{
/// 						HyperParameters: pulumi.StringMap{
/// 							"feature_dim":     pulumi.String("2"),
/// 							"mini_batch_size": pulumi.String("4"),
/// 							"predictor_type":  pulumi.String("binary_classifier"),
/// 						},
/// 						TrainingInputMode: pulumi.String("File"),
/// 						InputDataConfigs: sagemaker.AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigArray{
/// 							&sagemaker.AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigArgs{
/// 								ChannelName:       pulumi.String("train"),
/// 								CompressionType:   pulumi.String("None"),
/// 								ContentType:       pulumi.String("text/csv"),
/// 								InputMode:         pulumi.String("File"),
/// 								RecordWrapperType: pulumi.String("None"),
/// 								ShuffleConfig: &sagemaker.AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigShuffleConfigArgs{
/// 									Seed: pulumi.Int(1),
/// 								},
/// 								DataSource: &sagemaker.AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceArgs{
/// 									S3DataSource: &sagemaker.AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceArgs{
/// 										AttributeNames: pulumi.StringArray{
/// 											pulumi.String("label"),
/// 										},
/// 										S3DataDistributionType: pulumi.String("ShardedByS3Key"),
/// 										S3DataType:             pulumi.String("S3Prefix"),
/// 										S3Uri: exampleBucket.Bucket.ApplyT(func(bucket string) (string, error) {
/// 											return fmt.Sprintf("s3://%v/algorithm/training/", bucket), nil
/// 										}).(pulumi.StringOutput),
/// 									},
/// 								},
/// 							},
/// 						},
/// 						OutputDataConfig: &sagemaker.AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionOutputDataConfigArgs{
/// 							CompressionType: pulumi.String("GZIP"),
/// 							S3OutputPath: exampleBucket.Bucket.ApplyT(func(bucket string) (string, error) {
/// 								return fmt.Sprintf("s3://%v/algorithm/output", bucket), nil
/// 							}).(pulumi.StringOutput),
/// 						},
/// 						ResourceConfig: &sagemaker.AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfigArgs{
/// 							InstanceCount:            pulumi.Int(1),
/// 							InstanceType:             pulumi.String("ml.m5.large"),
/// 							KeepAlivePeriodInSeconds: pulumi.Int(60),
/// 							VolumeSizeInGb:           pulumi.Int(30),
/// 						},
/// 						StoppingCondition: &sagemaker.AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionStoppingConditionArgs{
/// 							MaxPendingTimeInSeconds: pulumi.Int(7200),
/// 							MaxRuntimeInSeconds:     pulumi.Int(1800),
/// 							MaxWaitTimeInSeconds:    pulumi.Int(3600),
/// 						},
/// 					},
/// 					TransformJobDefinition: &sagemaker.AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionArgs{
/// 						BatchStrategy: pulumi.String("MultiRecord"),
/// 						Environment: pulumi.StringMap{
/// 							"Te": pulumi.String("enabled"),
/// 						},
/// 						MaxConcurrentTransforms: pulumi.Int(1),
/// 						MaxPayloadInMb:          pulumi.Int(6),
/// 						TransformInput: &sagemaker.AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformInputArgs{
/// 							CompressionType: pulumi.String("None"),
/// 							ContentType:     pulumi.String("text/csv"),
/// 							SplitType:       pulumi.String("Line"),
/// 							DataSource: &sagemaker.AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformInputDataSourceArgs{
/// 								S3DataSource: &sagemaker.AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformInputDataSourceS3DataSourceArgs{
/// 									S3DataType: pulumi.String("S3Prefix"),
/// 									S3Uri: exampleBucket.Bucket.ApplyT(func(bucket string) (string, error) {
/// 										return fmt.Sprintf("s3://%v/algorithm/transform/", bucket), nil
/// 									}).(pulumi.StringOutput),
/// 								},
/// 							},
/// 						},
/// 						TransformOutput: sagemaker.AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformOutputArgs{
/// 							Accept:       pulumi.String("text/csv"),
/// 							AssembleWith: pulumi.String("Line"),
/// 							S3OutputPath: exampleBucket.Bucket.ApplyT(func(bucket string) (string, error) {
/// 								return fmt.Sprintf("s3://%v/algorithm/transform-output", bucket), nil
/// 							}).(pulumi.StringOutput),
/// 						},
/// 						TransformResources: &sagemaker.AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformResourcesArgs{
/// 							InstanceCount: pulumi.Int(1),
/// 							InstanceType:  pulumi.String("ml.m5.large"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleRolePolicyAttachment,
/// 			exampleRolePolicy,
/// 			training,
/// 			transform,
/// 		}))
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
/// data "aws_getpartition" "current" {
/// }
/// data "aws_sagemaker_getprebuiltecrimage" "example" {
///   repository_name = "linear-learner"
///   image_tag       = "1"
/// }
/// data "aws_iam_getpolicydocument" "assumeRole" {
///   statements {
///     actions = ["sts:AssumeRole"]
///     principals {
///       type        = "Service"
///       identifiers = ["sagemaker.${data.aws_getpartition.current.dns_suffix}"]
///     }
///   }
/// }
/// data "aws_iam_getpolicydocument" "s3Access" {
///   statements {
///     effect    = "Allow"
///     actions   = ["s3:GetBucketLocation", "s3:ListBucket", "s3:GetObject", "s3:PutObject"]
///     resources = [aws_s3_bucket.example.arn, "${aws_s3_bucket.example.arn}/*"]
///   }
/// }
///
/// resource "aws_iam_role" "example" {
///   name               = "example-sagemaker-algorithm-role"
///   assume_role_policy = data.aws_iam_getpolicydocument.assumeRole.json
/// }
/// resource "aws_iam_rolepolicyattachment" "example" {
///   role       = aws_iam_role.example.name
///   policy_arn ="arn:${data.aws_getpartition.current.partition}:iam::aws:policy/AmazonSageMakerFullAccess"
/// }
/// resource "aws_s3_bucket" "example" {
///   bucket        = "example-sagemaker-algorithm-validation-bucket"
///   force_destroy = true
/// }
/// resource "aws_iam_rolepolicy" "example" {
///   role   = aws_iam_role.example.name
///   policy = data.aws_iam_getpolicydocument.s3Access.json
/// }
/// resource "aws_s3_bucketobjectv2" "training" {
///   bucket  = aws_s3_bucket.example.bucket
///   key     = "algorithm/training/data.csv"
///   content = "1,1.0,0.0\n0,0.0,1.0\n1,1.0,1.0\n0,0.0,0.0\n"
/// }
/// resource "aws_s3_bucketobjectv2" "transform" {
///   bucket  = aws_s3_bucket.example.bucket
///   key     = "algorithm/transform/input.csv"
///   content = "1.0,0.0\n0.0,1.0\n"
/// }
/// resource "aws_sagemaker_algorithm" "example" {
///   depends_on     = [aws_iam_rolepolicyattachment.example, aws_iam_rolepolicy.example, aws_s3_bucketobjectv2.training, aws_s3_bucketobjectv2.transform]
///   algorithm_name = "example-validation-algorithm"
///   training_specification = {
///     training_image                    = data.aws_sagemaker_getprebuiltecrimage.example.registry_path
///     supported_training_instance_types = ["ml.m5.large"]
///     supported_hyper_parameters = [{
///       "defaultValue" = "2"
///       "description"  = "Feature dimension"
///       "isRequired"   = true
///       "isTunable"    = false
///       "name"         = "feature_dim"
///       "type"         = "Integer"
///       "range" = {
///         "integerParameterRangeSpecification" = {
///           "minValue" = "2"
///           "maxValue" = "2"
///         }
///       }
///       }, {
///       "defaultValue" = "4"
///       "description"  = "Mini batch size"
///       "isRequired"   = true
///       "isTunable"    = false
///       "name"         = "mini_batch_size"
///       "type"         = "Integer"
///       "range" = {
///         "integerParameterRangeSpecification" = {
///           "minValue" = "4"
///           "maxValue" = "4"
///         }
///       }
///       }, {
///       "defaultValue" = "binary_classifier"
///       "description"  = "Predictor type"
///       "isRequired"   = true
///       "isTunable"    = false
///       "name"         = "predictor_type"
///       "type"         = "Categorical"
///       "range" = {
///         "categoricalParameterRangeSpecification" = {
///           "values" = ["binary_classifier"]
///         }
///       }
///     }]
///     training_channels = [{
///       "name"                  = "train"
///       "supportedContentTypes" = ["text/csv"]
///       "supportedInputModes"   = ["File"]
///     }]
///   }
///   inference_specification = {
///     supported_content_types            = ["text/csv"]
///     supported_response_mime_types      = ["text/csv"]
///     supported_transform_instance_types = ["ml.m5.large"]
///     containers = [{
///       "image" = data.aws_sagemaker_getprebuiltecrimage.example.registry_path
///     }]
///   }
///   validation_specification = {
///     validation_role = aws_iam_role.example.arn
///     validation_profiles = {
///       profile_name = "validation-profile"
///       training_job_definition = {
///         hyper_parameters = {
///           "feature_dim"     = "2"
///           "mini_batch_size" = "4"
///           "predictor_type"  = "binary_classifier"
///         }
///         training_input_mode = "File"
///         input_data_configs = [{
///           "channelName"       = "train"
///           "compressionType"   = "None"
///           "contentType"       = "text/csv"
///           "inputMode"         = "File"
///           "recordWrapperType" = "None"
///           "shuffleConfig" = {
///             "seed" = 1
///           }
///           "dataSource" = {
///             "s3DataSource" = {
///               "attributeNames"         = ["label"]
///               "s3DataDistributionType" = "ShardedByS3Key"
///               "s3DataType"             = "S3Prefix"
///               "s3Uri"                  ="s3://${aws_s3_bucket.example.bucket}/algorithm/training/"
///             }
///           }
///         }]
///         output_data_config = {
///           compression_type = "GZIP"
///           s3_output_path   ="s3://${aws_s3_bucket.example.bucket}/algorithm/output"
///         }
///         resource_config = {
///           instance_count               = 1
///           instance_type                = "ml.m5.large"
///           keep_alive_period_in_seconds = 60
///           volume_size_in_gb            = 30
///         }
///         stopping_condition = {
///           max_pending_time_in_seconds = 7200
///           max_runtime_in_seconds      = 1800
///           max_wait_time_in_seconds    = 3600
///         }
///       }
///       transform_job_definition = {
///         batch_strategy = "MultiRecord"
///         environment = {
///           "Te" = "enabled"
///         }
///         max_concurrent_transforms = 1
///         max_payload_in_mb         = 6
///         transform_input = {
///           compression_type = "None"
///           content_type     = "text/csv"
///           split_type       = "Line"
///           data_source = {
///             s3_data_source = {
///               s3_data_type = "S3Prefix"
///               s3_uri       ="s3://${aws_s3_bucket.example.bucket}/algorithm/transform/"
///             }
///           }
///         }
///         transform_output = {
///           accept         = "text/csv"
///           assemble_with  = "Line"
///           s3_output_path ="s3://${aws_s3_bucket.example.bucket}/algorithm/transform-output"
///         }
///         transform_resources = {
///           instance_count = 1
///           instance_type  = "ml.m5.large"
///         }
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetPartitionArgs;
/// import com.pulumi.aws.sagemaker.SagemakerFunctions;
/// import com.pulumi.aws.sagemaker.inputs.GetPrebuiltEcrImageArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.RolePolicyAttachment;
/// import com.pulumi.aws.iam.RolePolicyAttachmentArgs;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.iam.RolePolicy;
/// import com.pulumi.aws.iam.RolePolicyArgs;
/// import com.pulumi.aws.s3.BucketObjectv2;
/// import com.pulumi.aws.s3.BucketObjectv2Args;
/// import com.pulumi.aws.sagemaker.Algorithm;
/// import com.pulumi.aws.sagemaker.AlgorithmArgs;
/// import com.pulumi.aws.sagemaker.inputs.AlgorithmTrainingSpecificationArgs;
/// import com.pulumi.aws.sagemaker.inputs.AlgorithmTrainingSpecificationSupportedHyperParameterArgs;
/// import com.pulumi.aws.sagemaker.inputs.AlgorithmTrainingSpecificationSupportedHyperParameterRangeArgs;
/// import com.pulumi.aws.sagemaker.inputs.AlgorithmTrainingSpecificationSupportedHyperParameterRangeIntegerParameterRangeSpecificationArgs;
/// import com.pulumi.aws.sagemaker.inputs.AlgorithmTrainingSpecificationSupportedHyperParameterRangeCategoricalParameterRangeSpecificationArgs;
/// import com.pulumi.aws.sagemaker.inputs.AlgorithmTrainingSpecificationTrainingChannelArgs;
/// import com.pulumi.aws.sagemaker.inputs.AlgorithmInferenceSpecificationArgs;
/// import com.pulumi.aws.sagemaker.inputs.AlgorithmInferenceSpecificationContainerArgs;
/// import com.pulumi.aws.sagemaker.inputs.AlgorithmValidationSpecificationArgs;
/// import com.pulumi.aws.sagemaker.inputs.AlgorithmValidationSpecificationValidationProfilesArgs;
/// import com.pulumi.aws.sagemaker.inputs.AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionArgs;
/// import com.pulumi.aws.sagemaker.inputs.AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigArgs;
/// import com.pulumi.aws.sagemaker.inputs.AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigShuffleConfigArgs;
/// import com.pulumi.aws.sagemaker.inputs.AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceArgs;
/// import com.pulumi.aws.sagemaker.inputs.AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceArgs;
/// import com.pulumi.aws.sagemaker.inputs.AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionOutputDataConfigArgs;
/// import com.pulumi.aws.sagemaker.inputs.AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfigArgs;
/// import com.pulumi.aws.sagemaker.inputs.AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionStoppingConditionArgs;
/// import com.pulumi.aws.sagemaker.inputs.AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionArgs;
/// import com.pulumi.aws.sagemaker.inputs.AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformInputArgs;
/// import com.pulumi.aws.sagemaker.inputs.AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformInputDataSourceArgs;
/// import com.pulumi.aws.sagemaker.inputs.AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformInputDataSourceS3DataSourceArgs;
/// import com.pulumi.aws.sagemaker.inputs.AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformOutputArgs;
/// import com.pulumi.aws.sagemaker.inputs.AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformResourcesArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var current = AwsFunctions.getPartition(GetPartitionArgs.builder()
///             .build());
///
///         final var example = SagemakerFunctions.getPrebuiltEcrImage(GetPrebuiltEcrImageArgs.builder()
///             .repositoryName("linear-learner")
///             .imageTag("1")
///             .build());
///
///         final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .actions("sts:AssumeRole")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers(String.format("sagemaker.%s", current.dnsSuffix()))
///                     .build())
///                 .build())
///             .build());
///
///         var exampleRole = new Role("exampleRole", RoleArgs.builder()
///             .name("example-sagemaker-algorithm-role")
///             .assumeRolePolicy(assumeRole.json())
///             .build());
///
///         var exampleRolePolicyAttachment = new RolePolicyAttachment("exampleRolePolicyAttachment", RolePolicyAttachmentArgs.builder()
///             .role(exampleRole.name())
///             .policyArn(String.format("arn:%s:iam::aws:policy/AmazonSageMakerFullAccess", current.partition()))
///             .build());
///
///         var exampleBucket = new Bucket("exampleBucket", BucketArgs.builder()
///             .bucket("example-sagemaker-algorithm-validation-bucket")
///             .forceDestroy(true)
///             .build());
///
///         final var s3Access = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .actions(
///                     "s3:GetBucketLocation",
///                     "s3:ListBucket",
///                     "s3:GetObject",
///                     "s3:PutObject")
///                 .resources(
///                     exampleBucket.arn(),
///                     exampleBucket.arn().applyValue(_arn -> String.format("%s/*", _arn)))
///                 .build())
///             .build());
///
///         var exampleRolePolicy = new RolePolicy("exampleRolePolicy", RolePolicyArgs.builder()
///             .role(exampleRole.name())
///             .policy(s3Access.applyValue(_s3Access -> _s3Access.json()))
///             .build());
///
///         var training = new BucketObjectv2("training", BucketObjectv2Args.builder()
///             .bucket(exampleBucket.bucket())
///             .key("algorithm/training/data.csv")
///             .content("""
/// 1,1.0,0.0
/// 0,0.0,1.0
/// 1,1.0,1.0
/// 0,0.0,0.0
///             """)
///             .build());
///
///         var transform = new BucketObjectv2("transform", BucketObjectv2Args.builder()
///             .bucket(exampleBucket.bucket())
///             .key("algorithm/transform/input.csv")
///             .content("""
/// 1.0,0.0
/// 0.0,1.0
///             """)
///             .build());
///
///         var exampleAlgorithm = new Algorithm("exampleAlgorithm", AlgorithmArgs.builder()
///             .algorithmName("example-validation-algorithm")
///             .trainingSpecification(AlgorithmTrainingSpecificationArgs.builder()
///                 .trainingImage(example.registryPath())
///                 .supportedTrainingInstanceTypes("ml.m5.large")
///                 .supportedHyperParameters(
///                     AlgorithmTrainingSpecificationSupportedHyperParameterArgs.builder()
///                         .defaultValue("2")
///                         .description("Feature dimension")
///                         .isRequired(true)
///                         .isTunable(false)
///                         .name("feature_dim")
///                         .type("Integer")
///                         .range(AlgorithmTrainingSpecificationSupportedHyperParameterRangeArgs.builder()
///                             .integerParameterRangeSpecification(AlgorithmTrainingSpecificationSupportedHyperParameterRangeIntegerParameterRangeSpecificationArgs.builder()
///                                 .minValue("2")
///                                 .maxValue("2")
///                                 .build())
///                             .build())
///                         .build(),
///                     AlgorithmTrainingSpecificationSupportedHyperParameterArgs.builder()
///                         .defaultValue("4")
///                         .description("Mini batch size")
///                         .isRequired(true)
///                         .isTunable(false)
///                         .name("mini_batch_size")
///                         .type("Integer")
///                         .range(AlgorithmTrainingSpecificationSupportedHyperParameterRangeArgs.builder()
///                             .integerParameterRangeSpecification(AlgorithmTrainingSpecificationSupportedHyperParameterRangeIntegerParameterRangeSpecificationArgs.builder()
///                                 .minValue("4")
///                                 .maxValue("4")
///                                 .build())
///                             .build())
///                         .build(),
///                     AlgorithmTrainingSpecificationSupportedHyperParameterArgs.builder()
///                         .defaultValue("binary_classifier")
///                         .description("Predictor type")
///                         .isRequired(true)
///                         .isTunable(false)
///                         .name("predictor_type")
///                         .type("Categorical")
///                         .range(AlgorithmTrainingSpecificationSupportedHyperParameterRangeArgs.builder()
///                             .categoricalParameterRangeSpecification(AlgorithmTrainingSpecificationSupportedHyperParameterRangeCategoricalParameterRangeSpecificationArgs.builder()
///                                 .values("binary_classifier")
///                                 .build())
///                             .build())
///                         .build())
///                 .trainingChannels(AlgorithmTrainingSpecificationTrainingChannelArgs.builder()
///                     .name("train")
///                     .supportedContentTypes("text/csv")
///                     .supportedInputModes("File")
///                     .build())
///                 .build())
///             .inferenceSpecification(AlgorithmInferenceSpecificationArgs.builder()
///                 .supportedContentTypes("text/csv")
///                 .supportedResponseMimeTypes("text/csv")
///                 .supportedTransformInstanceTypes("ml.m5.large")
///                 .containers(AlgorithmInferenceSpecificationContainerArgs.builder()
///                     .image(example.registryPath())
///                     .build())
///                 .build())
///             .validationSpecification(AlgorithmValidationSpecificationArgs.builder()
///                 .validationRole(exampleRole.arn())
///                 .validationProfiles(AlgorithmValidationSpecificationValidationProfilesArgs.builder()
///                     .profileName("validation-profile")
///                     .trainingJobDefinition(AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionArgs.builder()
///                         .hyperParameters(Map.ofEntries(
///                             Map.entry("feature_dim", "2"),
///                             Map.entry("mini_batch_size", "4"),
///                             Map.entry("predictor_type", "binary_classifier")
///                         ))
///                         .trainingInputMode("File")
///                         .inputDataConfigs(AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigArgs.builder()
///                             .channelName("train")
///                             .compressionType("None")
///                             .contentType("text/csv")
///                             .inputMode("File")
///                             .recordWrapperType("None")
///                             .shuffleConfig(AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigShuffleConfigArgs.builder()
///                                 .seed(1)
///                                 .build())
///                             .dataSource(AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceArgs.builder()
///                                 .s3DataSource(AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceArgs.builder()
///                                     .attributeNames("label")
///                                     .s3DataDistributionType("ShardedByS3Key")
///                                     .s3DataType("S3Prefix")
///                                     .s3Uri(exampleBucket.bucket().applyValue(_bucket -> String.format("s3://%s/algorithm/training/", _bucket)))
///                                     .build())
///                                 .build())
///                             .build())
///                         .outputDataConfig(AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionOutputDataConfigArgs.builder()
///                             .compressionType("GZIP")
///                             .s3OutputPath(exampleBucket.bucket().applyValue(_bucket -> String.format("s3://%s/algorithm/output", _bucket)))
///                             .build())
///                         .resourceConfig(AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfigArgs.builder()
///                             .instanceCount(1)
///                             .instanceType("ml.m5.large")
///                             .keepAlivePeriodInSeconds(60)
///                             .volumeSizeInGb(30)
///                             .build())
///                         .stoppingCondition(AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionStoppingConditionArgs.builder()
///                             .maxPendingTimeInSeconds(7200)
///                             .maxRuntimeInSeconds(1800)
///                             .maxWaitTimeInSeconds(3600)
///                             .build())
///                         .build())
///                     .transformJobDefinition(AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionArgs.builder()
///                         .batchStrategy("MultiRecord")
///                         .environment(Map.of("Te", "enabled"))
///                         .maxConcurrentTransforms(1)
///                         .maxPayloadInMb(6)
///                         .transformInput(AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformInputArgs.builder()
///                             .compressionType("None")
///                             .contentType("text/csv")
///                             .splitType("Line")
///                             .dataSource(AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformInputDataSourceArgs.builder()
///                                 .s3DataSource(AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformInputDataSourceS3DataSourceArgs.builder()
///                                     .s3DataType("S3Prefix")
///                                     .s3Uri(exampleBucket.bucket().applyValue(_bucket -> String.format("s3://%s/algorithm/transform/", _bucket)))
///                                     .build())
///                                 .build())
///                             .build())
///                         .transformOutput(AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformOutputArgs.builder()
///                             .accept("text/csv")
///                             .assembleWith("Line")
///                             .s3OutputPath(exampleBucket.bucket().applyValue(_bucket -> String.format("s3://%s/algorithm/transform-output", _bucket)))
///                             .build())
///                         .transformResources(AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformResourcesArgs.builder()
///                             .instanceCount(1)
///                             .instanceType("ml.m5.large")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     exampleRolePolicyAttachment,
///                     exampleRolePolicy,
///                     training,
///                     transform)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleRole:
///     type: aws:iam:Role
///     name: example
///     properties:
///       name: example-sagemaker-algorithm-role
///       assumeRolePolicy: ${assumeRole.json}
///   exampleRolePolicyAttachment:
///     type: aws:iam:RolePolicyAttachment
///     name: example
///     properties:
///       role: ${exampleRole.name}
///       policyArn: arn:${current.partition}:iam::aws:policy/AmazonSageMakerFullAccess
///   exampleBucket:
///     type: aws:s3:Bucket
///     name: example
///     properties:
///       bucket: example-sagemaker-algorithm-validation-bucket
///       forceDestroy: true
///   exampleRolePolicy:
///     type: aws:iam:RolePolicy
///     name: example
///     properties:
///       role: ${exampleRole.name}
///       policy: ${s3Access.json}
///   training:
///     type: aws:s3:BucketObjectv2
///     properties:
///       bucket: ${exampleBucket.bucket}
///       key: algorithm/training/data.csv
///       content: |
///         1,1.0,0.0
///         0,0.0,1.0
///         1,1.0,1.0
///         0,0.0,0.0
///   transform:
///     type: aws:s3:BucketObjectv2
///     properties:
///       bucket: ${exampleBucket.bucket}
///       key: algorithm/transform/input.csv
///       content: |
///         1.0,0.0
///         0.0,1.0
///   exampleAlgorithm:
///     type: aws:sagemaker:Algorithm
///     name: example
///     properties:
///       algorithmName: example-validation-algorithm
///       trainingSpecification:
///         trainingImage: ${example.registryPath}
///         supportedTrainingInstanceTypes:
///           - ml.m5.large
///         supportedHyperParameters:
///           - defaultValue: '2'
///             description: Feature dimension
///             isRequired: true
///             isTunable: false
///             name: feature_dim
///             type: Integer
///             range:
///               integerParameterRangeSpecification:
///                 minValue: '2'
///                 maxValue: '2'
///           - defaultValue: '4'
///             description: Mini batch size
///             isRequired: true
///             isTunable: false
///             name: mini_batch_size
///             type: Integer
///             range:
///               integerParameterRangeSpecification:
///                 minValue: '4'
///                 maxValue: '4'
///           - defaultValue: binary_classifier
///             description: Predictor type
///             isRequired: true
///             isTunable: false
///             name: predictor_type
///             type: Categorical
///             range:
///               categoricalParameterRangeSpecification:
///                 values:
///                   - binary_classifier
///         trainingChannels:
///           - name: train
///             supportedContentTypes:
///               - text/csv
///             supportedInputModes:
///               - File
///       inferenceSpecification:
///         supportedContentTypes:
///           - text/csv
///         supportedResponseMimeTypes:
///           - text/csv
///         supportedTransformInstanceTypes:
///           - ml.m5.large
///         containers:
///           - image: ${example.registryPath}
///       validationSpecification:
///         validationRole: ${exampleRole.arn}
///         validationProfiles:
///           profileName: validation-profile
///           trainingJobDefinition:
///             hyperParameters:
///               feature_dim: '2'
///               mini_batch_size: '4'
///               predictor_type: binary_classifier
///             trainingInputMode: File
///             inputDataConfigs:
///               - channelName: train
///                 compressionType: None
///                 contentType: text/csv
///                 inputMode: File
///                 recordWrapperType: None
///                 shuffleConfig:
///                   seed: 1
///                 dataSource:
///                   s3DataSource:
///                     attributeNames:
///                       - label
///                     s3DataDistributionType: ShardedByS3Key
///                     s3DataType: S3Prefix
///                     s3Uri: s3://${exampleBucket.bucket}/algorithm/training/
///             outputDataConfig:
///               compressionType: GZIP
///               s3OutputPath: s3://${exampleBucket.bucket}/algorithm/output
///             resourceConfig:
///               instanceCount: 1
///               instanceType: ml.m5.large
///               keepAlivePeriodInSeconds: 60
///               volumeSizeInGb: 30
///             stoppingCondition:
///               maxPendingTimeInSeconds: 7200
///               maxRuntimeInSeconds: 1800
///               maxWaitTimeInSeconds: 3600
///           transformJobDefinition:
///             batchStrategy: MultiRecord
///             environment:
///               Te: enabled
///             maxConcurrentTransforms: 1
///             maxPayloadInMb: 6
///             transformInput:
///               compressionType: None
///               contentType: text/csv
///               splitType: Line
///               dataSource:
///                 s3DataSource:
///                   s3DataType: S3Prefix
///                   s3Uri: s3://${exampleBucket.bucket}/algorithm/transform/
///             transformOutput:
///               accept: text/csv
///               assembleWith: Line
///               s3OutputPath: s3://${exampleBucket.bucket}/algorithm/transform-output
///             transformResources:
///               instanceCount: 1
///               instanceType: ml.m5.large
///     options:
///       dependsOn:
///         - ${exampleRolePolicyAttachment}
///         - ${exampleRolePolicy}
///         - ${training}
///         - ${transform}
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getPartition
///       arguments: {}
///   example:
///     fn::invoke:
///       function: aws:sagemaker:getPrebuiltEcrImage
///       arguments:
///         repositoryName: linear-learner
///         imageTag: '1'
///   assumeRole:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - actions:
///               - sts:AssumeRole
///             principals:
///               - type: Service
///                 identifiers:
///                   - sagemaker.${current.dnsSuffix}
///   s3Access:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             actions:
///               - s3:GetBucketLocation
///               - s3:ListBucket
///               - s3:GetObject
///               - s3:PutObject
///             resources:
///               - ${exampleBucket.arn}
///               - ${exampleBucket.arn}/*
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `algorithmName` - (String) Name of the algorithm.
///
/// #### Optional
///
/// * `accountId` - (String) AWS account where this resource is managed.
/// * `region` - (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import SageMaker AI Algorithms using `algorithmName`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/algorithm:Algorithm example example-algorithm
/// ```
class Algorithm extends pulumi.CustomResource {
  /// Description of the algorithm.
  late final pulumi.Output<String?> algorithmDescription;
  /// Name of the algorithm.
  late final pulumi.Output<String> algorithmName;
  /// Status of the algorithm.
  late final pulumi.Output<String> algorithmStatus;
  /// ARN of the algorithm.
  late final pulumi.Output<String> arn;
  /// Whether to certify the algorithm for AWS Marketplace.
  late final pulumi.Output<bool> certifyForMarketplace;
  /// Time when the algorithm was created, in RFC3339 format.
  late final pulumi.Output<String> creationTime;
  /// Configuration for inference jobs that use this algorithm. See Inference Specification.
  late final pulumi.Output<AlgorithmInferenceSpecification?> inferenceSpecification;
  /// AWS Marketplace product ID associated with the algorithm.
  late final pulumi.Output<String> productId;
  /// Region where this resource is managed. Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including tags inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<AlgorithmTimeouts?> timeouts;
  /// Configuration for training jobs that use this algorithm. See Training Specification.
  late final pulumi.Output<AlgorithmTrainingSpecification> trainingSpecification;
  /// Configuration used to validate the algorithm. See Validation Specification.
  late final pulumi.Output<AlgorithmValidationSpecification?> validationSpecification;

  /// Creates a new [Algorithm].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Algorithm]. {@macro pulumi_sagemaker_algorithm_algorithm_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Algorithm(
    String name, {
    AlgorithmArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/algorithm:Algorithm',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    algorithmDescription = registerOutput<String?>('algorithmDescription');
    algorithmName = registerOutput<String>('algorithmName');
    algorithmStatus = registerOutput<String>('algorithmStatus');
    arn = registerOutput<String>('arn');
    certifyForMarketplace = registerOutput<bool>('certifyForMarketplace');
    creationTime = registerOutput<String>('creationTime');
    inferenceSpecification = registerOutput<AlgorithmInferenceSpecification?>('inferenceSpecification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AlgorithmInferenceSpecification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    productId = registerOutput<String>('productId');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<AlgorithmTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AlgorithmTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    trainingSpecification = registerOutput<AlgorithmTrainingSpecification>('trainingSpecification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AlgorithmTrainingSpecification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    validationSpecification = registerOutput<AlgorithmValidationSpecification?>('validationSpecification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AlgorithmValidationSpecification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Algorithm] resource's state with the given [name] and [id].
  static Algorithm get(
    String name,
    pulumi.Input<String> id, {
    AlgorithmState? state,
  }) {
    return Algorithm._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Algorithm._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/algorithm:Algorithm',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    algorithmDescription = registerOutput<String?>('algorithmDescription');
    algorithmName = registerOutput<String>('algorithmName');
    algorithmStatus = registerOutput<String>('algorithmStatus');
    arn = registerOutput<String>('arn');
    certifyForMarketplace = registerOutput<bool>('certifyForMarketplace');
    creationTime = registerOutput<String>('creationTime');
    inferenceSpecification = registerOutput<AlgorithmInferenceSpecification?>('inferenceSpecification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AlgorithmInferenceSpecification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    productId = registerOutput<String>('productId');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<AlgorithmTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AlgorithmTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    trainingSpecification = registerOutput<AlgorithmTrainingSpecification>('trainingSpecification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AlgorithmTrainingSpecification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    validationSpecification = registerOutput<AlgorithmValidationSpecification?>('validationSpecification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AlgorithmValidationSpecification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
