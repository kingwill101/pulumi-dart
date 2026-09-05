import 'package:pulumi/pulumi.dart' as pulumi;
import 'media_insights_pipeline_configuration_args.dart';
import 'media_insights_pipeline_configuration_element.dart';
import 'media_insights_pipeline_configuration_real_time_alert_configuration.dart';
import 'media_insights_pipeline_configuration_state.dart';

/// Resource for managing an AWS Chime SDK Media Pipelines Media Insights Pipeline Configuration.
/// Consult the [Call analytics developer guide](https://docs.aws.amazon.com/chime-sdk/latest/dg/call-analytics.html) for more detailed information about usage.
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
/// const example = new aws.kinesis.Stream("example", {
///     name: "example",
///     shardCount: 2,
/// });
/// const mediaPipelinesAssumeRole = aws.iam.getPolicyDocument({
///     statements: [{
///         principals: [{
///             type: "Service",
///             identifiers: ["mediapipelines.chime.amazonaws.com"],
///         }],
///         effect: "Allow",
///         actions: ["sts:AssumeRole"],
///     }],
/// });
/// const callAnalyticsRole = new aws.iam.Role("call_analytics_role", {
///     name: "CallAnalyticsRole",
///     assumeRolePolicy: mediaPipelinesAssumeRole.then(mediaPipelinesAssumeRole => mediaPipelinesAssumeRole.json),
/// });
/// const myConfiguration = new aws.chimesdkmediapipelines.MediaInsightsPipelineConfiguration("my_configuration", {
///     elements: [
///         {
///             amazonTranscribeCallAnalyticsProcessorConfiguration: {
///                 languageCode: "en-US",
///             },
///             type: "AmazonTranscribeCallAnalyticsProcessor",
///         },
///         {
///             kinesisDataStreamSinkConfiguration: {
///                 insightsTarget: example.arn,
///             },
///             type: "KinesisDataStreamSink",
///         },
///     ],
///     name: "MyBasicConfiguration",
///     resourceAccessRoleArn: callAnalyticsRole.arn,
///     tags: {
///         Key1: "Value1",
///         Key2: "Value2",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kinesis.Stream("example",
///     name="example",
///     shard_count=2)
/// media_pipelines_assume_role = aws.iam.get_policy_document(statements=[{
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["mediapipelines.chime.amazonaws.com"],
///     }],
///     "effect": "Allow",
///     "actions": ["sts:AssumeRole"],
/// }])
/// call_analytics_role = aws.iam.Role("call_analytics_role",
///     name="CallAnalyticsRole",
///     assume_role_policy=media_pipelines_assume_role.json)
/// my_configuration = aws.chimesdkmediapipelines.MediaInsightsPipelineConfiguration("my_configuration",
///     elements=[
///         {
///             "amazon_transcribe_call_analytics_processor_configuration": {
///                 "language_code": "en-US",
///             },
///             "type": "AmazonTranscribeCallAnalyticsProcessor",
///         },
///         {
///             "kinesis_data_stream_sink_configuration": {
///                 "insights_target": example.arn,
///             },
///             "type": "KinesisDataStreamSink",
///         },
///     ],
///     name="MyBasicConfiguration",
///     resource_access_role_arn=call_analytics_role.arn,
///     tags={
///         "Key1": "Value1",
///         "Key2": "Value2",
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
///     var example = new Aws.Kinesis.Stream("example", new()
///     {
///         Name = "example",
///         ShardCount = 2,
///     });
///
///     var mediaPipelinesAssumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "mediapipelines.chime.amazonaws.com",
///                         },
///                     },
///                 },
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
///                 },
///             },
///         },
///     });
///
///     var callAnalyticsRole = new Aws.Iam.Role("call_analytics_role", new()
///     {
///         Name = "CallAnalyticsRole",
///         AssumeRolePolicy = mediaPipelinesAssumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var myConfiguration = new Aws.ChimeSDKMediaPipelines.MediaInsightsPipelineConfiguration("my_configuration", new()
///     {
///         Elements = new[]
///         {
///             new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementArgs
///             {
///                 AmazonTranscribeCallAnalyticsProcessorConfiguration = new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationArgs
///                 {
///                     LanguageCode = "en-US",
///                 },
///                 Type = "AmazonTranscribeCallAnalyticsProcessor",
///             },
///             new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementArgs
///             {
///                 KinesisDataStreamSinkConfiguration = new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfigurationArgs
///                 {
///                     InsightsTarget = example.Arn,
///                 },
///                 Type = "KinesisDataStreamSink",
///             },
///         },
///         Name = "MyBasicConfiguration",
///         ResourceAccessRoleArn = callAnalyticsRole.Arn,
///         Tags =
///         {
///             { "Key1", "Value1" },
///             { "Key2", "Value2" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/chimesdkmediapipelines"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := kinesis.NewStream(ctx, "example", &kinesis.StreamArgs{
/// 			Name:       pulumi.String("example"),
/// 			ShardCount: pulumi.Int(2),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		mediaPipelinesAssumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"mediapipelines.chime.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"sts:AssumeRole",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		callAnalyticsRole, err := iam.NewRole(ctx, "call_analytics_role", &iam.RoleArgs{
/// 			Name:             pulumi.String("CallAnalyticsRole"),
/// 			AssumeRolePolicy: pulumi.String(mediaPipelinesAssumeRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = chimesdkmediapipelines.NewMediaInsightsPipelineConfiguration(ctx, "my_configuration", &chimesdkmediapipelines.MediaInsightsPipelineConfigurationArgs{
/// 			Elements: chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementArray{
/// 				&chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementArgs{
/// 					AmazonTranscribeCallAnalyticsProcessorConfiguration: &chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationArgs{
/// 						LanguageCode: pulumi.String("en-US"),
/// 					},
/// 					Type: pulumi.String("AmazonTranscribeCallAnalyticsProcessor"),
/// 				},
/// 				&chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementArgs{
/// 					KinesisDataStreamSinkConfiguration: &chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfigurationArgs{
/// 						InsightsTarget: example.Arn,
/// 					},
/// 					Type: pulumi.String("KinesisDataStreamSink"),
/// 				},
/// 			},
/// 			Name:                  pulumi.String("MyBasicConfiguration"),
/// 			ResourceAccessRoleArn: callAnalyticsRole.Arn,
/// 			Tags: pulumi.StringMap{
/// 				"Key1": pulumi.String("Value1"),
/// 				"Key2": pulumi.String("Value2"),
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
/// data "aws_iam_getpolicydocument" "mediaPipelinesAssumeRole" {
///   statements {
///     principals {
///       type        = "Service"
///       identifiers = ["mediapipelines.chime.amazonaws.com"]
///     }
///     effect  = "Allow"
///     actions = ["sts:AssumeRole"]
///   }
/// }
///
/// resource "aws_chimesdkmediapipelines_mediainsightspipelineconfiguration" "my_configuration" {
///   elements {
///     amazon_transcribe_call_analytics_processor_configuration = {
///       language_code = "en-US"
///     }
///     type = "AmazonTranscribeCallAnalyticsProcessor"
///   }
///   elements {
///     kinesis_data_stream_sink_configuration = {
///       insights_target = aws_kinesis_stream.example.arn
///     }
///     type = "KinesisDataStreamSink"
///   }
///   name                     = "MyBasicConfiguration"
///   resource_access_role_arn = aws_iam_role.call_analytics_role.arn
///   tags = {
///     "Key1" = "Value1"
///     "Key2" = "Value2"
///   }
/// }
/// resource "aws_kinesis_stream" "example" {
///   name        = "example"
///   shard_count = 2
/// }
/// resource "aws_iam_role" "call_analytics_role" {
///   name               = "CallAnalyticsRole"
///   assume_role_policy = data.aws_iam_getpolicydocument.mediaPipelinesAssumeRole.json
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kinesis.Stream;
/// import com.pulumi.aws.kinesis.StreamArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.chimesdkmediapipelines.MediaInsightsPipelineConfiguration;
/// import com.pulumi.aws.chimesdkmediapipelines.MediaInsightsPipelineConfigurationArgs;
/// import com.pulumi.aws.chimesdkmediapipelines.inputs.MediaInsightsPipelineConfigurationElementArgs;
/// import com.pulumi.aws.chimesdkmediapipelines.inputs.MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationArgs;
/// import com.pulumi.aws.chimesdkmediapipelines.inputs.MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfigurationArgs;
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
///         var example = new Stream("example", StreamArgs.builder()
///             .name("example")
///             .shardCount(2)
///             .build());
///
///         final var mediaPipelinesAssumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("mediapipelines.chime.amazonaws.com")
///                     .build())
///                 .effect("Allow")
///                 .actions("sts:AssumeRole")
///                 .build())
///             .build());
///
///         var callAnalyticsRole = new Role("callAnalyticsRole", RoleArgs.builder()
///             .name("CallAnalyticsRole")
///             .assumeRolePolicy(mediaPipelinesAssumeRole.json())
///             .build());
///
///         var myConfiguration = new MediaInsightsPipelineConfiguration("myConfiguration", MediaInsightsPipelineConfigurationArgs.builder()
///             .elements(
///                 MediaInsightsPipelineConfigurationElementArgs.builder()
///                     .amazonTranscribeCallAnalyticsProcessorConfiguration(MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationArgs.builder()
///                         .languageCode("en-US")
///                         .build())
///                     .type("AmazonTranscribeCallAnalyticsProcessor")
///                     .build(),
///                 MediaInsightsPipelineConfigurationElementArgs.builder()
///                     .kinesisDataStreamSinkConfiguration(MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfigurationArgs.builder()
///                         .insightsTarget(example.arn())
///                         .build())
///                     .type("KinesisDataStreamSink")
///                     .build())
///             .name("MyBasicConfiguration")
///             .resourceAccessRoleArn(callAnalyticsRole.arn())
///             .tags(Map.ofEntries(
///                 Map.entry("Key1", "Value1"),
///                 Map.entry("Key2", "Value2")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myConfiguration:
///     type: aws:chimesdkmediapipelines:MediaInsightsPipelineConfiguration
///     name: my_configuration
///     properties:
///       elements:
///         - amazonTranscribeCallAnalyticsProcessorConfiguration:
///             languageCode: en-US
///           type: AmazonTranscribeCallAnalyticsProcessor
///         - kinesisDataStreamSinkConfiguration:
///             insightsTarget: ${example.arn}
///           type: KinesisDataStreamSink
///       name: MyBasicConfiguration
///       resourceAccessRoleArn: ${callAnalyticsRole.arn}
///       tags:
///         Key1: Value1
///         Key2: Value2
///   example:
///     type: aws:kinesis:Stream
///     properties:
///       name: example
///       shardCount: 2
///   callAnalyticsRole:
///     type: aws:iam:Role
///     name: call_analytics_role
///     properties:
///       name: CallAnalyticsRole
///       assumeRolePolicy: ${mediaPipelinesAssumeRole.json}
/// variables:
///   mediaPipelinesAssumeRole:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - type: Service
///                 identifiers:
///                   - mediapipelines.chime.amazonaws.com
///             effect: Allow
///             actions:
///               - sts:AssumeRole
/// ```
///
///
/// - The required policies on `callAnalyticsRole` will vary based on the selected processors. See [Call analytics resource access role](https://docs.aws.amazon.com/chime-sdk/latest/dg/ca-resource-access-role.html) for directions on choosing appropriate policies.
///
/// ### Transcribe Call Analytics processor usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const transcribeAssumeRole = aws.iam.getPolicyDocument({
///     statements: [{
///         principals: [{
///             type: "Service",
///             identifiers: ["transcribe.amazonaws.com"],
///         }],
///         effect: "Allow",
///         actions: ["sts:AssumeRole"],
///     }],
/// });
/// const postCallRole = new aws.iam.Role("post_call_role", {
///     name: "PostCallAccessRole",
///     assumeRolePolicy: transcribeAssumeRole.then(transcribeAssumeRole => transcribeAssumeRole.json),
/// });
/// const myConfiguration = new aws.chimesdkmediapipelines.MediaInsightsPipelineConfiguration("my_configuration", {
///     elements: [
///         {
///             amazonTranscribeCallAnalyticsProcessorConfiguration: {
///                 postCallAnalyticsSettings: {
///                     contentRedactionOutput: "redacted",
///                     dataAccessRoleArn: postCallRole.arn,
///                     outputEncryptionKmsKeyId: "MyKmsKeyId",
///                     outputLocation: "s3://MyBucket",
///                 },
///                 callAnalyticsStreamCategories: [
///                     "category_1",
///                     "category_2",
///                 ],
///                 contentRedactionType: "PII",
///                 enablePartialResultsStabilization: true,
///                 filterPartialResults: true,
///                 languageCode: "en-US",
///                 languageModelName: "MyLanguageModel",
///                 partialResultsStability: "high",
///                 piiEntityTypes: "ADDRESS,BANK_ACCOUNT_NUMBER",
///                 vocabularyFilterMethod: "mask",
///                 vocabularyFilterName: "MyVocabularyFilter",
///                 vocabularyName: "MyVocabulary",
///             },
///             type: "AmazonTranscribeCallAnalyticsProcessor",
///         },
///         {
///             kinesisDataStreamSinkConfiguration: {
///                 insightsTarget: example.arn,
///             },
///             type: "KinesisDataStreamSink",
///         },
///     ],
///     name: "MyCallAnalyticsConfiguration",
///     resourceAccessRoleArn: exampleAwsIamRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// transcribe_assume_role = aws.iam.get_policy_document(statements=[{
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["transcribe.amazonaws.com"],
///     }],
///     "effect": "Allow",
///     "actions": ["sts:AssumeRole"],
/// }])
/// post_call_role = aws.iam.Role("post_call_role",
///     name="PostCallAccessRole",
///     assume_role_policy=transcribe_assume_role.json)
/// my_configuration = aws.chimesdkmediapipelines.MediaInsightsPipelineConfiguration("my_configuration",
///     elements=[
///         {
///             "amazon_transcribe_call_analytics_processor_configuration": {
///                 "post_call_analytics_settings": {
///                     "content_redaction_output": "redacted",
///                     "data_access_role_arn": post_call_role.arn,
///                     "output_encryption_kms_key_id": "MyKmsKeyId",
///                     "output_location": "s3://MyBucket",
///                 },
///                 "call_analytics_stream_categories": [
///                     "category_1",
///                     "category_2",
///                 ],
///                 "content_redaction_type": "PII",
///                 "enable_partial_results_stabilization": True,
///                 "filter_partial_results": True,
///                 "language_code": "en-US",
///                 "language_model_name": "MyLanguageModel",
///                 "partial_results_stability": "high",
///                 "pii_entity_types": "ADDRESS,BANK_ACCOUNT_NUMBER",
///                 "vocabulary_filter_method": "mask",
///                 "vocabulary_filter_name": "MyVocabularyFilter",
///                 "vocabulary_name": "MyVocabulary",
///             },
///             "type": "AmazonTranscribeCallAnalyticsProcessor",
///         },
///         {
///             "kinesis_data_stream_sink_configuration": {
///                 "insights_target": example["arn"],
///             },
///             "type": "KinesisDataStreamSink",
///         },
///     ],
///     name="MyCallAnalyticsConfiguration",
///     resource_access_role_arn=example_aws_iam_role["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var transcribeAssumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "transcribe.amazonaws.com",
///                         },
///                     },
///                 },
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
///                 },
///             },
///         },
///     });
///
///     var postCallRole = new Aws.Iam.Role("post_call_role", new()
///     {
///         Name = "PostCallAccessRole",
///         AssumeRolePolicy = transcribeAssumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var myConfiguration = new Aws.ChimeSDKMediaPipelines.MediaInsightsPipelineConfiguration("my_configuration", new()
///     {
///         Elements = new[]
///         {
///             new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementArgs
///             {
///                 AmazonTranscribeCallAnalyticsProcessorConfiguration = new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationArgs
///                 {
///                     PostCallAnalyticsSettings = new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationPostCallAnalyticsSettingsArgs
///                     {
///                         ContentRedactionOutput = "redacted",
///                         DataAccessRoleArn = postCallRole.Arn,
///                         OutputEncryptionKmsKeyId = "MyKmsKeyId",
///                         OutputLocation = "s3://MyBucket",
///                     },
///                     CallAnalyticsStreamCategories = new[]
///                     {
///                         "category_1",
///                         "category_2",
///                     },
///                     ContentRedactionType = "PII",
///                     EnablePartialResultsStabilization = true,
///                     FilterPartialResults = true,
///                     LanguageCode = "en-US",
///                     LanguageModelName = "MyLanguageModel",
///                     PartialResultsStability = "high",
///                     PiiEntityTypes = "ADDRESS,BANK_ACCOUNT_NUMBER",
///                     VocabularyFilterMethod = "mask",
///                     VocabularyFilterName = "MyVocabularyFilter",
///                     VocabularyName = "MyVocabulary",
///                 },
///                 Type = "AmazonTranscribeCallAnalyticsProcessor",
///             },
///             new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementArgs
///             {
///                 KinesisDataStreamSinkConfiguration = new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfigurationArgs
///                 {
///                     InsightsTarget = example.Arn,
///                 },
///                 Type = "KinesisDataStreamSink",
///             },
///         },
///         Name = "MyCallAnalyticsConfiguration",
///         ResourceAccessRoleArn = exampleAwsIamRole.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/chimesdkmediapipelines"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		transcribeAssumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"transcribe.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"sts:AssumeRole",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		postCallRole, err := iam.NewRole(ctx, "post_call_role", &iam.RoleArgs{
/// 			Name:             pulumi.String("PostCallAccessRole"),
/// 			AssumeRolePolicy: pulumi.String(transcribeAssumeRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = chimesdkmediapipelines.NewMediaInsightsPipelineConfiguration(ctx, "my_configuration", &chimesdkmediapipelines.MediaInsightsPipelineConfigurationArgs{
/// 			Elements: chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementArray{
/// 				&chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementArgs{
/// 					AmazonTranscribeCallAnalyticsProcessorConfiguration: &chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationArgs{
/// 						PostCallAnalyticsSettings: &chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationPostCallAnalyticsSettingsArgs{
/// 							ContentRedactionOutput:   pulumi.String("redacted"),
/// 							DataAccessRoleArn:        postCallRole.Arn,
/// 							OutputEncryptionKmsKeyId: pulumi.String("MyKmsKeyId"),
/// 							OutputLocation:           pulumi.String("s3://MyBucket"),
/// 						},
/// 						CallAnalyticsStreamCategories: pulumi.StringArray{
/// 							pulumi.String("category_1"),
/// 							pulumi.String("category_2"),
/// 						},
/// 						ContentRedactionType:              pulumi.String("PII"),
/// 						EnablePartialResultsStabilization: pulumi.Bool(true),
/// 						FilterPartialResults:              pulumi.Bool(true),
/// 						LanguageCode:                      pulumi.String("en-US"),
/// 						LanguageModelName:                 pulumi.String("MyLanguageModel"),
/// 						PartialResultsStability:           pulumi.String("high"),
/// 						PiiEntityTypes:                    pulumi.String("ADDRESS,BANK_ACCOUNT_NUMBER"),
/// 						VocabularyFilterMethod:            pulumi.String("mask"),
/// 						VocabularyFilterName:              pulumi.String("MyVocabularyFilter"),
/// 						VocabularyName:                    pulumi.String("MyVocabulary"),
/// 					},
/// 					Type: pulumi.String("AmazonTranscribeCallAnalyticsProcessor"),
/// 				},
/// 				&chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementArgs{
/// 					KinesisDataStreamSinkConfiguration: &chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfigurationArgs{
/// 						InsightsTarget: pulumi.Any(example.Arn),
/// 					},
/// 					Type: pulumi.String("KinesisDataStreamSink"),
/// 				},
/// 			},
/// 			Name:                  pulumi.String("MyCallAnalyticsConfiguration"),
/// 			ResourceAccessRoleArn: pulumi.Any(exampleAwsIamRole.Arn),
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
/// data "aws_iam_getpolicydocument" "transcribeAssumeRole" {
///   statements {
///     principals {
///       type        = "Service"
///       identifiers = ["transcribe.amazonaws.com"]
///     }
///     effect  = "Allow"
///     actions = ["sts:AssumeRole"]
///   }
/// }
///
/// resource "aws_chimesdkmediapipelines_mediainsightspipelineconfiguration" "my_configuration" {
///   elements {
///     amazon_transcribe_call_analytics_processor_configuration = {
///       post_call_analytics_settings = {
///         content_redaction_output     = "redacted"
///         data_access_role_arn         = aws_iam_role.post_call_role.arn
///         output_encryption_kms_key_id = "MyKmsKeyId"
///         output_location              = "s3://MyBucket"
///       }
///       call_analytics_stream_categories     = ["category_1", "category_2"]
///       content_redaction_type               = "PII"
///       enable_partial_results_stabilization = true
///       filter_partial_results               = true
///       language_code                        = "en-US"
///       language_model_name                  = "MyLanguageModel"
///       partial_results_stability            = "high"
///       pii_entity_types                     = "ADDRESS,BANK_ACCOUNT_NUMBER"
///       vocabulary_filter_method             = "mask"
///       vocabulary_filter_name               = "MyVocabularyFilter"
///       vocabulary_name                      = "MyVocabulary"
///     }
///     type = "AmazonTranscribeCallAnalyticsProcessor"
///   }
///   elements {
///     kinesis_data_stream_sink_configuration = {
///       insights_target = example.arn
///     }
///     type = "KinesisDataStreamSink"
///   }
///   name                     = "MyCallAnalyticsConfiguration"
///   resource_access_role_arn = exampleAwsIamRole.arn
/// }
/// resource "aws_iam_role" "post_call_role" {
///   name               = "PostCallAccessRole"
///   assume_role_policy = data.aws_iam_getpolicydocument.transcribeAssumeRole.json
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.chimesdkmediapipelines.MediaInsightsPipelineConfiguration;
/// import com.pulumi.aws.chimesdkmediapipelines.MediaInsightsPipelineConfigurationArgs;
/// import com.pulumi.aws.chimesdkmediapipelines.inputs.MediaInsightsPipelineConfigurationElementArgs;
/// import com.pulumi.aws.chimesdkmediapipelines.inputs.MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationArgs;
/// import com.pulumi.aws.chimesdkmediapipelines.inputs.MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationPostCallAnalyticsSettingsArgs;
/// import com.pulumi.aws.chimesdkmediapipelines.inputs.MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfigurationArgs;
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
///         final var transcribeAssumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("transcribe.amazonaws.com")
///                     .build())
///                 .effect("Allow")
///                 .actions("sts:AssumeRole")
///                 .build())
///             .build());
///
///         var postCallRole = new Role("postCallRole", RoleArgs.builder()
///             .name("PostCallAccessRole")
///             .assumeRolePolicy(transcribeAssumeRole.json())
///             .build());
///
///         var myConfiguration = new MediaInsightsPipelineConfiguration("myConfiguration", MediaInsightsPipelineConfigurationArgs.builder()
///             .elements(
///                 MediaInsightsPipelineConfigurationElementArgs.builder()
///                     .amazonTranscribeCallAnalyticsProcessorConfiguration(MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationArgs.builder()
///                         .postCallAnalyticsSettings(MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationPostCallAnalyticsSettingsArgs.builder()
///                             .contentRedactionOutput("redacted")
///                             .dataAccessRoleArn(postCallRole.arn())
///                             .outputEncryptionKmsKeyId("MyKmsKeyId")
///                             .outputLocation("s3://MyBucket")
///                             .build())
///                         .callAnalyticsStreamCategories(
///                             "category_1",
///                             "category_2")
///                         .contentRedactionType("PII")
///                         .enablePartialResultsStabilization(true)
///                         .filterPartialResults(true)
///                         .languageCode("en-US")
///                         .languageModelName("MyLanguageModel")
///                         .partialResultsStability("high")
///                         .piiEntityTypes("ADDRESS,BANK_ACCOUNT_NUMBER")
///                         .vocabularyFilterMethod("mask")
///                         .vocabularyFilterName("MyVocabularyFilter")
///                         .vocabularyName("MyVocabulary")
///                         .build())
///                     .type("AmazonTranscribeCallAnalyticsProcessor")
///                     .build(),
///                 MediaInsightsPipelineConfigurationElementArgs.builder()
///                     .kinesisDataStreamSinkConfiguration(MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfigurationArgs.builder()
///                         .insightsTarget(example.arn())
///                         .build())
///                     .type("KinesisDataStreamSink")
///                     .build())
///             .name("MyCallAnalyticsConfiguration")
///             .resourceAccessRoleArn(exampleAwsIamRole.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myConfiguration:
///     type: aws:chimesdkmediapipelines:MediaInsightsPipelineConfiguration
///     name: my_configuration
///     properties:
///       elements:
///         - amazonTranscribeCallAnalyticsProcessorConfiguration:
///             postCallAnalyticsSettings:
///               contentRedactionOutput: redacted
///               dataAccessRoleArn: ${postCallRole.arn}
///               outputEncryptionKmsKeyId: MyKmsKeyId
///               outputLocation: s3://MyBucket
///             callAnalyticsStreamCategories:
///               - category_1
///               - category_2
///             contentRedactionType: PII
///             enablePartialResultsStabilization: true
///             filterPartialResults: true
///             languageCode: en-US
///             languageModelName: MyLanguageModel
///             partialResultsStability: high
///             piiEntityTypes: ADDRESS,BANK_ACCOUNT_NUMBER
///             vocabularyFilterMethod: mask
///             vocabularyFilterName: MyVocabularyFilter
///             vocabularyName: MyVocabulary
///           type: AmazonTranscribeCallAnalyticsProcessor
///         - kinesisDataStreamSinkConfiguration:
///             insightsTarget: ${example.arn}
///           type: KinesisDataStreamSink
///       name: MyCallAnalyticsConfiguration
///       resourceAccessRoleArn: ${exampleAwsIamRole.arn}
///   postCallRole:
///     type: aws:iam:Role
///     name: post_call_role
///     properties:
///       name: PostCallAccessRole
///       assumeRolePolicy: ${transcribeAssumeRole.json}
/// variables:
///   transcribeAssumeRole:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - type: Service
///                 identifiers:
///                   - transcribe.amazonaws.com
///             effect: Allow
///             actions:
///               - sts:AssumeRole
/// ```
///
///
/// ### Real time alerts usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const myConfiguration = new aws.chimesdkmediapipelines.MediaInsightsPipelineConfiguration("my_configuration", {
///     realTimeAlertConfiguration: {
///         rules: [
///             {
///                 issueDetectionConfiguration: {
///                     ruleName: "MyIssueDetectionRule",
///                 },
///                 type: "IssueDetection",
///             },
///             {
///                 keywordMatchConfiguration: {
///                     keywords: [
///                         "keyword1",
///                         "keyword2",
///                     ],
///                     negate: false,
///                     ruleName: "MyKeywordMatchRule",
///                 },
///                 type: "KeywordMatch",
///             },
///             {
///                 sentimentConfiguration: {
///                     ruleName: "MySentimentRule",
///                     sentimentType: "NEGATIVE",
///                     timePeriod: 60,
///                 },
///                 type: "Sentiment",
///             },
///         ],
///         disabled: false,
///     },
///     elements: [
///         {
///             amazonTranscribeCallAnalyticsProcessorConfiguration: {
///                 languageCode: "en-US",
///             },
///             type: "AmazonTranscribeCallAnalyticsProcessor",
///         },
///         {
///             kinesisDataStreamSinkConfiguration: {
///                 insightsTarget: example.arn,
///             },
///             type: "KinesisDataStreamSink",
///         },
///     ],
///     name: "MyRealTimeAlertConfiguration",
///     resourceAccessRoleArn: callAnalyticsRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// my_configuration = aws.chimesdkmediapipelines.MediaInsightsPipelineConfiguration("my_configuration",
///     real_time_alert_configuration={
///         "rules": [
///             {
///                 "issue_detection_configuration": {
///                     "rule_name": "MyIssueDetectionRule",
///                 },
///                 "type": "IssueDetection",
///             },
///             {
///                 "keyword_match_configuration": {
///                     "keywords": [
///                         "keyword1",
///                         "keyword2",
///                     ],
///                     "negate": False,
///                     "rule_name": "MyKeywordMatchRule",
///                 },
///                 "type": "KeywordMatch",
///             },
///             {
///                 "sentiment_configuration": {
///                     "rule_name": "MySentimentRule",
///                     "sentiment_type": "NEGATIVE",
///                     "time_period": 60,
///                 },
///                 "type": "Sentiment",
///             },
///         ],
///         "disabled": False,
///     },
///     elements=[
///         {
///             "amazon_transcribe_call_analytics_processor_configuration": {
///                 "language_code": "en-US",
///             },
///             "type": "AmazonTranscribeCallAnalyticsProcessor",
///         },
///         {
///             "kinesis_data_stream_sink_configuration": {
///                 "insights_target": example["arn"],
///             },
///             "type": "KinesisDataStreamSink",
///         },
///     ],
///     name="MyRealTimeAlertConfiguration",
///     resource_access_role_arn=call_analytics_role["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myConfiguration = new Aws.ChimeSDKMediaPipelines.MediaInsightsPipelineConfiguration("my_configuration", new()
///     {
///         RealTimeAlertConfiguration = new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationRealTimeAlertConfigurationArgs
///         {
///             Rules = new[]
///             {
///                 new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleArgs
///                 {
///                     IssueDetectionConfiguration = new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleIssueDetectionConfigurationArgs
///                     {
///                         RuleName = "MyIssueDetectionRule",
///                     },
///                     Type = "IssueDetection",
///                 },
///                 new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleArgs
///                 {
///                     KeywordMatchConfiguration = new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleKeywordMatchConfigurationArgs
///                     {
///                         Keywords = new[]
///                         {
///                             "keyword1",
///                             "keyword2",
///                         },
///                         Negate = false,
///                         RuleName = "MyKeywordMatchRule",
///                     },
///                     Type = "KeywordMatch",
///                 },
///                 new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleArgs
///                 {
///                     SentimentConfiguration = new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleSentimentConfigurationArgs
///                     {
///                         RuleName = "MySentimentRule",
///                         SentimentType = "NEGATIVE",
///                         TimePeriod = 60,
///                     },
///                     Type = "Sentiment",
///                 },
///             },
///             Disabled = false,
///         },
///         Elements = new[]
///         {
///             new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementArgs
///             {
///                 AmazonTranscribeCallAnalyticsProcessorConfiguration = new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationArgs
///                 {
///                     LanguageCode = "en-US",
///                 },
///                 Type = "AmazonTranscribeCallAnalyticsProcessor",
///             },
///             new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementArgs
///             {
///                 KinesisDataStreamSinkConfiguration = new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfigurationArgs
///                 {
///                     InsightsTarget = example.Arn,
///                 },
///                 Type = "KinesisDataStreamSink",
///             },
///         },
///         Name = "MyRealTimeAlertConfiguration",
///         ResourceAccessRoleArn = callAnalyticsRole.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/chimesdkmediapipelines"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := chimesdkmediapipelines.NewMediaInsightsPipelineConfiguration(ctx, "my_configuration", &chimesdkmediapipelines.MediaInsightsPipelineConfigurationArgs{
/// 			RealTimeAlertConfiguration: &chimesdkmediapipelines.MediaInsightsPipelineConfigurationRealTimeAlertConfigurationArgs{
/// 				Rules: chimesdkmediapipelines.MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleArray{
/// 					&chimesdkmediapipelines.MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleArgs{
/// 						IssueDetectionConfiguration: &chimesdkmediapipelines.MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleIssueDetectionConfigurationArgs{
/// 							RuleName: pulumi.String("MyIssueDetectionRule"),
/// 						},
/// 						Type: pulumi.String("IssueDetection"),
/// 					},
/// 					&chimesdkmediapipelines.MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleArgs{
/// 						KeywordMatchConfiguration: &chimesdkmediapipelines.MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleKeywordMatchConfigurationArgs{
/// 							Keywords: pulumi.StringArray{
/// 								pulumi.String("keyword1"),
/// 								pulumi.String("keyword2"),
/// 							},
/// 							Negate:   pulumi.Bool(false),
/// 							RuleName: pulumi.String("MyKeywordMatchRule"),
/// 						},
/// 						Type: pulumi.String("KeywordMatch"),
/// 					},
/// 					&chimesdkmediapipelines.MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleArgs{
/// 						SentimentConfiguration: &chimesdkmediapipelines.MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleSentimentConfigurationArgs{
/// 							RuleName:      pulumi.String("MySentimentRule"),
/// 							SentimentType: pulumi.String("NEGATIVE"),
/// 							TimePeriod:    pulumi.Int(60),
/// 						},
/// 						Type: pulumi.String("Sentiment"),
/// 					},
/// 				},
/// 				Disabled: pulumi.Bool(false),
/// 			},
/// 			Elements: chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementArray{
/// 				&chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementArgs{
/// 					AmazonTranscribeCallAnalyticsProcessorConfiguration: &chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationArgs{
/// 						LanguageCode: pulumi.String("en-US"),
/// 					},
/// 					Type: pulumi.String("AmazonTranscribeCallAnalyticsProcessor"),
/// 				},
/// 				&chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementArgs{
/// 					KinesisDataStreamSinkConfiguration: &chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfigurationArgs{
/// 						InsightsTarget: pulumi.Any(example.Arn),
/// 					},
/// 					Type: pulumi.String("KinesisDataStreamSink"),
/// 				},
/// 			},
/// 			Name:                  pulumi.String("MyRealTimeAlertConfiguration"),
/// 			ResourceAccessRoleArn: pulumi.Any(callAnalyticsRole.Arn),
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
/// resource "aws_chimesdkmediapipelines_mediainsightspipelineconfiguration" "my_configuration" {
///   real_time_alert_configuration = {
///     rules = [{
///       "issueDetectionConfiguration" = {
///         "ruleName" = "MyIssueDetectionRule"
///       }
///       "type" = "IssueDetection"
///       }, {
///       "keywordMatchConfiguration" = {
///         "keywords" = ["keyword1", "keyword2"]
///         "negate"   = false
///         "ruleName" = "MyKeywordMatchRule"
///       }
///       "type" = "KeywordMatch"
///       }, {
///       "sentimentConfiguration" = {
///         "ruleName"      = "MySentimentRule"
///         "sentimentType" = "NEGATIVE"
///         "timePeriod"    = 60
///       }
///       "type" = "Sentiment"
///     }]
///     disabled = false
///   }
///   elements {
///     amazon_transcribe_call_analytics_processor_configuration = {
///       language_code = "en-US"
///     }
///     type = "AmazonTranscribeCallAnalyticsProcessor"
///   }
///   elements {
///     kinesis_data_stream_sink_configuration = {
///       insights_target = example.arn
///     }
///     type = "KinesisDataStreamSink"
///   }
///   name                     = "MyRealTimeAlertConfiguration"
///   resource_access_role_arn = callAnalyticsRole.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.chimesdkmediapipelines.MediaInsightsPipelineConfiguration;
/// import com.pulumi.aws.chimesdkmediapipelines.MediaInsightsPipelineConfigurationArgs;
/// import com.pulumi.aws.chimesdkmediapipelines.inputs.MediaInsightsPipelineConfigurationRealTimeAlertConfigurationArgs;
/// import com.pulumi.aws.chimesdkmediapipelines.inputs.MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleArgs;
/// import com.pulumi.aws.chimesdkmediapipelines.inputs.MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleIssueDetectionConfigurationArgs;
/// import com.pulumi.aws.chimesdkmediapipelines.inputs.MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleKeywordMatchConfigurationArgs;
/// import com.pulumi.aws.chimesdkmediapipelines.inputs.MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleSentimentConfigurationArgs;
/// import com.pulumi.aws.chimesdkmediapipelines.inputs.MediaInsightsPipelineConfigurationElementArgs;
/// import com.pulumi.aws.chimesdkmediapipelines.inputs.MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationArgs;
/// import com.pulumi.aws.chimesdkmediapipelines.inputs.MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfigurationArgs;
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
///         var myConfiguration = new MediaInsightsPipelineConfiguration("myConfiguration", MediaInsightsPipelineConfigurationArgs.builder()
///             .realTimeAlertConfiguration(MediaInsightsPipelineConfigurationRealTimeAlertConfigurationArgs.builder()
///                 .rules(
///                     MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleArgs.builder()
///                         .issueDetectionConfiguration(MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleIssueDetectionConfigurationArgs.builder()
///                             .ruleName("MyIssueDetectionRule")
///                             .build())
///                         .type("IssueDetection")
///                         .build(),
///                     MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleArgs.builder()
///                         .keywordMatchConfiguration(MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleKeywordMatchConfigurationArgs.builder()
///                             .keywords(
///                                 "keyword1",
///                                 "keyword2")
///                             .negate(false)
///                             .ruleName("MyKeywordMatchRule")
///                             .build())
///                         .type("KeywordMatch")
///                         .build(),
///                     MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleArgs.builder()
///                         .sentimentConfiguration(MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleSentimentConfigurationArgs.builder()
///                             .ruleName("MySentimentRule")
///                             .sentimentType("NEGATIVE")
///                             .timePeriod(60)
///                             .build())
///                         .type("Sentiment")
///                         .build())
///                 .disabled(false)
///                 .build())
///             .elements(
///                 MediaInsightsPipelineConfigurationElementArgs.builder()
///                     .amazonTranscribeCallAnalyticsProcessorConfiguration(MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationArgs.builder()
///                         .languageCode("en-US")
///                         .build())
///                     .type("AmazonTranscribeCallAnalyticsProcessor")
///                     .build(),
///                 MediaInsightsPipelineConfigurationElementArgs.builder()
///                     .kinesisDataStreamSinkConfiguration(MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfigurationArgs.builder()
///                         .insightsTarget(example.arn())
///                         .build())
///                     .type("KinesisDataStreamSink")
///                     .build())
///             .name("MyRealTimeAlertConfiguration")
///             .resourceAccessRoleArn(callAnalyticsRole.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myConfiguration:
///     type: aws:chimesdkmediapipelines:MediaInsightsPipelineConfiguration
///     name: my_configuration
///     properties:
///       realTimeAlertConfiguration:
///         rules:
///           - issueDetectionConfiguration:
///               ruleName: MyIssueDetectionRule
///             type: IssueDetection
///           - keywordMatchConfiguration:
///               keywords:
///                 - keyword1
///                 - keyword2
///               negate: false
///               ruleName: MyKeywordMatchRule
///             type: KeywordMatch
///           - sentimentConfiguration:
///               ruleName: MySentimentRule
///               sentimentType: NEGATIVE
///               timePeriod: 60
///             type: Sentiment
///         disabled: false
///       elements:
///         - amazonTranscribeCallAnalyticsProcessorConfiguration:
///             languageCode: en-US
///           type: AmazonTranscribeCallAnalyticsProcessor
///         - kinesisDataStreamSinkConfiguration:
///             insightsTarget: ${example.arn}
///           type: KinesisDataStreamSink
///       name: MyRealTimeAlertConfiguration
///       resourceAccessRoleArn: ${callAnalyticsRole.arn}
/// ```
///
///
/// ### Transcribe processor usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const myConfiguration = new aws.chimesdkmediapipelines.MediaInsightsPipelineConfiguration("my_configuration", {
///     elements: [
///         {
///             amazonTranscribeProcessorConfiguration: {
///                 contentIdentificationType: "PII",
///                 enablePartialResultsStabilization: true,
///                 filterPartialResults: true,
///                 languageCode: "en-US",
///                 languageModelName: "MyLanguageModel",
///                 partialResultsStability: "high",
///                 piiEntityTypes: "ADDRESS,BANK_ACCOUNT_NUMBER",
///                 showSpeakerLabel: true,
///                 vocabularyFilterMethod: "mask",
///                 vocabularyFilterName: "MyVocabularyFilter",
///                 vocabularyName: "MyVocabulary",
///             },
///             type: "AmazonTranscribeProcessor",
///         },
///         {
///             kinesisDataStreamSinkConfiguration: {
///                 insightsTarget: example.arn,
///             },
///             type: "KinesisDataStreamSink",
///         },
///     ],
///     name: "MyTranscribeConfiguration",
///     resourceAccessRoleArn: exampleAwsIamRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// my_configuration = aws.chimesdkmediapipelines.MediaInsightsPipelineConfiguration("my_configuration",
///     elements=[
///         {
///             "amazon_transcribe_processor_configuration": {
///                 "content_identification_type": "PII",
///                 "enable_partial_results_stabilization": True,
///                 "filter_partial_results": True,
///                 "language_code": "en-US",
///                 "language_model_name": "MyLanguageModel",
///                 "partial_results_stability": "high",
///                 "pii_entity_types": "ADDRESS,BANK_ACCOUNT_NUMBER",
///                 "show_speaker_label": True,
///                 "vocabulary_filter_method": "mask",
///                 "vocabulary_filter_name": "MyVocabularyFilter",
///                 "vocabulary_name": "MyVocabulary",
///             },
///             "type": "AmazonTranscribeProcessor",
///         },
///         {
///             "kinesis_data_stream_sink_configuration": {
///                 "insights_target": example["arn"],
///             },
///             "type": "KinesisDataStreamSink",
///         },
///     ],
///     name="MyTranscribeConfiguration",
///     resource_access_role_arn=example_aws_iam_role["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myConfiguration = new Aws.ChimeSDKMediaPipelines.MediaInsightsPipelineConfiguration("my_configuration", new()
///     {
///         Elements = new[]
///         {
///             new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementArgs
///             {
///                 AmazonTranscribeProcessorConfiguration = new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementAmazonTranscribeProcessorConfigurationArgs
///                 {
///                     ContentIdentificationType = "PII",
///                     EnablePartialResultsStabilization = true,
///                     FilterPartialResults = true,
///                     LanguageCode = "en-US",
///                     LanguageModelName = "MyLanguageModel",
///                     PartialResultsStability = "high",
///                     PiiEntityTypes = "ADDRESS,BANK_ACCOUNT_NUMBER",
///                     ShowSpeakerLabel = true,
///                     VocabularyFilterMethod = "mask",
///                     VocabularyFilterName = "MyVocabularyFilter",
///                     VocabularyName = "MyVocabulary",
///                 },
///                 Type = "AmazonTranscribeProcessor",
///             },
///             new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementArgs
///             {
///                 KinesisDataStreamSinkConfiguration = new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfigurationArgs
///                 {
///                     InsightsTarget = example.Arn,
///                 },
///                 Type = "KinesisDataStreamSink",
///             },
///         },
///         Name = "MyTranscribeConfiguration",
///         ResourceAccessRoleArn = exampleAwsIamRole.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/chimesdkmediapipelines"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := chimesdkmediapipelines.NewMediaInsightsPipelineConfiguration(ctx, "my_configuration", &chimesdkmediapipelines.MediaInsightsPipelineConfigurationArgs{
/// 			Elements: chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementArray{
/// 				&chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementArgs{
/// 					AmazonTranscribeProcessorConfiguration: &chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementAmazonTranscribeProcessorConfigurationArgs{
/// 						ContentIdentificationType:         pulumi.String("PII"),
/// 						EnablePartialResultsStabilization: pulumi.Bool(true),
/// 						FilterPartialResults:              pulumi.Bool(true),
/// 						LanguageCode:                      pulumi.String("en-US"),
/// 						LanguageModelName:                 pulumi.String("MyLanguageModel"),
/// 						PartialResultsStability:           pulumi.String("high"),
/// 						PiiEntityTypes:                    pulumi.String("ADDRESS,BANK_ACCOUNT_NUMBER"),
/// 						ShowSpeakerLabel:                  pulumi.Bool(true),
/// 						VocabularyFilterMethod:            pulumi.String("mask"),
/// 						VocabularyFilterName:              pulumi.String("MyVocabularyFilter"),
/// 						VocabularyName:                    pulumi.String("MyVocabulary"),
/// 					},
/// 					Type: pulumi.String("AmazonTranscribeProcessor"),
/// 				},
/// 				&chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementArgs{
/// 					KinesisDataStreamSinkConfiguration: &chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfigurationArgs{
/// 						InsightsTarget: pulumi.Any(example.Arn),
/// 					},
/// 					Type: pulumi.String("KinesisDataStreamSink"),
/// 				},
/// 			},
/// 			Name:                  pulumi.String("MyTranscribeConfiguration"),
/// 			ResourceAccessRoleArn: pulumi.Any(exampleAwsIamRole.Arn),
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
/// resource "aws_chimesdkmediapipelines_mediainsightspipelineconfiguration" "my_configuration" {
///   elements {
///     amazon_transcribe_processor_configuration = {
///       content_identification_type          = "PII"
///       enable_partial_results_stabilization = true
///       filter_partial_results               = true
///       language_code                        = "en-US"
///       language_model_name                  = "MyLanguageModel"
///       partial_results_stability            = "high"
///       pii_entity_types                     = "ADDRESS,BANK_ACCOUNT_NUMBER"
///       show_speaker_label                   = true
///       vocabulary_filter_method             = "mask"
///       vocabulary_filter_name               = "MyVocabularyFilter"
///       vocabulary_name                      = "MyVocabulary"
///     }
///     type = "AmazonTranscribeProcessor"
///   }
///   elements {
///     kinesis_data_stream_sink_configuration = {
///       insights_target = example.arn
///     }
///     type = "KinesisDataStreamSink"
///   }
///   name                     = "MyTranscribeConfiguration"
///   resource_access_role_arn = exampleAwsIamRole.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.chimesdkmediapipelines.MediaInsightsPipelineConfiguration;
/// import com.pulumi.aws.chimesdkmediapipelines.MediaInsightsPipelineConfigurationArgs;
/// import com.pulumi.aws.chimesdkmediapipelines.inputs.MediaInsightsPipelineConfigurationElementArgs;
/// import com.pulumi.aws.chimesdkmediapipelines.inputs.MediaInsightsPipelineConfigurationElementAmazonTranscribeProcessorConfigurationArgs;
/// import com.pulumi.aws.chimesdkmediapipelines.inputs.MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfigurationArgs;
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
///         var myConfiguration = new MediaInsightsPipelineConfiguration("myConfiguration", MediaInsightsPipelineConfigurationArgs.builder()
///             .elements(
///                 MediaInsightsPipelineConfigurationElementArgs.builder()
///                     .amazonTranscribeProcessorConfiguration(MediaInsightsPipelineConfigurationElementAmazonTranscribeProcessorConfigurationArgs.builder()
///                         .contentIdentificationType("PII")
///                         .enablePartialResultsStabilization(true)
///                         .filterPartialResults(true)
///                         .languageCode("en-US")
///                         .languageModelName("MyLanguageModel")
///                         .partialResultsStability("high")
///                         .piiEntityTypes("ADDRESS,BANK_ACCOUNT_NUMBER")
///                         .showSpeakerLabel(true)
///                         .vocabularyFilterMethod("mask")
///                         .vocabularyFilterName("MyVocabularyFilter")
///                         .vocabularyName("MyVocabulary")
///                         .build())
///                     .type("AmazonTranscribeProcessor")
///                     .build(),
///                 MediaInsightsPipelineConfigurationElementArgs.builder()
///                     .kinesisDataStreamSinkConfiguration(MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfigurationArgs.builder()
///                         .insightsTarget(example.arn())
///                         .build())
///                     .type("KinesisDataStreamSink")
///                     .build())
///             .name("MyTranscribeConfiguration")
///             .resourceAccessRoleArn(exampleAwsIamRole.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myConfiguration:
///     type: aws:chimesdkmediapipelines:MediaInsightsPipelineConfiguration
///     name: my_configuration
///     properties:
///       elements:
///         - amazonTranscribeProcessorConfiguration:
///             contentIdentificationType: PII
///             enablePartialResultsStabilization: true
///             filterPartialResults: true
///             languageCode: en-US
///             languageModelName: MyLanguageModel
///             partialResultsStability: high
///             piiEntityTypes: ADDRESS,BANK_ACCOUNT_NUMBER
///             showSpeakerLabel: true
///             vocabularyFilterMethod: mask
///             vocabularyFilterName: MyVocabularyFilter
///             vocabularyName: MyVocabulary
///           type: AmazonTranscribeProcessor
///         - kinesisDataStreamSinkConfiguration:
///             insightsTarget: ${example.arn}
///           type: KinesisDataStreamSink
///       name: MyTranscribeConfiguration
///       resourceAccessRoleArn: ${exampleAwsIamRole.arn}
/// ```
///
///
/// ### Voice analytics processor usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const myConfiguration = new aws.chimesdkmediapipelines.MediaInsightsPipelineConfiguration("my_configuration", {
///     elements: [
///         {
///             voiceAnalyticsProcessorConfiguration: {
///                 speakerSearchStatus: "Enabled",
///                 voiceToneAnalysisStatus: "Enabled",
///             },
///             type: "VoiceAnalyticsProcessor",
///         },
///         {
///             lambdaFunctionSinkConfiguration: {
///                 insightsTarget: "arn:aws:lambda:us-west-2:1111111111:function:MyFunction",
///             },
///             type: "LambdaFunctionSink",
///         },
///         {
///             snsTopicSinkConfiguration: {
///                 insightsTarget: "arn:aws:sns:us-west-2:1111111111:topic/MyTopic",
///             },
///             type: "SnsTopicSink",
///         },
///         {
///             sqsQueueSinkConfiguration: {
///                 insightsTarget: "arn:aws:sqs:us-west-2:1111111111:queue/MyQueue",
///             },
///             type: "SqsQueueSink",
///         },
///         {
///             kinesisDataStreamSinkConfiguration: {
///                 insightsTarget: test.arn,
///             },
///             type: "KinesisDataStreamSink",
///         },
///     ],
///     name: "MyVoiceAnalyticsConfiguration",
///     resourceAccessRoleArn: example.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// my_configuration = aws.chimesdkmediapipelines.MediaInsightsPipelineConfiguration("my_configuration",
///     elements=[
///         {
///             "voice_analytics_processor_configuration": {
///                 "speaker_search_status": "Enabled",
///                 "voice_tone_analysis_status": "Enabled",
///             },
///             "type": "VoiceAnalyticsProcessor",
///         },
///         {
///             "lambda_function_sink_configuration": {
///                 "insights_target": "arn:aws:lambda:us-west-2:1111111111:function:MyFunction",
///             },
///             "type": "LambdaFunctionSink",
///         },
///         {
///             "sns_topic_sink_configuration": {
///                 "insights_target": "arn:aws:sns:us-west-2:1111111111:topic/MyTopic",
///             },
///             "type": "SnsTopicSink",
///         },
///         {
///             "sqs_queue_sink_configuration": {
///                 "insights_target": "arn:aws:sqs:us-west-2:1111111111:queue/MyQueue",
///             },
///             "type": "SqsQueueSink",
///         },
///         {
///             "kinesis_data_stream_sink_configuration": {
///                 "insights_target": test["arn"],
///             },
///             "type": "KinesisDataStreamSink",
///         },
///     ],
///     name="MyVoiceAnalyticsConfiguration",
///     resource_access_role_arn=example["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myConfiguration = new Aws.ChimeSDKMediaPipelines.MediaInsightsPipelineConfiguration("my_configuration", new()
///     {
///         Elements = new[]
///         {
///             new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementArgs
///             {
///                 VoiceAnalyticsProcessorConfiguration = new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementVoiceAnalyticsProcessorConfigurationArgs
///                 {
///                     SpeakerSearchStatus = "Enabled",
///                     VoiceToneAnalysisStatus = "Enabled",
///                 },
///                 Type = "VoiceAnalyticsProcessor",
///             },
///             new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementArgs
///             {
///                 LambdaFunctionSinkConfiguration = new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementLambdaFunctionSinkConfigurationArgs
///                 {
///                     InsightsTarget = "arn:aws:lambda:us-west-2:1111111111:function:MyFunction",
///                 },
///                 Type = "LambdaFunctionSink",
///             },
///             new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementArgs
///             {
///                 SnsTopicSinkConfiguration = new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementSnsTopicSinkConfigurationArgs
///                 {
///                     InsightsTarget = "arn:aws:sns:us-west-2:1111111111:topic/MyTopic",
///                 },
///                 Type = "SnsTopicSink",
///             },
///             new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementArgs
///             {
///                 SqsQueueSinkConfiguration = new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementSqsQueueSinkConfigurationArgs
///                 {
///                     InsightsTarget = "arn:aws:sqs:us-west-2:1111111111:queue/MyQueue",
///                 },
///                 Type = "SqsQueueSink",
///             },
///             new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementArgs
///             {
///                 KinesisDataStreamSinkConfiguration = new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfigurationArgs
///                 {
///                     InsightsTarget = test.Arn,
///                 },
///                 Type = "KinesisDataStreamSink",
///             },
///         },
///         Name = "MyVoiceAnalyticsConfiguration",
///         ResourceAccessRoleArn = example.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/chimesdkmediapipelines"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := chimesdkmediapipelines.NewMediaInsightsPipelineConfiguration(ctx, "my_configuration", &chimesdkmediapipelines.MediaInsightsPipelineConfigurationArgs{
/// 			Elements: chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementArray{
/// 				&chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementArgs{
/// 					VoiceAnalyticsProcessorConfiguration: &chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementVoiceAnalyticsProcessorConfigurationArgs{
/// 						SpeakerSearchStatus:     pulumi.String("Enabled"),
/// 						VoiceToneAnalysisStatus: pulumi.String("Enabled"),
/// 					},
/// 					Type: pulumi.String("VoiceAnalyticsProcessor"),
/// 				},
/// 				&chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementArgs{
/// 					LambdaFunctionSinkConfiguration: &chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementLambdaFunctionSinkConfigurationArgs{
/// 						InsightsTarget: pulumi.String("arn:aws:lambda:us-west-2:1111111111:function:MyFunction"),
/// 					},
/// 					Type: pulumi.String("LambdaFunctionSink"),
/// 				},
/// 				&chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementArgs{
/// 					SnsTopicSinkConfiguration: &chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementSnsTopicSinkConfigurationArgs{
/// 						InsightsTarget: pulumi.String("arn:aws:sns:us-west-2:1111111111:topic/MyTopic"),
/// 					},
/// 					Type: pulumi.String("SnsTopicSink"),
/// 				},
/// 				&chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementArgs{
/// 					SqsQueueSinkConfiguration: &chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementSqsQueueSinkConfigurationArgs{
/// 						InsightsTarget: pulumi.String("arn:aws:sqs:us-west-2:1111111111:queue/MyQueue"),
/// 					},
/// 					Type: pulumi.String("SqsQueueSink"),
/// 				},
/// 				&chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementArgs{
/// 					KinesisDataStreamSinkConfiguration: &chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfigurationArgs{
/// 						InsightsTarget: pulumi.Any(test.Arn),
/// 					},
/// 					Type: pulumi.String("KinesisDataStreamSink"),
/// 				},
/// 			},
/// 			Name:                  pulumi.String("MyVoiceAnalyticsConfiguration"),
/// 			ResourceAccessRoleArn: pulumi.Any(example.Arn),
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
/// resource "aws_chimesdkmediapipelines_mediainsightspipelineconfiguration" "my_configuration" {
///   elements {
///     voice_analytics_processor_configuration = {
///       speaker_search_status      = "Enabled"
///       voice_tone_analysis_status = "Enabled"
///     }
///     type = "VoiceAnalyticsProcessor"
///   }
///   elements {
///     lambda_function_sink_configuration = {
///       insights_target = "arn:aws:lambda:us-west-2:1111111111:function:MyFunction"
///     }
///     type = "LambdaFunctionSink"
///   }
///   elements {
///     sns_topic_sink_configuration = {
///       insights_target = "arn:aws:sns:us-west-2:1111111111:topic/MyTopic"
///     }
///     type = "SnsTopicSink"
///   }
///   elements {
///     sqs_queue_sink_configuration = {
///       insights_target = "arn:aws:sqs:us-west-2:1111111111:queue/MyQueue"
///     }
///     type = "SqsQueueSink"
///   }
///   elements {
///     kinesis_data_stream_sink_configuration = {
///       insights_target = test.arn
///     }
///     type = "KinesisDataStreamSink"
///   }
///   name                     = "MyVoiceAnalyticsConfiguration"
///   resource_access_role_arn = example.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.chimesdkmediapipelines.MediaInsightsPipelineConfiguration;
/// import com.pulumi.aws.chimesdkmediapipelines.MediaInsightsPipelineConfigurationArgs;
/// import com.pulumi.aws.chimesdkmediapipelines.inputs.MediaInsightsPipelineConfigurationElementArgs;
/// import com.pulumi.aws.chimesdkmediapipelines.inputs.MediaInsightsPipelineConfigurationElementVoiceAnalyticsProcessorConfigurationArgs;
/// import com.pulumi.aws.chimesdkmediapipelines.inputs.MediaInsightsPipelineConfigurationElementLambdaFunctionSinkConfigurationArgs;
/// import com.pulumi.aws.chimesdkmediapipelines.inputs.MediaInsightsPipelineConfigurationElementSnsTopicSinkConfigurationArgs;
/// import com.pulumi.aws.chimesdkmediapipelines.inputs.MediaInsightsPipelineConfigurationElementSqsQueueSinkConfigurationArgs;
/// import com.pulumi.aws.chimesdkmediapipelines.inputs.MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfigurationArgs;
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
///         var myConfiguration = new MediaInsightsPipelineConfiguration("myConfiguration", MediaInsightsPipelineConfigurationArgs.builder()
///             .elements(
///                 MediaInsightsPipelineConfigurationElementArgs.builder()
///                     .voiceAnalyticsProcessorConfiguration(MediaInsightsPipelineConfigurationElementVoiceAnalyticsProcessorConfigurationArgs.builder()
///                         .speakerSearchStatus("Enabled")
///                         .voiceToneAnalysisStatus("Enabled")
///                         .build())
///                     .type("VoiceAnalyticsProcessor")
///                     .build(),
///                 MediaInsightsPipelineConfigurationElementArgs.builder()
///                     .lambdaFunctionSinkConfiguration(MediaInsightsPipelineConfigurationElementLambdaFunctionSinkConfigurationArgs.builder()
///                         .insightsTarget("arn:aws:lambda:us-west-2:1111111111:function:MyFunction")
///                         .build())
///                     .type("LambdaFunctionSink")
///                     .build(),
///                 MediaInsightsPipelineConfigurationElementArgs.builder()
///                     .snsTopicSinkConfiguration(MediaInsightsPipelineConfigurationElementSnsTopicSinkConfigurationArgs.builder()
///                         .insightsTarget("arn:aws:sns:us-west-2:1111111111:topic/MyTopic")
///                         .build())
///                     .type("SnsTopicSink")
///                     .build(),
///                 MediaInsightsPipelineConfigurationElementArgs.builder()
///                     .sqsQueueSinkConfiguration(MediaInsightsPipelineConfigurationElementSqsQueueSinkConfigurationArgs.builder()
///                         .insightsTarget("arn:aws:sqs:us-west-2:1111111111:queue/MyQueue")
///                         .build())
///                     .type("SqsQueueSink")
///                     .build(),
///                 MediaInsightsPipelineConfigurationElementArgs.builder()
///                     .kinesisDataStreamSinkConfiguration(MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfigurationArgs.builder()
///                         .insightsTarget(test.arn())
///                         .build())
///                     .type("KinesisDataStreamSink")
///                     .build())
///             .name("MyVoiceAnalyticsConfiguration")
///             .resourceAccessRoleArn(example.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myConfiguration:
///     type: aws:chimesdkmediapipelines:MediaInsightsPipelineConfiguration
///     name: my_configuration
///     properties:
///       elements:
///         - voiceAnalyticsProcessorConfiguration:
///             speakerSearchStatus: Enabled
///             voiceToneAnalysisStatus: Enabled
///           type: VoiceAnalyticsProcessor
///         - lambdaFunctionSinkConfiguration:
///             insightsTarget: arn:aws:lambda:us-west-2:1111111111:function:MyFunction
///           type: LambdaFunctionSink
///         - snsTopicSinkConfiguration:
///             insightsTarget: arn:aws:sns:us-west-2:1111111111:topic/MyTopic
///           type: SnsTopicSink
///         - sqsQueueSinkConfiguration:
///             insightsTarget: arn:aws:sqs:us-west-2:1111111111:queue/MyQueue
///           type: SqsQueueSink
///         - kinesisDataStreamSinkConfiguration:
///             insightsTarget: ${test.arn}
///           type: KinesisDataStreamSink
///       name: MyVoiceAnalyticsConfiguration
///       resourceAccessRoleArn: ${example.arn}
/// ```
///
///
/// ### S3 Recording sink usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const myConfiguration = new aws.chimesdkmediapipelines.MediaInsightsPipelineConfiguration("my_configuration", {
///     elements: [{
///         s3RecordingSinkConfiguration: {
///             destination: "arn:aws:s3:::MyBucket",
///         },
///         type: "S3RecordingSink",
///     }],
///     name: "MyS3RecordingConfiguration",
///     resourceAccessRoleArn: example.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// my_configuration = aws.chimesdkmediapipelines.MediaInsightsPipelineConfiguration("my_configuration",
///     elements=[{
///         "s3_recording_sink_configuration": {
///             "destination": "arn:aws:s3:::MyBucket",
///         },
///         "type": "S3RecordingSink",
///     }],
///     name="MyS3RecordingConfiguration",
///     resource_access_role_arn=example["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myConfiguration = new Aws.ChimeSDKMediaPipelines.MediaInsightsPipelineConfiguration("my_configuration", new()
///     {
///         Elements = new[]
///         {
///             new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementArgs
///             {
///                 S3RecordingSinkConfiguration = new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementS3RecordingSinkConfigurationArgs
///                 {
///                     Destination = "arn:aws:s3:::MyBucket",
///                 },
///                 Type = "S3RecordingSink",
///             },
///         },
///         Name = "MyS3RecordingConfiguration",
///         ResourceAccessRoleArn = example.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/chimesdkmediapipelines"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := chimesdkmediapipelines.NewMediaInsightsPipelineConfiguration(ctx, "my_configuration", &chimesdkmediapipelines.MediaInsightsPipelineConfigurationArgs{
/// 			Elements: chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementArray{
/// 				&chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementArgs{
/// 					S3RecordingSinkConfiguration: &chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementS3RecordingSinkConfigurationArgs{
/// 						Destination: pulumi.String("arn:aws:s3:::MyBucket"),
/// 					},
/// 					Type: pulumi.String("S3RecordingSink"),
/// 				},
/// 			},
/// 			Name:                  pulumi.String("MyS3RecordingConfiguration"),
/// 			ResourceAccessRoleArn: pulumi.Any(example.Arn),
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
/// resource "aws_chimesdkmediapipelines_mediainsightspipelineconfiguration" "my_configuration" {
///   elements {
///     s3_recording_sink_configuration = {
///       destination = "arn:aws:s3:::MyBucket"
///     }
///     type = "S3RecordingSink"
///   }
///   name                     = "MyS3RecordingConfiguration"
///   resource_access_role_arn = example.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.chimesdkmediapipelines.MediaInsightsPipelineConfiguration;
/// import com.pulumi.aws.chimesdkmediapipelines.MediaInsightsPipelineConfigurationArgs;
/// import com.pulumi.aws.chimesdkmediapipelines.inputs.MediaInsightsPipelineConfigurationElementArgs;
/// import com.pulumi.aws.chimesdkmediapipelines.inputs.MediaInsightsPipelineConfigurationElementS3RecordingSinkConfigurationArgs;
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
///         var myConfiguration = new MediaInsightsPipelineConfiguration("myConfiguration", MediaInsightsPipelineConfigurationArgs.builder()
///             .elements(MediaInsightsPipelineConfigurationElementArgs.builder()
///                 .s3RecordingSinkConfiguration(MediaInsightsPipelineConfigurationElementS3RecordingSinkConfigurationArgs.builder()
///                     .destination("arn:aws:s3:::MyBucket")
///                     .build())
///                 .type("S3RecordingSink")
///                 .build())
///             .name("MyS3RecordingConfiguration")
///             .resourceAccessRoleArn(example.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myConfiguration:
///     type: aws:chimesdkmediapipelines:MediaInsightsPipelineConfiguration
///     name: my_configuration
///     properties:
///       elements:
///         - s3RecordingSinkConfiguration:
///             destination: arn:aws:s3:::MyBucket
///           type: S3RecordingSink
///       name: MyS3RecordingConfiguration
///       resourceAccessRoleArn: ${example.arn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) ARN of the Chime SDK media insights pipeline configuration.
///
///
/// Using `pulumi import`, import Chime SDK Media Pipelines Media Insights Pipeline Configuration using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:chimesdkmediapipelines/mediaInsightsPipelineConfiguration:MediaInsightsPipelineConfiguration example abcdef123456
/// ```
class MediaInsightsPipelineConfiguration extends pulumi.CustomResource {
  /// ARN of the Media Insights Pipeline Configuration.
  late final pulumi.Output<String> arn;
  /// Collection of processors and sinks to transform media and deliver data.
  late final pulumi.Output<List<MediaInsightsPipelineConfigurationElement>> elements;
  /// Configuration name.
  late final pulumi.Output<String> name;
  /// Configuration for real-time alert rules to send EventBridge notifications when certain conditions are met.
  late final pulumi.Output<MediaInsightsPipelineConfigurationRealTimeAlertConfiguration?> realTimeAlertConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of IAM Role used by service to invoke processors and sinks specified by configuration elements.
  late final pulumi.Output<String> resourceAccessRoleArn;
  /// Key-value map of tags for the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [MediaInsightsPipelineConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MediaInsightsPipelineConfiguration]. {@macro pulumi_chimesdkmediapipelines_media_insights_pipeline_configuration_media_insights_pipeline_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MediaInsightsPipelineConfiguration(
    String name, {
    MediaInsightsPipelineConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:chimesdkmediapipelines/mediaInsightsPipelineConfiguration:MediaInsightsPipelineConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    elements = registerOutput<List<MediaInsightsPipelineConfigurationElement>>('elements', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MediaInsightsPipelineConfigurationElement>(guardedValue, (value) => MediaInsightsPipelineConfigurationElement.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    realTimeAlertConfiguration = registerOutput<MediaInsightsPipelineConfigurationRealTimeAlertConfiguration?>('realTimeAlertConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MediaInsightsPipelineConfigurationRealTimeAlertConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    resourceAccessRoleArn = registerOutput<String>('resourceAccessRoleArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [MediaInsightsPipelineConfiguration] resource's state with the given [name] and [id].
  static MediaInsightsPipelineConfiguration get(
    String name,
    pulumi.Input<String> id, {
    MediaInsightsPipelineConfigurationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return MediaInsightsPipelineConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  MediaInsightsPipelineConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:chimesdkmediapipelines/mediaInsightsPipelineConfiguration:MediaInsightsPipelineConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    elements = registerOutput<List<MediaInsightsPipelineConfigurationElement>>('elements', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MediaInsightsPipelineConfigurationElement>(guardedValue, (value) => MediaInsightsPipelineConfigurationElement.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    realTimeAlertConfiguration = registerOutput<MediaInsightsPipelineConfigurationRealTimeAlertConfiguration?>('realTimeAlertConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MediaInsightsPipelineConfigurationRealTimeAlertConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    resourceAccessRoleArn = registerOutput<String>('resourceAccessRoleArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [MediaInsightsPipelineConfiguration] resource.
  MediaInsightsPipelineConfiguration.reference(String urn)
    : super(
        'aws:chimesdkmediapipelines/mediaInsightsPipelineConfiguration:MediaInsightsPipelineConfiguration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    elements = registerOutput<List<MediaInsightsPipelineConfigurationElement>>('elements', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MediaInsightsPipelineConfigurationElement>(guardedValue, (value) => MediaInsightsPipelineConfigurationElement.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    realTimeAlertConfiguration = registerOutput<MediaInsightsPipelineConfigurationRealTimeAlertConfiguration?>('realTimeAlertConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MediaInsightsPipelineConfigurationRealTimeAlertConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    resourceAccessRoleArn = registerOutput<String>('resourceAccessRoleArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
