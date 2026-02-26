import 'package:pulumi/pulumi.dart';
import '../media_insights_pipeline_configuration_element/media_insights_pipeline_configuration_element.dart';
import '../media_insights_pipeline_configuration_real_time_alert_configuration/media_insights_pipeline_configuration_real_time_alert_configuration.dart';
import 'media_insights_pipeline_configuration_args.dart';

/// Resource for managing an AWS Chime SDK Media Pipelines Media Insights Pipeline Configuration.
/// Consult the [Call analytics developer guide](https://docs.aws.amazon.com/chime-sdk/latest/dg/call-analytics.html) for more detailed information about usage.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kinesis.Stream("example", {
/// name: "example",
/// shardCount: 2,
/// });
/// const mediaPipelinesAssumeRole = aws.iam.getPolicyDocument({
/// statements: [{
/// effect: "Allow",
/// principals: [{
/// type: "Service",
/// identifiers: ["mediapipelines.chime.amazonaws.com"],
/// }],
/// actions: ["sts:AssumeRole"],
/// }],
/// });
/// const callAnalyticsRole = new aws.iam.Role("call_analytics_role", {
/// name: "CallAnalyticsRole",
/// assumeRolePolicy: mediaPipelinesAssumeRole.then(mediaPipelinesAssumeRole => mediaPipelinesAssumeRole.json),
/// });
/// const myConfiguration = new aws.chimesdkmediapipelines.MediaInsightsPipelineConfiguration("my_configuration", {
/// name: "MyBasicConfiguration",
/// resourceAccessRoleArn: callAnalyticsRole.arn,
/// elements: [
/// {
/// type: "AmazonTranscribeCallAnalyticsProcessor",
/// amazonTranscribeCallAnalyticsProcessorConfiguration: {
/// languageCode: "en-US",
/// },
/// },
/// {
/// type: "KinesisDataStreamSink",
/// kinesisDataStreamSinkConfiguration: {
/// insightsTarget: example.arn,
/// },
/// },
/// ],
/// tags: {
/// Key1: "Value1",
/// Key2: "Value2",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kinesis.Stream("example",
/// name="example",
/// shard_count=2)
/// media_pipelines_assume_role = aws.iam.get_policy_document(statements=[{
/// "effect": "Allow",
/// "principals": [{
/// "type": "Service",
/// "identifiers": ["mediapipelines.chime.amazonaws.com"],
/// }],
/// "actions": ["sts:AssumeRole"],
/// }])
/// call_analytics_role = aws.iam.Role("call_analytics_role",
/// name="CallAnalyticsRole",
/// assume_role_policy=media_pipelines_assume_role.json)
/// my_configuration = aws.chimesdkmediapipelines.MediaInsightsPipelineConfiguration("my_configuration",
/// name="MyBasicConfiguration",
/// resource_access_role_arn=call_analytics_role.arn,
/// elements=[
/// {
/// "type": "AmazonTranscribeCallAnalyticsProcessor",
/// "amazon_transcribe_call_analytics_processor_configuration": {
/// "language_code": "en-US",
/// },
/// },
/// {
/// "type": "KinesisDataStreamSink",
/// "kinesis_data_stream_sink_configuration": {
/// "insights_target": example.arn,
/// },
/// },
/// ],
/// tags={
/// "Key1": "Value1",
/// "Key2": "Value2",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Kinesis.Stream("example", new()
/// {
/// Name = "example",
/// ShardCount = 2,
/// });
///
/// var mediaPipelinesAssumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Effect = "Allow",
/// Principals = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
/// {
/// Type = "Service",
/// Identifiers = new[]
/// {
/// "mediapipelines.chime.amazonaws.com",
/// },
/// },
/// },
/// Actions = new[]
/// {
/// "sts:AssumeRole",
/// },
/// },
/// },
/// });
///
/// var callAnalyticsRole = new Aws.Iam.Role("call_analytics_role", new()
/// {
/// Name = "CallAnalyticsRole",
/// AssumeRolePolicy = mediaPipelinesAssumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// var myConfiguration = new Aws.ChimeSDKMediaPipelines.MediaInsightsPipelineConfiguration("my_configuration", new()
/// {
/// Name = "MyBasicConfiguration",
/// ResourceAccessRoleArn = callAnalyticsRole.Arn,
/// Elements = new[]
/// {
/// new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementArgs
/// {
/// Type = "AmazonTranscribeCallAnalyticsProcessor",
/// AmazonTranscribeCallAnalyticsProcessorConfiguration = new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationArgs
/// {
/// LanguageCode = "en-US",
/// },
/// },
/// new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementArgs
/// {
/// Type = "KinesisDataStreamSink",
/// KinesisDataStreamSinkConfiguration = new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfigurationArgs
/// {
/// InsightsTarget = example.Arn,
/// },
/// },
/// },
/// Tags =
/// {
/// { "Key1", "Value1" },
/// { "Key2", "Value2" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/chimesdkmediapipelines"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := kinesis.NewStream(ctx, "example", &kinesis.StreamArgs{
/// Name:       pulumi.String("example"),
/// ShardCount: pulumi.Int(2),
/// })
/// if err != nil {
/// return err
/// }
/// mediaPipelinesAssumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Effect: pulumi.StringRef("Allow"),
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Type: "Service",
/// Identifiers: []string{
/// "mediapipelines.chime.amazonaws.com",
/// },
/// },
/// },
/// Actions: []string{
/// "sts:AssumeRole",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// callAnalyticsRole, err := iam.NewRole(ctx, "call_analytics_role", &iam.RoleArgs{
/// Name:             pulumi.String("CallAnalyticsRole"),
/// AssumeRolePolicy: pulumi.String(mediaPipelinesAssumeRole.Json),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = chimesdkmediapipelines.NewMediaInsightsPipelineConfiguration(ctx, "my_configuration", &chimesdkmediapipelines.MediaInsightsPipelineConfigurationArgs{
/// Name:                  pulumi.String("MyBasicConfiguration"),
/// ResourceAccessRoleArn: callAnalyticsRole.Arn,
/// Elements: chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementArray{
/// &chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementArgs{
/// Type: pulumi.String("AmazonTranscribeCallAnalyticsProcessor"),
/// AmazonTranscribeCallAnalyticsProcessorConfiguration: &chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationArgs{
/// LanguageCode: pulumi.String("en-US"),
/// },
/// },
/// &chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementArgs{
/// Type: pulumi.String("KinesisDataStreamSink"),
/// KinesisDataStreamSinkConfiguration: &chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfigurationArgs{
/// InsightsTarget: example.Arn,
/// },
/// },
/// },
/// Tags: pulumi.StringMap{
/// "Key1": pulumi.String("Value1"),
/// "Key2": pulumi.String("Value2"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.chimesdkmediapipelines.MediaInsightsPipelineConfiguration;
/// import com.pulumi.aws.chimesdkmediapipelines.MediaInsightsPipelineConfigurationArgs;
/// import com.pulumi.aws.chimesdkmediapipelines.inputs.MediaInsightsPipelineConfigurationElementArgs;
/// import com.pulumi.aws.chimesdkmediapipelines.inputs.MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationArgs;
/// import com.pulumi.aws.chimesdkmediapipelines.inputs.MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfigurationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Stream("example", StreamArgs.builder()
/// .name("example")
/// .shardCount(2)
/// .build());
///
/// final var mediaPipelinesAssumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .effect("Allow")
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("Service")
/// .identifiers("mediapipelines.chime.amazonaws.com")
/// .build())
/// .actions("sts:AssumeRole")
/// .build())
/// .build());
///
/// var callAnalyticsRole = new Role("callAnalyticsRole", RoleArgs.builder()
/// .name("CallAnalyticsRole")
/// .assumeRolePolicy(mediaPipelinesAssumeRole.json())
/// .build());
///
/// var myConfiguration = new MediaInsightsPipelineConfiguration("myConfiguration", MediaInsightsPipelineConfigurationArgs.builder()
/// .name("MyBasicConfiguration")
/// .resourceAccessRoleArn(callAnalyticsRole.arn())
/// .elements(
/// MediaInsightsPipelineConfigurationElementArgs.builder()
/// .type("AmazonTranscribeCallAnalyticsProcessor")
/// .amazonTranscribeCallAnalyticsProcessorConfiguration(MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationArgs.builder()
/// .languageCode("en-US")
/// .build())
/// .build(),
/// MediaInsightsPipelineConfigurationElementArgs.builder()
/// .type("KinesisDataStreamSink")
/// .kinesisDataStreamSinkConfiguration(MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfigurationArgs.builder()
/// .insightsTarget(example.arn())
/// .build())
/// .build())
/// .tags(Map.ofEntries(
/// Map.entry("Key1", "Value1"),
/// Map.entry("Key2", "Value2")
/// ))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// myConfiguration:
/// type: aws:chimesdkmediapipelines:MediaInsightsPipelineConfiguration
/// name: my_configuration
/// properties:
/// name: MyBasicConfiguration
/// resourceAccessRoleArn: ${callAnalyticsRole.arn}
/// elements:
/// - type: AmazonTranscribeCallAnalyticsProcessor
/// amazonTranscribeCallAnalyticsProcessorConfiguration:
/// languageCode: en-US
/// - type: KinesisDataStreamSink
/// kinesisDataStreamSinkConfiguration:
/// insightsTarget: ${example.arn}
/// tags:
/// Key1: Value1
/// Key2: Value2
/// example:
/// type: aws:kinesis:Stream
/// properties:
/// name: example
/// shardCount: 2
/// callAnalyticsRole:
/// type: aws:iam:Role
/// name: call_analytics_role
/// properties:
/// name: CallAnalyticsRole
/// assumeRolePolicy: ${mediaPipelinesAssumeRole.json}
/// variables:
/// mediaPipelinesAssumeRole:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - effect: Allow
/// principals:
/// - type: Service
/// identifiers:
/// - mediapipelines.chime.amazonaws.com
/// actions:
/// - sts:AssumeRole
/// ```
/// <!--End PulumiCodeChooser -->
///
/// - The required policies on <span pulumi-lang-nodejs="`callAnalyticsRole`" pulumi-lang-dotnet="`CallAnalyticsRole`" pulumi-lang-go="`callAnalyticsRole`" pulumi-lang-python="`call_analytics_role`" pulumi-lang-yaml="`callAnalyticsRole`" pulumi-lang-java="`callAnalyticsRole`">`call_analytics_role`</span> will vary based on the selected processors. See [Call analytics resource access role](https://docs.aws.amazon.com/chime-sdk/latest/dg/ca-resource-access-role.html) for directions on choosing appropriate policies.
///
/// ### Transcribe Call Analytics processor usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const transcribeAssumeRole = aws.iam.getPolicyDocument({
/// statements: [{
/// effect: "Allow",
/// principals: [{
/// type: "Service",
/// identifiers: ["transcribe.amazonaws.com"],
/// }],
/// actions: ["sts:AssumeRole"],
/// }],
/// });
/// const postCallRole = new aws.iam.Role("post_call_role", {
/// name: "PostCallAccessRole",
/// assumeRolePolicy: transcribeAssumeRole.then(transcribeAssumeRole => transcribeAssumeRole.json),
/// });
/// const myConfiguration = new aws.chimesdkmediapipelines.MediaInsightsPipelineConfiguration("my_configuration", {
/// name: "MyCallAnalyticsConfiguration",
/// resourceAccessRoleArn: exampleAwsIamRole.arn,
/// elements: [
/// {
/// type: "AmazonTranscribeCallAnalyticsProcessor",
/// amazonTranscribeCallAnalyticsProcessorConfiguration: {
/// callAnalyticsStreamCategories: [
/// "category_1",
/// "category_2",
/// ],
/// contentRedactionType: "PII",
/// enablePartialResultsStabilization: true,
/// filterPartialResults: true,
/// languageCode: "en-US",
/// languageModelName: "MyLanguageModel",
/// partialResultsStability: "high",
/// piiEntityTypes: "ADDRESS,BANK_ACCOUNT_NUMBER",
/// postCallAnalyticsSettings: {
/// contentRedactionOutput: "redacted",
/// dataAccessRoleArn: postCallRole.arn,
/// outputEncryptionKmsKeyId: "MyKmsKeyId",
/// outputLocation: "s3://MyBucket",
/// },
/// vocabularyFilterMethod: "mask",
/// vocabularyFilterName: "MyVocabularyFilter",
/// vocabularyName: "MyVocabulary",
/// },
/// },
/// {
/// type: "KinesisDataStreamSink",
/// kinesisDataStreamSinkConfiguration: {
/// insightsTarget: example.arn,
/// },
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// transcribe_assume_role = aws.iam.get_policy_document(statements=[{
/// "effect": "Allow",
/// "principals": [{
/// "type": "Service",
/// "identifiers": ["transcribe.amazonaws.com"],
/// }],
/// "actions": ["sts:AssumeRole"],
/// }])
/// post_call_role = aws.iam.Role("post_call_role",
/// name="PostCallAccessRole",
/// assume_role_policy=transcribe_assume_role.json)
/// my_configuration = aws.chimesdkmediapipelines.MediaInsightsPipelineConfiguration("my_configuration",
/// name="MyCallAnalyticsConfiguration",
/// resource_access_role_arn=example_aws_iam_role["arn"],
/// elements=[
/// {
/// "type": "AmazonTranscribeCallAnalyticsProcessor",
/// "amazon_transcribe_call_analytics_processor_configuration": {
/// "call_analytics_stream_categories": [
/// "category_1",
/// "category_2",
/// ],
/// "content_redaction_type": "PII",
/// "enable_partial_results_stabilization": True,
/// "filter_partial_results": True,
/// "language_code": "en-US",
/// "language_model_name": "MyLanguageModel",
/// "partial_results_stability": "high",
/// "pii_entity_types": "ADDRESS,BANK_ACCOUNT_NUMBER",
/// "post_call_analytics_settings": {
/// "content_redaction_output": "redacted",
/// "data_access_role_arn": post_call_role.arn,
/// "output_encryption_kms_key_id": "MyKmsKeyId",
/// "output_location": "s3://MyBucket",
/// },
/// "vocabulary_filter_method": "mask",
/// "vocabulary_filter_name": "MyVocabularyFilter",
/// "vocabulary_name": "MyVocabulary",
/// },
/// },
/// {
/// "type": "KinesisDataStreamSink",
/// "kinesis_data_stream_sink_configuration": {
/// "insights_target": example["arn"],
/// },
/// },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var transcribeAssumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Effect = "Allow",
/// Principals = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
/// {
/// Type = "Service",
/// Identifiers = new[]
/// {
/// "transcribe.amazonaws.com",
/// },
/// },
/// },
/// Actions = new[]
/// {
/// "sts:AssumeRole",
/// },
/// },
/// },
/// });
///
/// var postCallRole = new Aws.Iam.Role("post_call_role", new()
/// {
/// Name = "PostCallAccessRole",
/// AssumeRolePolicy = transcribeAssumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// var myConfiguration = new Aws.ChimeSDKMediaPipelines.MediaInsightsPipelineConfiguration("my_configuration", new()
/// {
/// Name = "MyCallAnalyticsConfiguration",
/// ResourceAccessRoleArn = exampleAwsIamRole.Arn,
/// Elements = new[]
/// {
/// new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementArgs
/// {
/// Type = "AmazonTranscribeCallAnalyticsProcessor",
/// AmazonTranscribeCallAnalyticsProcessorConfiguration = new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationArgs
/// {
/// CallAnalyticsStreamCategories = new[]
/// {
/// "category_1",
/// "category_2",
/// },
/// ContentRedactionType = "PII",
/// EnablePartialResultsStabilization = true,
/// FilterPartialResults = true,
/// LanguageCode = "en-US",
/// LanguageModelName = "MyLanguageModel",
/// PartialResultsStability = "high",
/// PiiEntityTypes = "ADDRESS,BANK_ACCOUNT_NUMBER",
/// PostCallAnalyticsSettings = new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationPostCallAnalyticsSettingsArgs
/// {
/// ContentRedactionOutput = "redacted",
/// DataAccessRoleArn = postCallRole.Arn,
/// OutputEncryptionKmsKeyId = "MyKmsKeyId",
/// OutputLocation = "s3://MyBucket",
/// },
/// VocabularyFilterMethod = "mask",
/// VocabularyFilterName = "MyVocabularyFilter",
/// VocabularyName = "MyVocabulary",
/// },
/// },
/// new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementArgs
/// {
/// Type = "KinesisDataStreamSink",
/// KinesisDataStreamSinkConfiguration = new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfigurationArgs
/// {
/// InsightsTarget = example.Arn,
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/chimesdkmediapipelines"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// transcribeAssumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Effect: pulumi.StringRef("Allow"),
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Type: "Service",
/// Identifiers: []string{
/// "transcribe.amazonaws.com",
/// },
/// },
/// },
/// Actions: []string{
/// "sts:AssumeRole",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// postCallRole, err := iam.NewRole(ctx, "post_call_role", &iam.RoleArgs{
/// Name:             pulumi.String("PostCallAccessRole"),
/// AssumeRolePolicy: pulumi.String(transcribeAssumeRole.Json),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = chimesdkmediapipelines.NewMediaInsightsPipelineConfiguration(ctx, "my_configuration", &chimesdkmediapipelines.MediaInsightsPipelineConfigurationArgs{
/// Name:                  pulumi.String("MyCallAnalyticsConfiguration"),
/// ResourceAccessRoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// Elements: chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementArray{
/// &chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementArgs{
/// Type: pulumi.String("AmazonTranscribeCallAnalyticsProcessor"),
/// AmazonTranscribeCallAnalyticsProcessorConfiguration: &chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationArgs{
/// CallAnalyticsStreamCategories: pulumi.StringArray{
/// pulumi.String("category_1"),
/// pulumi.String("category_2"),
/// },
/// ContentRedactionType:              pulumi.String("PII"),
/// EnablePartialResultsStabilization: pulumi.Bool(true),
/// FilterPartialResults:              pulumi.Bool(true),
/// LanguageCode:                      pulumi.String("en-US"),
/// LanguageModelName:                 pulumi.String("MyLanguageModel"),
/// PartialResultsStability:           pulumi.String("high"),
/// PiiEntityTypes:                    pulumi.String("ADDRESS,BANK_ACCOUNT_NUMBER"),
/// PostCallAnalyticsSettings: &chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationPostCallAnalyticsSettingsArgs{
/// ContentRedactionOutput:   pulumi.String("redacted"),
/// DataAccessRoleArn:        postCallRole.Arn,
/// OutputEncryptionKmsKeyId: pulumi.String("MyKmsKeyId"),
/// OutputLocation:           pulumi.String("s3://MyBucket"),
/// },
/// VocabularyFilterMethod: pulumi.String("mask"),
/// VocabularyFilterName:   pulumi.String("MyVocabularyFilter"),
/// VocabularyName:         pulumi.String("MyVocabulary"),
/// },
/// },
/// &chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementArgs{
/// Type: pulumi.String("KinesisDataStreamSink"),
/// KinesisDataStreamSinkConfiguration: &chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfigurationArgs{
/// InsightsTarget: pulumi.Any(example.Arn),
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.chimesdkmediapipelines.MediaInsightsPipelineConfiguration;
/// import com.pulumi.aws.chimesdkmediapipelines.MediaInsightsPipelineConfigurationArgs;
/// import com.pulumi.aws.chimesdkmediapipelines.inputs.MediaInsightsPipelineConfigurationElementArgs;
/// import com.pulumi.aws.chimesdkmediapipelines.inputs.MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationArgs;
/// import com.pulumi.aws.chimesdkmediapipelines.inputs.MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationPostCallAnalyticsSettingsArgs;
/// import com.pulumi.aws.chimesdkmediapipelines.inputs.MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfigurationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var transcribeAssumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .effect("Allow")
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("Service")
/// .identifiers("transcribe.amazonaws.com")
/// .build())
/// .actions("sts:AssumeRole")
/// .build())
/// .build());
///
/// var postCallRole = new Role("postCallRole", RoleArgs.builder()
/// .name("PostCallAccessRole")
/// .assumeRolePolicy(transcribeAssumeRole.json())
/// .build());
///
/// var myConfiguration = new MediaInsightsPipelineConfiguration("myConfiguration", MediaInsightsPipelineConfigurationArgs.builder()
/// .name("MyCallAnalyticsConfiguration")
/// .resourceAccessRoleArn(exampleAwsIamRole.arn())
/// .elements(
/// MediaInsightsPipelineConfigurationElementArgs.builder()
/// .type("AmazonTranscribeCallAnalyticsProcessor")
/// .amazonTranscribeCallAnalyticsProcessorConfiguration(MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationArgs.builder()
/// .callAnalyticsStreamCategories(
/// "category_1",
/// "category_2")
/// .contentRedactionType("PII")
/// .enablePartialResultsStabilization(true)
/// .filterPartialResults(true)
/// .languageCode("en-US")
/// .languageModelName("MyLanguageModel")
/// .partialResultsStability("high")
/// .piiEntityTypes("ADDRESS,BANK_ACCOUNT_NUMBER")
/// .postCallAnalyticsSettings(MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationPostCallAnalyticsSettingsArgs.builder()
/// .contentRedactionOutput("redacted")
/// .dataAccessRoleArn(postCallRole.arn())
/// .outputEncryptionKmsKeyId("MyKmsKeyId")
/// .outputLocation("s3://MyBucket")
/// .build())
/// .vocabularyFilterMethod("mask")
/// .vocabularyFilterName("MyVocabularyFilter")
/// .vocabularyName("MyVocabulary")
/// .build())
/// .build(),
/// MediaInsightsPipelineConfigurationElementArgs.builder()
/// .type("KinesisDataStreamSink")
/// .kinesisDataStreamSinkConfiguration(MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfigurationArgs.builder()
/// .insightsTarget(example.arn())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// myConfiguration:
/// type: aws:chimesdkmediapipelines:MediaInsightsPipelineConfiguration
/// name: my_configuration
/// properties:
/// name: MyCallAnalyticsConfiguration
/// resourceAccessRoleArn: ${exampleAwsIamRole.arn}
/// elements:
/// - type: AmazonTranscribeCallAnalyticsProcessor
/// amazonTranscribeCallAnalyticsProcessorConfiguration:
/// callAnalyticsStreamCategories:
/// - category_1
/// - category_2
/// contentRedactionType: PII
/// enablePartialResultsStabilization: true
/// filterPartialResults: true
/// languageCode: en-US
/// languageModelName: MyLanguageModel
/// partialResultsStability: high
/// piiEntityTypes: ADDRESS,BANK_ACCOUNT_NUMBER
/// postCallAnalyticsSettings:
/// contentRedactionOutput: redacted
/// dataAccessRoleArn: ${postCallRole.arn}
/// outputEncryptionKmsKeyId: MyKmsKeyId
/// outputLocation: s3://MyBucket
/// vocabularyFilterMethod: mask
/// vocabularyFilterName: MyVocabularyFilter
/// vocabularyName: MyVocabulary
/// - type: KinesisDataStreamSink
/// kinesisDataStreamSinkConfiguration:
/// insightsTarget: ${example.arn}
/// postCallRole:
/// type: aws:iam:Role
/// name: post_call_role
/// properties:
/// name: PostCallAccessRole
/// assumeRolePolicy: ${transcribeAssumeRole.json}
/// variables:
/// transcribeAssumeRole:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - effect: Allow
/// principals:
/// - type: Service
/// identifiers:
/// - transcribe.amazonaws.com
/// actions:
/// - sts:AssumeRole
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Real time alerts usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const myConfiguration = new aws.chimesdkmediapipelines.MediaInsightsPipelineConfiguration("my_configuration", {
/// name: "MyRealTimeAlertConfiguration",
/// resourceAccessRoleArn: callAnalyticsRole.arn,
/// elements: [
/// {
/// type: "AmazonTranscribeCallAnalyticsProcessor",
/// amazonTranscribeCallAnalyticsProcessorConfiguration: {
/// languageCode: "en-US",
/// },
/// },
/// {
/// type: "KinesisDataStreamSink",
/// kinesisDataStreamSinkConfiguration: {
/// insightsTarget: example.arn,
/// },
/// },
/// ],
/// realTimeAlertConfiguration: {
/// disabled: false,
/// rules: [
/// {
/// type: "IssueDetection",
/// issueDetectionConfiguration: {
/// ruleName: "MyIssueDetectionRule",
/// },
/// },
/// {
/// type: "KeywordMatch",
/// keywordMatchConfiguration: {
/// keywords: [
/// "keyword1",
/// "keyword2",
/// ],
/// negate: false,
/// ruleName: "MyKeywordMatchRule",
/// },
/// },
/// {
/// type: "Sentiment",
/// sentimentConfiguration: {
/// ruleName: "MySentimentRule",
/// sentimentType: "NEGATIVE",
/// timePeriod: 60,
/// },
/// },
/// ],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// my_configuration = aws.chimesdkmediapipelines.MediaInsightsPipelineConfiguration("my_configuration",
/// name="MyRealTimeAlertConfiguration",
/// resource_access_role_arn=call_analytics_role["arn"],
/// elements=[
/// {
/// "type": "AmazonTranscribeCallAnalyticsProcessor",
/// "amazon_transcribe_call_analytics_processor_configuration": {
/// "language_code": "en-US",
/// },
/// },
/// {
/// "type": "KinesisDataStreamSink",
/// "kinesis_data_stream_sink_configuration": {
/// "insights_target": example["arn"],
/// },
/// },
/// ],
/// real_time_alert_configuration={
/// "disabled": False,
/// "rules": [
/// {
/// "type": "IssueDetection",
/// "issue_detection_configuration": {
/// "rule_name": "MyIssueDetectionRule",
/// },
/// },
/// {
/// "type": "KeywordMatch",
/// "keyword_match_configuration": {
/// "keywords": [
/// "keyword1",
/// "keyword2",
/// ],
/// "negate": False,
/// "rule_name": "MyKeywordMatchRule",
/// },
/// },
/// {
/// "type": "Sentiment",
/// "sentiment_configuration": {
/// "rule_name": "MySentimentRule",
/// "sentiment_type": "NEGATIVE",
/// "time_period": 60,
/// },
/// },
/// ],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myConfiguration = new Aws.ChimeSDKMediaPipelines.MediaInsightsPipelineConfiguration("my_configuration", new()
/// {
/// Name = "MyRealTimeAlertConfiguration",
/// ResourceAccessRoleArn = callAnalyticsRole.Arn,
/// Elements = new[]
/// {
/// new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementArgs
/// {
/// Type = "AmazonTranscribeCallAnalyticsProcessor",
/// AmazonTranscribeCallAnalyticsProcessorConfiguration = new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationArgs
/// {
/// LanguageCode = "en-US",
/// },
/// },
/// new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementArgs
/// {
/// Type = "KinesisDataStreamSink",
/// KinesisDataStreamSinkConfiguration = new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfigurationArgs
/// {
/// InsightsTarget = example.Arn,
/// },
/// },
/// },
/// RealTimeAlertConfiguration = new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationRealTimeAlertConfigurationArgs
/// {
/// Disabled = false,
/// Rules = new[]
/// {
/// new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleArgs
/// {
/// Type = "IssueDetection",
/// IssueDetectionConfiguration = new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleIssueDetectionConfigurationArgs
/// {
/// RuleName = "MyIssueDetectionRule",
/// },
/// },
/// new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleArgs
/// {
/// Type = "KeywordMatch",
/// KeywordMatchConfiguration = new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleKeywordMatchConfigurationArgs
/// {
/// Keywords = new[]
/// {
/// "keyword1",
/// "keyword2",
/// },
/// Negate = false,
/// RuleName = "MyKeywordMatchRule",
/// },
/// },
/// new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleArgs
/// {
/// Type = "Sentiment",
/// SentimentConfiguration = new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleSentimentConfigurationArgs
/// {
/// RuleName = "MySentimentRule",
/// SentimentType = "NEGATIVE",
/// TimePeriod = 60,
/// },
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/chimesdkmediapipelines"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := chimesdkmediapipelines.NewMediaInsightsPipelineConfiguration(ctx, "my_configuration", &chimesdkmediapipelines.MediaInsightsPipelineConfigurationArgs{
/// Name:                  pulumi.String("MyRealTimeAlertConfiguration"),
/// ResourceAccessRoleArn: pulumi.Any(callAnalyticsRole.Arn),
/// Elements: chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementArray{
/// &chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementArgs{
/// Type: pulumi.String("AmazonTranscribeCallAnalyticsProcessor"),
/// AmazonTranscribeCallAnalyticsProcessorConfiguration: &chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationArgs{
/// LanguageCode: pulumi.String("en-US"),
/// },
/// },
/// &chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementArgs{
/// Type: pulumi.String("KinesisDataStreamSink"),
/// KinesisDataStreamSinkConfiguration: &chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfigurationArgs{
/// InsightsTarget: pulumi.Any(example.Arn),
/// },
/// },
/// },
/// RealTimeAlertConfiguration: &chimesdkmediapipelines.MediaInsightsPipelineConfigurationRealTimeAlertConfigurationArgs{
/// Disabled: pulumi.Bool(false),
/// Rules: chimesdkmediapipelines.MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleArray{
/// &chimesdkmediapipelines.MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleArgs{
/// Type: pulumi.String("IssueDetection"),
/// IssueDetectionConfiguration: &chimesdkmediapipelines.MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleIssueDetectionConfigurationArgs{
/// RuleName: pulumi.String("MyIssueDetectionRule"),
/// },
/// },
/// &chimesdkmediapipelines.MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleArgs{
/// Type: pulumi.String("KeywordMatch"),
/// KeywordMatchConfiguration: &chimesdkmediapipelines.MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleKeywordMatchConfigurationArgs{
/// Keywords: pulumi.StringArray{
/// pulumi.String("keyword1"),
/// pulumi.String("keyword2"),
/// },
/// Negate:   pulumi.Bool(false),
/// RuleName: pulumi.String("MyKeywordMatchRule"),
/// },
/// },
/// &chimesdkmediapipelines.MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleArgs{
/// Type: pulumi.String("Sentiment"),
/// SentimentConfiguration: &chimesdkmediapipelines.MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleSentimentConfigurationArgs{
/// RuleName:      pulumi.String("MySentimentRule"),
/// SentimentType: pulumi.String("NEGATIVE"),
/// TimePeriod:    pulumi.Int(60),
/// },
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import com.pulumi.aws.chimesdkmediapipelines.inputs.MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationArgs;
/// import com.pulumi.aws.chimesdkmediapipelines.inputs.MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfigurationArgs;
/// import com.pulumi.aws.chimesdkmediapipelines.inputs.MediaInsightsPipelineConfigurationRealTimeAlertConfigurationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var myConfiguration = new MediaInsightsPipelineConfiguration("myConfiguration", MediaInsightsPipelineConfigurationArgs.builder()
/// .name("MyRealTimeAlertConfiguration")
/// .resourceAccessRoleArn(callAnalyticsRole.arn())
/// .elements(
/// MediaInsightsPipelineConfigurationElementArgs.builder()
/// .type("AmazonTranscribeCallAnalyticsProcessor")
/// .amazonTranscribeCallAnalyticsProcessorConfiguration(MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationArgs.builder()
/// .languageCode("en-US")
/// .build())
/// .build(),
/// MediaInsightsPipelineConfigurationElementArgs.builder()
/// .type("KinesisDataStreamSink")
/// .kinesisDataStreamSinkConfiguration(MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfigurationArgs.builder()
/// .insightsTarget(example.arn())
/// .build())
/// .build())
/// .realTimeAlertConfiguration(MediaInsightsPipelineConfigurationRealTimeAlertConfigurationArgs.builder()
/// .disabled(false)
/// .rules(
/// MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleArgs.builder()
/// .type("IssueDetection")
/// .issueDetectionConfiguration(MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleIssueDetectionConfigurationArgs.builder()
/// .ruleName("MyIssueDetectionRule")
/// .build())
/// .build(),
/// MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleArgs.builder()
/// .type("KeywordMatch")
/// .keywordMatchConfiguration(MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleKeywordMatchConfigurationArgs.builder()
/// .keywords(
/// "keyword1",
/// "keyword2")
/// .negate(false)
/// .ruleName("MyKeywordMatchRule")
/// .build())
/// .build(),
/// MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleArgs.builder()
/// .type("Sentiment")
/// .sentimentConfiguration(MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleSentimentConfigurationArgs.builder()
/// .ruleName("MySentimentRule")
/// .sentimentType("NEGATIVE")
/// .timePeriod(60)
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// myConfiguration:
/// type: aws:chimesdkmediapipelines:MediaInsightsPipelineConfiguration
/// name: my_configuration
/// properties:
/// name: MyRealTimeAlertConfiguration
/// resourceAccessRoleArn: ${callAnalyticsRole.arn}
/// elements:
/// - type: AmazonTranscribeCallAnalyticsProcessor
/// amazonTranscribeCallAnalyticsProcessorConfiguration:
/// languageCode: en-US
/// - type: KinesisDataStreamSink
/// kinesisDataStreamSinkConfiguration:
/// insightsTarget: ${example.arn}
/// realTimeAlertConfiguration:
/// disabled: false
/// rules:
/// - type: IssueDetection
/// issueDetectionConfiguration:
/// ruleName: MyIssueDetectionRule
/// - type: KeywordMatch
/// keywordMatchConfiguration:
/// keywords:
/// - keyword1
/// - keyword2
/// negate: false
/// ruleName: MyKeywordMatchRule
/// - type: Sentiment
/// sentimentConfiguration:
/// ruleName: MySentimentRule
/// sentimentType: NEGATIVE
/// timePeriod: 60
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Transcribe processor usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const myConfiguration = new aws.chimesdkmediapipelines.MediaInsightsPipelineConfiguration("my_configuration", {
/// name: "MyTranscribeConfiguration",
/// resourceAccessRoleArn: exampleAwsIamRole.arn,
/// elements: [
/// {
/// type: "AmazonTranscribeProcessor",
/// amazonTranscribeProcessorConfiguration: {
/// contentIdentificationType: "PII",
/// enablePartialResultsStabilization: true,
/// filterPartialResults: true,
/// languageCode: "en-US",
/// languageModelName: "MyLanguageModel",
/// partialResultsStability: "high",
/// piiEntityTypes: "ADDRESS,BANK_ACCOUNT_NUMBER",
/// showSpeakerLabel: true,
/// vocabularyFilterMethod: "mask",
/// vocabularyFilterName: "MyVocabularyFilter",
/// vocabularyName: "MyVocabulary",
/// },
/// },
/// {
/// type: "KinesisDataStreamSink",
/// kinesisDataStreamSinkConfiguration: {
/// insightsTarget: example.arn,
/// },
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// my_configuration = aws.chimesdkmediapipelines.MediaInsightsPipelineConfiguration("my_configuration",
/// name="MyTranscribeConfiguration",
/// resource_access_role_arn=example_aws_iam_role["arn"],
/// elements=[
/// {
/// "type": "AmazonTranscribeProcessor",
/// "amazon_transcribe_processor_configuration": {
/// "content_identification_type": "PII",
/// "enable_partial_results_stabilization": True,
/// "filter_partial_results": True,
/// "language_code": "en-US",
/// "language_model_name": "MyLanguageModel",
/// "partial_results_stability": "high",
/// "pii_entity_types": "ADDRESS,BANK_ACCOUNT_NUMBER",
/// "show_speaker_label": True,
/// "vocabulary_filter_method": "mask",
/// "vocabulary_filter_name": "MyVocabularyFilter",
/// "vocabulary_name": "MyVocabulary",
/// },
/// },
/// {
/// "type": "KinesisDataStreamSink",
/// "kinesis_data_stream_sink_configuration": {
/// "insights_target": example["arn"],
/// },
/// },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myConfiguration = new Aws.ChimeSDKMediaPipelines.MediaInsightsPipelineConfiguration("my_configuration", new()
/// {
/// Name = "MyTranscribeConfiguration",
/// ResourceAccessRoleArn = exampleAwsIamRole.Arn,
/// Elements = new[]
/// {
/// new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementArgs
/// {
/// Type = "AmazonTranscribeProcessor",
/// AmazonTranscribeProcessorConfiguration = new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementAmazonTranscribeProcessorConfigurationArgs
/// {
/// ContentIdentificationType = "PII",
/// EnablePartialResultsStabilization = true,
/// FilterPartialResults = true,
/// LanguageCode = "en-US",
/// LanguageModelName = "MyLanguageModel",
/// PartialResultsStability = "high",
/// PiiEntityTypes = "ADDRESS,BANK_ACCOUNT_NUMBER",
/// ShowSpeakerLabel = true,
/// VocabularyFilterMethod = "mask",
/// VocabularyFilterName = "MyVocabularyFilter",
/// VocabularyName = "MyVocabulary",
/// },
/// },
/// new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementArgs
/// {
/// Type = "KinesisDataStreamSink",
/// KinesisDataStreamSinkConfiguration = new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfigurationArgs
/// {
/// InsightsTarget = example.Arn,
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/chimesdkmediapipelines"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := chimesdkmediapipelines.NewMediaInsightsPipelineConfiguration(ctx, "my_configuration", &chimesdkmediapipelines.MediaInsightsPipelineConfigurationArgs{
/// Name:                  pulumi.String("MyTranscribeConfiguration"),
/// ResourceAccessRoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// Elements: chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementArray{
/// &chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementArgs{
/// Type: pulumi.String("AmazonTranscribeProcessor"),
/// AmazonTranscribeProcessorConfiguration: &chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementAmazonTranscribeProcessorConfigurationArgs{
/// ContentIdentificationType:         pulumi.String("PII"),
/// EnablePartialResultsStabilization: pulumi.Bool(true),
/// FilterPartialResults:              pulumi.Bool(true),
/// LanguageCode:                      pulumi.String("en-US"),
/// LanguageModelName:                 pulumi.String("MyLanguageModel"),
/// PartialResultsStability:           pulumi.String("high"),
/// PiiEntityTypes:                    pulumi.String("ADDRESS,BANK_ACCOUNT_NUMBER"),
/// ShowSpeakerLabel:                  pulumi.Bool(true),
/// VocabularyFilterMethod:            pulumi.String("mask"),
/// VocabularyFilterName:              pulumi.String("MyVocabularyFilter"),
/// VocabularyName:                    pulumi.String("MyVocabulary"),
/// },
/// },
/// &chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementArgs{
/// Type: pulumi.String("KinesisDataStreamSink"),
/// KinesisDataStreamSinkConfiguration: &chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfigurationArgs{
/// InsightsTarget: pulumi.Any(example.Arn),
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var myConfiguration = new MediaInsightsPipelineConfiguration("myConfiguration", MediaInsightsPipelineConfigurationArgs.builder()
/// .name("MyTranscribeConfiguration")
/// .resourceAccessRoleArn(exampleAwsIamRole.arn())
/// .elements(
/// MediaInsightsPipelineConfigurationElementArgs.builder()
/// .type("AmazonTranscribeProcessor")
/// .amazonTranscribeProcessorConfiguration(MediaInsightsPipelineConfigurationElementAmazonTranscribeProcessorConfigurationArgs.builder()
/// .contentIdentificationType("PII")
/// .enablePartialResultsStabilization(true)
/// .filterPartialResults(true)
/// .languageCode("en-US")
/// .languageModelName("MyLanguageModel")
/// .partialResultsStability("high")
/// .piiEntityTypes("ADDRESS,BANK_ACCOUNT_NUMBER")
/// .showSpeakerLabel(true)
/// .vocabularyFilterMethod("mask")
/// .vocabularyFilterName("MyVocabularyFilter")
/// .vocabularyName("MyVocabulary")
/// .build())
/// .build(),
/// MediaInsightsPipelineConfigurationElementArgs.builder()
/// .type("KinesisDataStreamSink")
/// .kinesisDataStreamSinkConfiguration(MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfigurationArgs.builder()
/// .insightsTarget(example.arn())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// myConfiguration:
/// type: aws:chimesdkmediapipelines:MediaInsightsPipelineConfiguration
/// name: my_configuration
/// properties:
/// name: MyTranscribeConfiguration
/// resourceAccessRoleArn: ${exampleAwsIamRole.arn}
/// elements:
/// - type: AmazonTranscribeProcessor
/// amazonTranscribeProcessorConfiguration:
/// contentIdentificationType: PII
/// enablePartialResultsStabilization: true
/// filterPartialResults: true
/// languageCode: en-US
/// languageModelName: MyLanguageModel
/// partialResultsStability: high
/// piiEntityTypes: ADDRESS,BANK_ACCOUNT_NUMBER
/// showSpeakerLabel: true
/// vocabularyFilterMethod: mask
/// vocabularyFilterName: MyVocabularyFilter
/// vocabularyName: MyVocabulary
/// - type: KinesisDataStreamSink
/// kinesisDataStreamSinkConfiguration:
/// insightsTarget: ${example.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Voice analytics processor usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const myConfiguration = new aws.chimesdkmediapipelines.MediaInsightsPipelineConfiguration("my_configuration", {
/// name: "MyVoiceAnalyticsConfiguration",
/// resourceAccessRoleArn: example.arn,
/// elements: [
/// {
/// type: "VoiceAnalyticsProcessor",
/// voiceAnalyticsProcessorConfiguration: {
/// speakerSearchStatus: "Enabled",
/// voiceToneAnalysisStatus: "Enabled",
/// },
/// },
/// {
/// type: "LambdaFunctionSink",
/// lambdaFunctionSinkConfiguration: {
/// insightsTarget: "arn:aws:lambda:us-west-2:1111111111:function:MyFunction",
/// },
/// },
/// {
/// type: "SnsTopicSink",
/// snsTopicSinkConfiguration: {
/// insightsTarget: "arn:aws:sns:us-west-2:1111111111:topic/MyTopic",
/// },
/// },
/// {
/// type: "SqsQueueSink",
/// sqsQueueSinkConfiguration: {
/// insightsTarget: "arn:aws:sqs:us-west-2:1111111111:queue/MyQueue",
/// },
/// },
/// {
/// type: "KinesisDataStreamSink",
/// kinesisDataStreamSinkConfiguration: {
/// insightsTarget: test.arn,
/// },
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// my_configuration = aws.chimesdkmediapipelines.MediaInsightsPipelineConfiguration("my_configuration",
/// name="MyVoiceAnalyticsConfiguration",
/// resource_access_role_arn=example["arn"],
/// elements=[
/// {
/// "type": "VoiceAnalyticsProcessor",
/// "voice_analytics_processor_configuration": {
/// "speaker_search_status": "Enabled",
/// "voice_tone_analysis_status": "Enabled",
/// },
/// },
/// {
/// "type": "LambdaFunctionSink",
/// "lambda_function_sink_configuration": {
/// "insights_target": "arn:aws:lambda:us-west-2:1111111111:function:MyFunction",
/// },
/// },
/// {
/// "type": "SnsTopicSink",
/// "sns_topic_sink_configuration": {
/// "insights_target": "arn:aws:sns:us-west-2:1111111111:topic/MyTopic",
/// },
/// },
/// {
/// "type": "SqsQueueSink",
/// "sqs_queue_sink_configuration": {
/// "insights_target": "arn:aws:sqs:us-west-2:1111111111:queue/MyQueue",
/// },
/// },
/// {
/// "type": "KinesisDataStreamSink",
/// "kinesis_data_stream_sink_configuration": {
/// "insights_target": test["arn"],
/// },
/// },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myConfiguration = new Aws.ChimeSDKMediaPipelines.MediaInsightsPipelineConfiguration("my_configuration", new()
/// {
/// Name = "MyVoiceAnalyticsConfiguration",
/// ResourceAccessRoleArn = example.Arn,
/// Elements = new[]
/// {
/// new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementArgs
/// {
/// Type = "VoiceAnalyticsProcessor",
/// VoiceAnalyticsProcessorConfiguration = new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementVoiceAnalyticsProcessorConfigurationArgs
/// {
/// SpeakerSearchStatus = "Enabled",
/// VoiceToneAnalysisStatus = "Enabled",
/// },
/// },
/// new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementArgs
/// {
/// Type = "LambdaFunctionSink",
/// LambdaFunctionSinkConfiguration = new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementLambdaFunctionSinkConfigurationArgs
/// {
/// InsightsTarget = "arn:aws:lambda:us-west-2:1111111111:function:MyFunction",
/// },
/// },
/// new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementArgs
/// {
/// Type = "SnsTopicSink",
/// SnsTopicSinkConfiguration = new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementSnsTopicSinkConfigurationArgs
/// {
/// InsightsTarget = "arn:aws:sns:us-west-2:1111111111:topic/MyTopic",
/// },
/// },
/// new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementArgs
/// {
/// Type = "SqsQueueSink",
/// SqsQueueSinkConfiguration = new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementSqsQueueSinkConfigurationArgs
/// {
/// InsightsTarget = "arn:aws:sqs:us-west-2:1111111111:queue/MyQueue",
/// },
/// },
/// new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementArgs
/// {
/// Type = "KinesisDataStreamSink",
/// KinesisDataStreamSinkConfiguration = new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfigurationArgs
/// {
/// InsightsTarget = test.Arn,
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/chimesdkmediapipelines"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := chimesdkmediapipelines.NewMediaInsightsPipelineConfiguration(ctx, "my_configuration", &chimesdkmediapipelines.MediaInsightsPipelineConfigurationArgs{
/// Name:                  pulumi.String("MyVoiceAnalyticsConfiguration"),
/// ResourceAccessRoleArn: pulumi.Any(example.Arn),
/// Elements: chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementArray{
/// &chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementArgs{
/// Type: pulumi.String("VoiceAnalyticsProcessor"),
/// VoiceAnalyticsProcessorConfiguration: &chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementVoiceAnalyticsProcessorConfigurationArgs{
/// SpeakerSearchStatus:     pulumi.String("Enabled"),
/// VoiceToneAnalysisStatus: pulumi.String("Enabled"),
/// },
/// },
/// &chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementArgs{
/// Type: pulumi.String("LambdaFunctionSink"),
/// LambdaFunctionSinkConfiguration: &chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementLambdaFunctionSinkConfigurationArgs{
/// InsightsTarget: pulumi.String("arn:aws:lambda:us-west-2:1111111111:function:MyFunction"),
/// },
/// },
/// &chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementArgs{
/// Type: pulumi.String("SnsTopicSink"),
/// SnsTopicSinkConfiguration: &chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementSnsTopicSinkConfigurationArgs{
/// InsightsTarget: pulumi.String("arn:aws:sns:us-west-2:1111111111:topic/MyTopic"),
/// },
/// },
/// &chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementArgs{
/// Type: pulumi.String("SqsQueueSink"),
/// SqsQueueSinkConfiguration: &chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementSqsQueueSinkConfigurationArgs{
/// InsightsTarget: pulumi.String("arn:aws:sqs:us-west-2:1111111111:queue/MyQueue"),
/// },
/// },
/// &chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementArgs{
/// Type: pulumi.String("KinesisDataStreamSink"),
/// KinesisDataStreamSinkConfiguration: &chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfigurationArgs{
/// InsightsTarget: pulumi.Any(test.Arn),
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var myConfiguration = new MediaInsightsPipelineConfiguration("myConfiguration", MediaInsightsPipelineConfigurationArgs.builder()
/// .name("MyVoiceAnalyticsConfiguration")
/// .resourceAccessRoleArn(example.arn())
/// .elements(
/// MediaInsightsPipelineConfigurationElementArgs.builder()
/// .type("VoiceAnalyticsProcessor")
/// .voiceAnalyticsProcessorConfiguration(MediaInsightsPipelineConfigurationElementVoiceAnalyticsProcessorConfigurationArgs.builder()
/// .speakerSearchStatus("Enabled")
/// .voiceToneAnalysisStatus("Enabled")
/// .build())
/// .build(),
/// MediaInsightsPipelineConfigurationElementArgs.builder()
/// .type("LambdaFunctionSink")
/// .lambdaFunctionSinkConfiguration(MediaInsightsPipelineConfigurationElementLambdaFunctionSinkConfigurationArgs.builder()
/// .insightsTarget("arn:aws:lambda:us-west-2:1111111111:function:MyFunction")
/// .build())
/// .build(),
/// MediaInsightsPipelineConfigurationElementArgs.builder()
/// .type("SnsTopicSink")
/// .snsTopicSinkConfiguration(MediaInsightsPipelineConfigurationElementSnsTopicSinkConfigurationArgs.builder()
/// .insightsTarget("arn:aws:sns:us-west-2:1111111111:topic/MyTopic")
/// .build())
/// .build(),
/// MediaInsightsPipelineConfigurationElementArgs.builder()
/// .type("SqsQueueSink")
/// .sqsQueueSinkConfiguration(MediaInsightsPipelineConfigurationElementSqsQueueSinkConfigurationArgs.builder()
/// .insightsTarget("arn:aws:sqs:us-west-2:1111111111:queue/MyQueue")
/// .build())
/// .build(),
/// MediaInsightsPipelineConfigurationElementArgs.builder()
/// .type("KinesisDataStreamSink")
/// .kinesisDataStreamSinkConfiguration(MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfigurationArgs.builder()
/// .insightsTarget(test.arn())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// myConfiguration:
/// type: aws:chimesdkmediapipelines:MediaInsightsPipelineConfiguration
/// name: my_configuration
/// properties:
/// name: MyVoiceAnalyticsConfiguration
/// resourceAccessRoleArn: ${example.arn}
/// elements:
/// - type: VoiceAnalyticsProcessor
/// voiceAnalyticsProcessorConfiguration:
/// speakerSearchStatus: Enabled
/// voiceToneAnalysisStatus: Enabled
/// - type: LambdaFunctionSink
/// lambdaFunctionSinkConfiguration:
/// insightsTarget: arn:aws:lambda:us-west-2:1111111111:function:MyFunction
/// - type: SnsTopicSink
/// snsTopicSinkConfiguration:
/// insightsTarget: arn:aws:sns:us-west-2:1111111111:topic/MyTopic
/// - type: SqsQueueSink
/// sqsQueueSinkConfiguration:
/// insightsTarget: arn:aws:sqs:us-west-2:1111111111:queue/MyQueue
/// - type: KinesisDataStreamSink
/// kinesisDataStreamSinkConfiguration:
/// insightsTarget: ${test.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### S3 Recording sink usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const myConfiguration = new aws.chimesdkmediapipelines.MediaInsightsPipelineConfiguration("my_configuration", {
/// name: "MyS3RecordingConfiguration",
/// resourceAccessRoleArn: example.arn,
/// elements: [{
/// type: "S3RecordingSink",
/// s3RecordingSinkConfiguration: {
/// destination: "arn:aws:s3:::MyBucket",
/// },
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// my_configuration = aws.chimesdkmediapipelines.MediaInsightsPipelineConfiguration("my_configuration",
/// name="MyS3RecordingConfiguration",
/// resource_access_role_arn=example["arn"],
/// elements=[{
/// "type": "S3RecordingSink",
/// "s3_recording_sink_configuration": {
/// "destination": "arn:aws:s3:::MyBucket",
/// },
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myConfiguration = new Aws.ChimeSDKMediaPipelines.MediaInsightsPipelineConfiguration("my_configuration", new()
/// {
/// Name = "MyS3RecordingConfiguration",
/// ResourceAccessRoleArn = example.Arn,
/// Elements = new[]
/// {
/// new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementArgs
/// {
/// Type = "S3RecordingSink",
/// S3RecordingSinkConfiguration = new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementS3RecordingSinkConfigurationArgs
/// {
/// Destination = "arn:aws:s3:::MyBucket",
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/chimesdkmediapipelines"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := chimesdkmediapipelines.NewMediaInsightsPipelineConfiguration(ctx, "my_configuration", &chimesdkmediapipelines.MediaInsightsPipelineConfigurationArgs{
/// Name:                  pulumi.String("MyS3RecordingConfiguration"),
/// ResourceAccessRoleArn: pulumi.Any(example.Arn),
/// Elements: chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementArray{
/// &chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementArgs{
/// Type: pulumi.String("S3RecordingSink"),
/// S3RecordingSinkConfiguration: &chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementS3RecordingSinkConfigurationArgs{
/// Destination: pulumi.String("arn:aws:s3:::MyBucket"),
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var myConfiguration = new MediaInsightsPipelineConfiguration("myConfiguration", MediaInsightsPipelineConfigurationArgs.builder()
/// .name("MyS3RecordingConfiguration")
/// .resourceAccessRoleArn(example.arn())
/// .elements(MediaInsightsPipelineConfigurationElementArgs.builder()
/// .type("S3RecordingSink")
/// .s3RecordingSinkConfiguration(MediaInsightsPipelineConfigurationElementS3RecordingSinkConfigurationArgs.builder()
/// .destination("arn:aws:s3:::MyBucket")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// myConfiguration:
/// type: aws:chimesdkmediapipelines:MediaInsightsPipelineConfiguration
/// name: my_configuration
/// properties:
/// name: MyS3RecordingConfiguration
/// resourceAccessRoleArn: ${example.arn}
/// elements:
/// - type: S3RecordingSink
/// s3RecordingSinkConfiguration:
/// destination: arn:aws:s3:::MyBucket
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the Chime SDK media insights pipeline configuration.
///
///
/// Using `pulumi import`, import Chime SDK Media Pipelines Media Insights Pipeline Configuration using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:chimesdkmediapipelines/mediaInsightsPipelineConfiguration:MediaInsightsPipelineConfiguration example abcdef123456
/// ```
class MediaInsightsPipelineConfiguration extends CustomResource {
  /// ARN of the Media Insights Pipeline Configuration.
  late final Output<String> arn;

  /// Collection of processors and sinks to transform media and deliver data.
  late final Output<List<MediaInsightsPipelineConfigurationElement>> elements;

  /// Configuration name.
  late final Output<String> name;

  /// Configuration for real-time alert rules to send EventBridge notifications when certain conditions are met.
  late final Output<
          MediaInsightsPipelineConfigurationRealTimeAlertConfiguration?>
      realTimeAlertConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ARN of IAM Role used by service to invoke processors and sinks specified by configuration elements.
  late final Output<String> resourceAccessRoleArn;

  /// Key-value map of tags for the resource.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  MediaInsightsPipelineConfiguration(
    String name, {
    MediaInsightsPipelineConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:chimesdkmediapipelines/mediaInsightsPipelineConfiguration:MediaInsightsPipelineConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.elements =
        Output.createUnknown<List<MediaInsightsPipelineConfigurationElement>>();
    this.name = Output.createUnknown<String>();
    this.realTimeAlertConfiguration = Output.createUnknown<
        MediaInsightsPipelineConfigurationRealTimeAlertConfiguration?>();
    this.region = Output.createUnknown<String>();
    this.resourceAccessRoleArn = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
