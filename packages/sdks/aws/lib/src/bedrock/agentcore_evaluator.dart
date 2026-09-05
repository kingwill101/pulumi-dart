import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_evaluator_args.dart';
import 'agentcore_evaluator_evaluator_config.dart';
import 'agentcore_evaluator_state.dart';
import 'agentcore_evaluator_timeouts.dart';

/// Manages an AWS Bedrock AgentCore Evaluator. An evaluator scores how an agent performs. You can configure it in one of two ways: an LLM-as-a-Judge evaluator that uses a model to score agent behavior against your instructions and a rating scale, or a code-based evaluator that runs a Lambda function you provide.
///
/// ## Example Usage
///
/// ### LLM-as-a-Judge with Numerical Rating Scale
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.AgentcoreEvaluator("example", {
///     evaluatorConfig: {
///         llmAsAJudge: {
///             ratingScale: {
///                 numericals: [
///                     {
///                         definition: "Not helpful at all.",
///                         value: 1,
///                         label: "1",
///                     },
///                     {
///                         definition: "Extremely helpful.",
///                         value: 5,
///                         label: "5",
///                     },
///                 ],
///             },
///             modelConfig: {
///                 bedrockEvaluatorModelConfig: {
///                     inferenceConfig: {
///                         maxTokens: 1024,
///                         temperature: 0,
///                         topP: 1,
///                     },
///                     modelId: "us.amazon.nova-2-lite-v1:0",
///                 },
///             },
///             instructions: "Given the {context} and the {assistant_turn}, compare against {expected_response} and rate from 1 to 5.",
///         },
///     },
///     evaluatorName: "helpfulness_evaluator",
///     description: "Rates assistant helpfulness from 1 to 5",
///     level: "TRACE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentcoreEvaluator("example",
///     evaluator_config={
///         "llm_as_a_judge": {
///             "rating_scale": {
///                 "numericals": [
///                     {
///                         "definition": "Not helpful at all.",
///                         "value": float(1),
///                         "label": "1",
///                     },
///                     {
///                         "definition": "Extremely helpful.",
///                         "value": float(5),
///                         "label": "5",
///                     },
///                 ],
///             },
///             "model_config": {
///                 "bedrock_evaluator_model_config": {
///                     "inference_config": {
///                         "max_tokens": 1024,
///                         "temperature": float(0),
///                         "top_p": float(1),
///                     },
///                     "model_id": "us.amazon.nova-2-lite-v1:0",
///                 },
///             },
///             "instructions": "Given the {context} and the {assistant_turn}, compare against {expected_response} and rate from 1 to 5.",
///         },
///     },
///     evaluator_name="helpfulness_evaluator",
///     description="Rates assistant helpfulness from 1 to 5",
///     level="TRACE")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Bedrock.AgentcoreEvaluator("example", new()
///     {
///         EvaluatorConfig = new Aws.Bedrock.Inputs.AgentcoreEvaluatorEvaluatorConfigArgs
///         {
///             LlmAsAJudge = new Aws.Bedrock.Inputs.AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeArgs
///             {
///                 RatingScale = new Aws.Bedrock.Inputs.AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleArgs
///                 {
///                     Numericals = new[]
///                     {
///                         new Aws.Bedrock.Inputs.AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleNumericalArgs
///                         {
///                             Definition = "Not helpful at all.",
///                             Value = 1,
///                             Label = "1",
///                         },
///                         new Aws.Bedrock.Inputs.AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleNumericalArgs
///                         {
///                             Definition = "Extremely helpful.",
///                             Value = 5,
///                             Label = "5",
///                         },
///                     },
///                 },
///                 ModelConfig = new Aws.Bedrock.Inputs.AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfigArgs
///                 {
///                     BedrockEvaluatorModelConfig = new Aws.Bedrock.Inputs.AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfigBedrockEvaluatorModelConfigArgs
///                     {
///                         InferenceConfig = new Aws.Bedrock.Inputs.AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfigBedrockEvaluatorModelConfigInferenceConfigArgs
///                         {
///                             MaxTokens = 1024,
///                             Temperature = 0,
///                             TopP = 1,
///                         },
///                         ModelId = "us.amazon.nova-2-lite-v1:0",
///                     },
///                 },
///                 Instructions = "Given the {context} and the {assistant_turn}, compare against {expected_response} and rate from 1 to 5.",
///             },
///         },
///         EvaluatorName = "helpfulness_evaluator",
///         Description = "Rates assistant helpfulness from 1 to 5",
///         Level = "TRACE",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bedrock.NewAgentcoreEvaluator(ctx, "example", &bedrock.AgentcoreEvaluatorArgs{
/// 			EvaluatorConfig: &bedrock.AgentcoreEvaluatorEvaluatorConfigArgs{
/// 				LlmAsAJudge: &bedrock.AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeArgs{
/// 					RatingScale: &bedrock.AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleArgs{
/// 						Numericals: bedrock.AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleNumericalArray{
/// 							&bedrock.AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleNumericalArgs{
/// 								Definition: pulumi.String("Not helpful at all."),
/// 								Value:      pulumi.Float64(1),
/// 								Label:      pulumi.String("1"),
/// 							},
/// 							&bedrock.AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleNumericalArgs{
/// 								Definition: pulumi.String("Extremely helpful."),
/// 								Value:      pulumi.Float64(5),
/// 								Label:      pulumi.String("5"),
/// 							},
/// 						},
/// 					},
/// 					ModelConfig: &bedrock.AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfigArgs{
/// 						BedrockEvaluatorModelConfig: &bedrock.AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfigBedrockEvaluatorModelConfigArgs{
/// 							InferenceConfig: &bedrock.AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfigBedrockEvaluatorModelConfigInferenceConfigArgs{
/// 								MaxTokens:   pulumi.Int(1024),
/// 								Temperature: pulumi.Float64(0),
/// 								TopP:        pulumi.Float64(1),
/// 							},
/// 							ModelId: pulumi.String("us.amazon.nova-2-lite-v1:0"),
/// 						},
/// 					},
/// 					Instructions: pulumi.String("Given the {context} and the {assistant_turn}, compare against {expected_response} and rate from 1 to 5."),
/// 				},
/// 			},
/// 			EvaluatorName: pulumi.String("helpfulness_evaluator"),
/// 			Description:   pulumi.String("Rates assistant helpfulness from 1 to 5"),
/// 			Level:         pulumi.String("TRACE"),
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
/// resource "aws_bedrock_agentcoreevaluator" "example" {
///   evaluator_config = {
///     llm_as_a_judge = {
///       rating_scale = {
///         numericals = [{
///           "definition" = "Not helpful at all."
///           "value"      = 1
///           "label"      = "1"
///           }, {
///           "definition" = "Extremely helpful."
///           "value"      = 5
///           "label"      = "5"
///         }]
///       }
///       model_config = {
///         bedrock_evaluator_model_config = {
///           inference_config = {
///             max_tokens  = 1024
///             temperature = 0
///             top_p       = 1
///           }
///           model_id = "us.amazon.nova-2-lite-v1:0"
///         }
///       }
///       instructions = "Given the {context} and the {assistant_turn}, compare against {expected_response} and rate from 1 to 5."
///     }
///   }
///   evaluator_name = "helpfulness_evaluator"
///   description    = "Rates assistant helpfulness from 1 to 5"
///   level          = "TRACE"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.AgentcoreEvaluator;
/// import com.pulumi.aws.bedrock.AgentcoreEvaluatorArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreEvaluatorEvaluatorConfigArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleNumericalArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfigArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfigBedrockEvaluatorModelConfigArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfigBedrockEvaluatorModelConfigInferenceConfigArgs;
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
///         var example = new AgentcoreEvaluator("example", AgentcoreEvaluatorArgs.builder()
///             .evaluatorConfig(AgentcoreEvaluatorEvaluatorConfigArgs.builder()
///                 .llmAsAJudge(AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeArgs.builder()
///                     .ratingScale(AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleArgs.builder()
///                         .numericals(
///                             AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleNumericalArgs.builder()
///                                 .definition("Not helpful at all.")
///                                 .value(1.0)
///                                 .label("1")
///                                 .build(),
///                             AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleNumericalArgs.builder()
///                                 .definition("Extremely helpful.")
///                                 .value(5.0)
///                                 .label("5")
///                                 .build())
///                         .build())
///                     .modelConfig(AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfigArgs.builder()
///                         .bedrockEvaluatorModelConfig(AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfigBedrockEvaluatorModelConfigArgs.builder()
///                             .inferenceConfig(AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfigBedrockEvaluatorModelConfigInferenceConfigArgs.builder()
///                                 .maxTokens(1024)
///                                 .temperature(0.0)
///                                 .topP(1.0)
///                                 .build())
///                             .modelId("us.amazon.nova-2-lite-v1:0")
///                             .build())
///                         .build())
///                     .instructions("Given the {context} and the {assistant_turn}, compare against {expected_response} and rate from 1 to 5.")
///                     .build())
///                 .build())
///             .evaluatorName("helpfulness_evaluator")
///             .description("Rates assistant helpfulness from 1 to 5")
///             .level("TRACE")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrock:AgentcoreEvaluator
///     properties:
///       evaluatorConfig:
///         llmAsAJudge:
///           ratingScale:
///             numericals:
///               - definition: Not helpful at all.
///                 value: 1
///                 label: '1'
///               - definition: Extremely helpful.
///                 value: 5
///                 label: '5'
///           modelConfig:
///             bedrockEvaluatorModelConfig:
///               inferenceConfig:
///                 maxTokens: 1024
///                 temperature: 0
///                 topP: 1
///               modelId: us.amazon.nova-2-lite-v1:0
///           instructions: Given the {context} and the {assistant_turn}, compare against {expected_response} and rate from 1 to 5.
///       evaluatorName: helpfulness_evaluator
///       description: Rates assistant helpfulness from 1 to 5
///       level: TRACE
/// ```
///
///
/// ### LLM-as-a-Judge with Categorical Rating Scale
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.AgentcoreEvaluator("example", {
///     evaluatorConfig: {
///         llmAsAJudge: {
///             ratingScale: {
///                 categoricals: [
///                     {
///                         definition: "Friendly, helpful tone.",
///                         label: "POSITIVE",
///                     },
///                     {
///                         definition: "Neutral or terse tone.",
///                         label: "NEUTRAL",
///                     },
///                     {
///                         definition: "Unhelpful or dismissive tone.",
///                         label: "NEGATIVE",
///                     },
///                 ],
///             },
///             modelConfig: {
///                 bedrockEvaluatorModelConfig: {
///                     modelId: "us.amazon.nova-2-lite-v1:0",
///                 },
///             },
///             instructions: "Classify the tone of the {assistant_turn} given the {context}.",
///         },
///     },
///     evaluatorName: "tone_evaluator",
///     level: "SESSION",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentcoreEvaluator("example",
///     evaluator_config={
///         "llm_as_a_judge": {
///             "rating_scale": {
///                 "categoricals": [
///                     {
///                         "definition": "Friendly, helpful tone.",
///                         "label": "POSITIVE",
///                     },
///                     {
///                         "definition": "Neutral or terse tone.",
///                         "label": "NEUTRAL",
///                     },
///                     {
///                         "definition": "Unhelpful or dismissive tone.",
///                         "label": "NEGATIVE",
///                     },
///                 ],
///             },
///             "model_config": {
///                 "bedrock_evaluator_model_config": {
///                     "model_id": "us.amazon.nova-2-lite-v1:0",
///                 },
///             },
///             "instructions": "Classify the tone of the {assistant_turn} given the {context}.",
///         },
///     },
///     evaluator_name="tone_evaluator",
///     level="SESSION")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Bedrock.AgentcoreEvaluator("example", new()
///     {
///         EvaluatorConfig = new Aws.Bedrock.Inputs.AgentcoreEvaluatorEvaluatorConfigArgs
///         {
///             LlmAsAJudge = new Aws.Bedrock.Inputs.AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeArgs
///             {
///                 RatingScale = new Aws.Bedrock.Inputs.AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleArgs
///                 {
///                     Categoricals = new[]
///                     {
///                         new Aws.Bedrock.Inputs.AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleCategoricalArgs
///                         {
///                             Definition = "Friendly, helpful tone.",
///                             Label = "POSITIVE",
///                         },
///                         new Aws.Bedrock.Inputs.AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleCategoricalArgs
///                         {
///                             Definition = "Neutral or terse tone.",
///                             Label = "NEUTRAL",
///                         },
///                         new Aws.Bedrock.Inputs.AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleCategoricalArgs
///                         {
///                             Definition = "Unhelpful or dismissive tone.",
///                             Label = "NEGATIVE",
///                         },
///                     },
///                 },
///                 ModelConfig = new Aws.Bedrock.Inputs.AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfigArgs
///                 {
///                     BedrockEvaluatorModelConfig = new Aws.Bedrock.Inputs.AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfigBedrockEvaluatorModelConfigArgs
///                     {
///                         ModelId = "us.amazon.nova-2-lite-v1:0",
///                     },
///                 },
///                 Instructions = "Classify the tone of the {assistant_turn} given the {context}.",
///             },
///         },
///         EvaluatorName = "tone_evaluator",
///         Level = "SESSION",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bedrock.NewAgentcoreEvaluator(ctx, "example", &bedrock.AgentcoreEvaluatorArgs{
/// 			EvaluatorConfig: &bedrock.AgentcoreEvaluatorEvaluatorConfigArgs{
/// 				LlmAsAJudge: &bedrock.AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeArgs{
/// 					RatingScale: &bedrock.AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleArgs{
/// 						Categoricals: bedrock.AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleCategoricalArray{
/// 							&bedrock.AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleCategoricalArgs{
/// 								Definition: pulumi.String("Friendly, helpful tone."),
/// 								Label:      pulumi.String("POSITIVE"),
/// 							},
/// 							&bedrock.AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleCategoricalArgs{
/// 								Definition: pulumi.String("Neutral or terse tone."),
/// 								Label:      pulumi.String("NEUTRAL"),
/// 							},
/// 							&bedrock.AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleCategoricalArgs{
/// 								Definition: pulumi.String("Unhelpful or dismissive tone."),
/// 								Label:      pulumi.String("NEGATIVE"),
/// 							},
/// 						},
/// 					},
/// 					ModelConfig: &bedrock.AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfigArgs{
/// 						BedrockEvaluatorModelConfig: &bedrock.AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfigBedrockEvaluatorModelConfigArgs{
/// 							ModelId: pulumi.String("us.amazon.nova-2-lite-v1:0"),
/// 						},
/// 					},
/// 					Instructions: pulumi.String("Classify the tone of the {assistant_turn} given the {context}."),
/// 				},
/// 			},
/// 			EvaluatorName: pulumi.String("tone_evaluator"),
/// 			Level:         pulumi.String("SESSION"),
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
/// resource "aws_bedrock_agentcoreevaluator" "example" {
///   evaluator_config = {
///     llm_as_a_judge = {
///       rating_scale = {
///         categoricals = [{
///           "definition" = "Friendly, helpful tone."
///           "label"      = "POSITIVE"
///           }, {
///           "definition" = "Neutral or terse tone."
///           "label"      = "NEUTRAL"
///           }, {
///           "definition" = "Unhelpful or dismissive tone."
///           "label"      = "NEGATIVE"
///         }]
///       }
///       model_config = {
///         bedrock_evaluator_model_config = {
///           model_id = "us.amazon.nova-2-lite-v1:0"
///         }
///       }
///       instructions = "Classify the tone of the {assistant_turn} given the {context}."
///     }
///   }
///   evaluator_name = "tone_evaluator"
///   level          = "SESSION"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.AgentcoreEvaluator;
/// import com.pulumi.aws.bedrock.AgentcoreEvaluatorArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreEvaluatorEvaluatorConfigArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleCategoricalArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfigArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfigBedrockEvaluatorModelConfigArgs;
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
///         var example = new AgentcoreEvaluator("example", AgentcoreEvaluatorArgs.builder()
///             .evaluatorConfig(AgentcoreEvaluatorEvaluatorConfigArgs.builder()
///                 .llmAsAJudge(AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeArgs.builder()
///                     .ratingScale(AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleArgs.builder()
///                         .categoricals(
///                             AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleCategoricalArgs.builder()
///                                 .definition("Friendly, helpful tone.")
///                                 .label("POSITIVE")
///                                 .build(),
///                             AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleCategoricalArgs.builder()
///                                 .definition("Neutral or terse tone.")
///                                 .label("NEUTRAL")
///                                 .build(),
///                             AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleCategoricalArgs.builder()
///                                 .definition("Unhelpful or dismissive tone.")
///                                 .label("NEGATIVE")
///                                 .build())
///                         .build())
///                     .modelConfig(AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfigArgs.builder()
///                         .bedrockEvaluatorModelConfig(AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfigBedrockEvaluatorModelConfigArgs.builder()
///                             .modelId("us.amazon.nova-2-lite-v1:0")
///                             .build())
///                         .build())
///                     .instructions("Classify the tone of the {assistant_turn} given the {context}.")
///                     .build())
///                 .build())
///             .evaluatorName("tone_evaluator")
///             .level("SESSION")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrock:AgentcoreEvaluator
///     properties:
///       evaluatorConfig:
///         llmAsAJudge:
///           ratingScale:
///             categoricals:
///               - definition: Friendly, helpful tone.
///                 label: POSITIVE
///               - definition: Neutral or terse tone.
///                 label: NEUTRAL
///               - definition: Unhelpful or dismissive tone.
///                 label: NEGATIVE
///           modelConfig:
///             bedrockEvaluatorModelConfig:
///               modelId: us.amazon.nova-2-lite-v1:0
///           instructions: Classify the tone of the {assistant_turn} given the {context}.
///       evaluatorName: tone_evaluator
///       level: SESSION
/// ```
///
///
/// ### Code-based Evaluator (Lambda)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.AgentcoreEvaluator("example", {
///     evaluatorConfig: {
///         codeBased: {
///             lambdaConfig: {
///                 lambdaArn: exampleAwsLambdaFunction.arn,
///                 lambdaTimeoutInSeconds: 60,
///             },
///         },
///     },
///     evaluatorName: "lambda_evaluator",
///     level: "TOOL_CALL",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentcoreEvaluator("example",
///     evaluator_config={
///         "code_based": {
///             "lambda_config": {
///                 "lambda_arn": example_aws_lambda_function["arn"],
///                 "lambda_timeout_in_seconds": 60,
///             },
///         },
///     },
///     evaluator_name="lambda_evaluator",
///     level="TOOL_CALL")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Bedrock.AgentcoreEvaluator("example", new()
///     {
///         EvaluatorConfig = new Aws.Bedrock.Inputs.AgentcoreEvaluatorEvaluatorConfigArgs
///         {
///             CodeBased = new Aws.Bedrock.Inputs.AgentcoreEvaluatorEvaluatorConfigCodeBasedArgs
///             {
///                 LambdaConfig = new Aws.Bedrock.Inputs.AgentcoreEvaluatorEvaluatorConfigCodeBasedLambdaConfigArgs
///                 {
///                     LambdaArn = exampleAwsLambdaFunction.Arn,
///                     LambdaTimeoutInSeconds = 60,
///                 },
///             },
///         },
///         EvaluatorName = "lambda_evaluator",
///         Level = "TOOL_CALL",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bedrock.NewAgentcoreEvaluator(ctx, "example", &bedrock.AgentcoreEvaluatorArgs{
/// 			EvaluatorConfig: &bedrock.AgentcoreEvaluatorEvaluatorConfigArgs{
/// 				CodeBased: &bedrock.AgentcoreEvaluatorEvaluatorConfigCodeBasedArgs{
/// 					LambdaConfig: &bedrock.AgentcoreEvaluatorEvaluatorConfigCodeBasedLambdaConfigArgs{
/// 						LambdaArn:              pulumi.Any(exampleAwsLambdaFunction.Arn),
/// 						LambdaTimeoutInSeconds: pulumi.Int(60),
/// 					},
/// 				},
/// 			},
/// 			EvaluatorName: pulumi.String("lambda_evaluator"),
/// 			Level:         pulumi.String("TOOL_CALL"),
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
/// resource "aws_bedrock_agentcoreevaluator" "example" {
///   evaluator_config = {
///     code_based = {
///       lambda_config = {
///         lambda_arn                = exampleAwsLambdaFunction.arn
///         lambda_timeout_in_seconds = 60
///       }
///     }
///   }
///   evaluator_name = "lambda_evaluator"
///   level          = "TOOL_CALL"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.AgentcoreEvaluator;
/// import com.pulumi.aws.bedrock.AgentcoreEvaluatorArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreEvaluatorEvaluatorConfigArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreEvaluatorEvaluatorConfigCodeBasedArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreEvaluatorEvaluatorConfigCodeBasedLambdaConfigArgs;
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
///         var example = new AgentcoreEvaluator("example", AgentcoreEvaluatorArgs.builder()
///             .evaluatorConfig(AgentcoreEvaluatorEvaluatorConfigArgs.builder()
///                 .codeBased(AgentcoreEvaluatorEvaluatorConfigCodeBasedArgs.builder()
///                     .lambdaConfig(AgentcoreEvaluatorEvaluatorConfigCodeBasedLambdaConfigArgs.builder()
///                         .lambdaArn(exampleAwsLambdaFunction.arn())
///                         .lambdaTimeoutInSeconds(60)
///                         .build())
///                     .build())
///                 .build())
///             .evaluatorName("lambda_evaluator")
///             .level("TOOL_CALL")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrock:AgentcoreEvaluator
///     properties:
///       evaluatorConfig:
///         codeBased:
///           lambdaConfig:
///             lambdaArn: ${exampleAwsLambdaFunction.arn}
///             lambdaTimeoutInSeconds: 60
///       evaluatorName: lambda_evaluator
///       level: TOOL_CALL
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `evaluatorId` (String) Unique identifier of the evaluator.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Bedrock AgentCore Evaluator using the evaluator ID. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentcoreEvaluator:AgentcoreEvaluator example helpfulness_evaluator-abc1234567
/// ```
class AgentcoreEvaluator extends pulumi.CustomResource {
  /// Timestamp when the evaluator was created.
  late final pulumi.Output<String> createdAt;
  /// Description of the evaluator. Length 1–200.
  late final pulumi.Output<String?> description;
  /// ARN of the evaluator.
  late final pulumi.Output<String> evaluatorArn;
  /// Configuration that defines how the evaluator assesses agent performance. See `evaluatorConfig` below.
  late final pulumi.Output<AgentcoreEvaluatorEvaluatorConfig> evaluatorConfig;
  /// Unique identifier of the evaluator.
  late final pulumi.Output<String> evaluatorId;
  /// Name of the evaluator. Must match the pattern `^[a-zA-Z][a-zA-Z0-9_]{0,47}$`.
  late final pulumi.Output<String> evaluatorName;
  /// ARN of a customer-managed KMS key used to encrypt the evaluator's sensitive data. Only symmetric encryption keys are supported.
  late final pulumi.Output<String?> kmsKeyArn;
  /// Evaluation level that determines the scope of evaluation. Valid values: `TOOL_CALL`, `TRACE`, `SESSION`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> level;
  /// Whether the evaluator is locked because it is in use by an active online evaluation.
  late final pulumi.Output<bool> lockedForModification;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Current status of the evaluator.
  late final pulumi.Output<String> status;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<AgentcoreEvaluatorTimeouts?> timeouts;

  /// Creates a new [AgentcoreEvaluator].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentcoreEvaluator]. {@macro pulumi_bedrock_agentcore_evaluator_agentcore_evaluator_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentcoreEvaluator(
    String name, {
    AgentcoreEvaluatorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentcoreEvaluator:AgentcoreEvaluator',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    evaluatorArn = registerOutput<String>('evaluatorArn');
    evaluatorConfig = registerOutput<AgentcoreEvaluatorEvaluatorConfig>('evaluatorConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreEvaluatorEvaluatorConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    evaluatorId = registerOutput<String>('evaluatorId');
    evaluatorName = registerOutput<String>('evaluatorName');
    kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    level = registerOutput<String>('level');
    lockedForModification = registerOutput<bool>('lockedForModification');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<AgentcoreEvaluatorTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreEvaluatorTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [AgentcoreEvaluator] resource's state with the given [name] and [id].
  static AgentcoreEvaluator get(
    String name,
    pulumi.Input<String> id, {
    AgentcoreEvaluatorState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AgentcoreEvaluator._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AgentcoreEvaluator._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentcoreEvaluator:AgentcoreEvaluator',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    evaluatorArn = registerOutput<String>('evaluatorArn');
    evaluatorConfig = registerOutput<AgentcoreEvaluatorEvaluatorConfig>('evaluatorConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreEvaluatorEvaluatorConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    evaluatorId = registerOutput<String>('evaluatorId');
    evaluatorName = registerOutput<String>('evaluatorName');
    kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    level = registerOutput<String>('level');
    lockedForModification = registerOutput<bool>('lockedForModification');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<AgentcoreEvaluatorTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreEvaluatorTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [AgentcoreEvaluator] resource.
  AgentcoreEvaluator.reference(String urn)
    : super(
        'aws:bedrock/agentcoreEvaluator:AgentcoreEvaluator',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    evaluatorArn = registerOutput<String>('evaluatorArn');
    evaluatorConfig = registerOutput<AgentcoreEvaluatorEvaluatorConfig>('evaluatorConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreEvaluatorEvaluatorConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    evaluatorId = registerOutput<String>('evaluatorId');
    evaluatorName = registerOutput<String>('evaluatorName');
    kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    level = registerOutput<String>('level');
    lockedForModification = registerOutput<bool>('lockedForModification');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<AgentcoreEvaluatorTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreEvaluatorTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
