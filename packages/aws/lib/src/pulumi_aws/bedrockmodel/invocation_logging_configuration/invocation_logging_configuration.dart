import 'package:pulumi/pulumi.dart';
import '../invocation_logging_configuration_logging_config/invocation_logging_configuration_logging_config.dart';
import 'invocation_logging_configuration_args.dart';

/// Manages Bedrock model invocation logging configuration.
///
/// > Model invocation logging is configured per AWS region. To avoid overwriting settings, this resource should not be defined in multiple configurations.
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
/// const current = aws.getCallerIdentity({});
/// const example = new aws.s3.Bucket("example", {
/// bucket: "example",
/// forceDestroy: true,
/// });
/// const exampleBucketPolicy = new aws.s3.BucketPolicy("example", {
/// bucket: example.bucket,
/// policy: Promise.all([example.arn, current, current]).then(([arn, current, current1]) => `{
/// \"Version\": \"2012-10-17\",
/// \"Statement\": [
/// {
/// \"Effect\": \"Allow\",
/// \"Principal\": {
/// \"Service\": \"bedrock.amazonaws.com\"
/// },
/// \"Action\": [
/// \"s3:*\"
/// ],
/// \"Resource\": [
/// \"${arn}/*\"
/// ],
/// \"Condition\": {
/// \"StringEquals\": {
/// \"aws:SourceAccount\": \"${current.accountId}\"
/// },
/// \"ArnLike\": {
/// \"aws:SourceArn\": \"arn:aws:bedrock:us-east-1:${current1.accountId}:*\"
/// }
/// }
/// }
/// ]
/// }
/// `),
/// });
/// const exampleInvocationLoggingConfiguration = new aws.bedrockmodel.InvocationLoggingConfiguration("example", {loggingConfig: {
/// embeddingDataDeliveryEnabled: true,
/// imageDataDeliveryEnabled: true,
/// textDataDeliveryEnabled: true,
/// videoDataDeliveryEnabled: true,
/// s3Config: {
/// bucketName: example.id,
/// keyPrefix: "bedrock",
/// },
/// }}, {
/// dependsOn: [exampleBucketPolicy],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// example = aws.s3.Bucket("example",
/// bucket="example",
/// force_destroy=True)
/// example_bucket_policy = aws.s3.BucketPolicy("example",
/// bucket=example.bucket,
/// policy=example.arn.apply(lambda arn: f"""{{
/// \"Version\": \"2012-10-17\",
/// \"Statement\": [
/// {{
/// \"Effect\": \"Allow\",
/// \"Principal\": {{
/// \"Service\": \"bedrock.amazonaws.com\"
/// }},
/// \"Action\": [
/// \"s3:*\"
/// ],
/// \"Resource\": [
/// \"{arn}/*\"
/// ],
/// \"Condition\": {{
/// \"StringEquals\": {{
/// \"aws:SourceAccount\": \"{current.account_id}\"
/// }},
/// \"ArnLike\": {{
/// \"aws:SourceArn\": \"arn:aws:bedrock:us-east-1:{current.account_id}:*\"
/// }}
/// }}
/// }}
/// ]
/// }}
/// """))
/// example_invocation_logging_configuration = aws.bedrockmodel.InvocationLoggingConfiguration("example", logging_config={
/// "embedding_data_delivery_enabled": True,
/// "image_data_delivery_enabled": True,
/// "text_data_delivery_enabled": True,
/// "video_data_delivery_enabled": True,
/// "s3_config": {
/// "bucket_name": example.id,
/// "key_prefix": "bedrock",
/// },
/// },
/// opts = pulumi.ResourceOptions(depends_on=[example_bucket_policy]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var current = Aws.GetCallerIdentity.Invoke();
///
/// var example = new Aws.S3.Bucket("example", new()
/// {
/// BucketName = "example",
/// ForceDestroy = true,
/// });
///
/// var exampleBucketPolicy = new Aws.S3.BucketPolicy("example", new()
/// {
/// Bucket = example.BucketName,
/// Policy = Output.Tuple(example.Arn, current, current).Apply(values =>
/// {
/// var arn = values.Item1;
/// var current = values.Item2;
/// var current1 = values.Item3;
/// return @$"{{
/// \""Version\"": \""2012-10-17\"",
/// \""Statement\"": [
/// {{
/// \""Effect\"": \""Allow\"",
/// \""Principal\"": {{
/// \""Service\"": \""bedrock.amazonaws.com\""
/// }},
/// \""Action\"": [
/// \""s3:*\""
/// ],
/// \""Resource\"": [
/// \""{arn}/*\""
/// ],
/// \""Condition\"": {{
/// \""StringEquals\"": {{
/// \""aws:SourceAccount\"": \""{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}\""
/// }},
/// \""ArnLike\"": {{
/// \""aws:SourceArn\"": \""arn:aws:bedrock:us-east-1:{current1.AccountId}:*\""
/// }}
/// }}
/// }}
/// ]
/// }}
/// ";
/// }),
/// });
///
/// var exampleInvocationLoggingConfiguration = new Aws.BedrockModel.InvocationLoggingConfiguration("example", new()
/// {
/// LoggingConfig = new Aws.BedrockModel.Inputs.InvocationLoggingConfigurationLoggingConfigArgs
/// {
/// EmbeddingDataDeliveryEnabled = true,
/// ImageDataDeliveryEnabled = true,
/// TextDataDeliveryEnabled = true,
/// VideoDataDeliveryEnabled = true,
/// S3Config = new Aws.BedrockModel.Inputs.InvocationLoggingConfigurationLoggingConfigS3ConfigArgs
/// {
/// BucketName = example.Id,
/// KeyPrefix = "bedrock",
/// },
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// exampleBucketPolicy,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrockmodel"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// example, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// Bucket:       pulumi.String("example"),
/// ForceDestroy: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// exampleBucketPolicy, err := s3.NewBucketPolicy(ctx, "example", &s3.BucketPolicyArgs{
/// Bucket: example.Bucket,
/// Policy: example.Arn.ApplyT(func(arn string) (string, error) {
/// return fmt.Sprintf(`{
/// \"Version\": \"2012-10-17\",
/// \"Statement\": [
/// {
/// \"Effect\": \"Allow\",
/// \"Principal\": {
/// \"Service\": \"bedrock.amazonaws.com\"
/// },
/// \"Action\": [
/// \"s3:*\"
/// ],
/// \"Resource\": [
/// \"%v/*\"
/// ],
/// \"Condition\": {
/// \"StringEquals\": {
/// \"aws:SourceAccount\": \"%v\"
/// },
/// \"ArnLike\": {
/// \"aws:SourceArn\": \"arn:aws:bedrock:us-east-1:%v:*\"
/// }
/// }
/// }
/// ]
/// }
/// `, arn, current.AccountId, current.AccountId), nil
/// }).(pulumi.StringOutput),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = bedrockmodel.NewInvocationLoggingConfiguration(ctx, "example", &bedrockmodel.InvocationLoggingConfigurationArgs{
/// LoggingConfig: &bedrockmodel.InvocationLoggingConfigurationLoggingConfigArgs{
/// EmbeddingDataDeliveryEnabled: pulumi.Bool(true),
/// ImageDataDeliveryEnabled:     pulumi.Bool(true),
/// TextDataDeliveryEnabled:      pulumi.Bool(true),
/// VideoDataDeliveryEnabled:     pulumi.Bool(true),
/// S3Config: &bedrockmodel.InvocationLoggingConfigurationLoggingConfigS3ConfigArgs{
/// BucketName: example.ID(),
/// KeyPrefix:  pulumi.String("bedrock"),
/// },
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// exampleBucketPolicy,
/// }))
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.s3.BucketPolicy;
/// import com.pulumi.aws.s3.BucketPolicyArgs;
/// import com.pulumi.aws.bedrockmodel.InvocationLoggingConfiguration;
/// import com.pulumi.aws.bedrockmodel.InvocationLoggingConfigurationArgs;
/// import com.pulumi.aws.bedrockmodel.inputs.InvocationLoggingConfigurationLoggingConfigArgs;
/// import com.pulumi.aws.bedrockmodel.inputs.InvocationLoggingConfigurationLoggingConfigS3ConfigArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
/// .build());
///
/// var example = new Bucket("example", BucketArgs.builder()
/// .bucket("example")
/// .forceDestroy(true)
/// .build());
///
/// var exampleBucketPolicy = new BucketPolicy("exampleBucketPolicy", BucketPolicyArgs.builder()
/// .bucket(example.bucket())
/// .policy(example.arn().applyValue(_arn -> """
/// {
/// \"Version\": \"2012-10-17\",
/// \"Statement\": [
/// {
/// \"Effect\": \"Allow\",
/// \"Principal\": {
/// \"Service\": \"bedrock.amazonaws.com\"
/// },
/// \"Action\": [
/// \"s3:*\"
/// ],
/// \"Resource\": [
/// \"%s/*\"
/// ],
/// \"Condition\": {
/// \"StringEquals\": {
/// \"aws:SourceAccount\": \"%s\"
/// },
/// \"ArnLike\": {
/// \"aws:SourceArn\": \"arn:aws:bedrock:us-east-1:%s:*\"
/// }
/// }
/// }
/// ]
/// }
/// ", _arn,current.accountId(),current.accountId())))
/// .build());
///
/// var exampleInvocationLoggingConfiguration = new InvocationLoggingConfiguration("exampleInvocationLoggingConfiguration", InvocationLoggingConfigurationArgs.builder()
/// .loggingConfig(InvocationLoggingConfigurationLoggingConfigArgs.builder()
/// .embeddingDataDeliveryEnabled(true)
/// .imageDataDeliveryEnabled(true)
/// .textDataDeliveryEnabled(true)
/// .videoDataDeliveryEnabled(true)
/// .s3Config(InvocationLoggingConfigurationLoggingConfigS3ConfigArgs.builder()
/// .bucketName(example.id())
/// .keyPrefix("bedrock")
/// .build())
/// .build())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(exampleBucketPolicy)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:s3:Bucket
/// properties:
/// bucket: example
/// forceDestroy: true
/// exampleBucketPolicy:
/// type: aws:s3:BucketPolicy
/// name: example
/// properties:
/// bucket: ${example.bucket}
/// policy: |
/// {
/// \"Version\": \"2012-10-17\",
/// \"Statement\": [
/// {
/// \"Effect\": \"Allow\",
/// \"Principal\": {
/// \"Service\": \"bedrock.amazonaws.com\"
/// },
/// \"Action\": [
/// \"s3:*\"
/// ],
/// \"Resource\": [
/// \"${example.arn}/*\"
/// ],
/// \"Condition\": {
/// \"StringEquals\": {
/// \"aws:SourceAccount\": \"${current.accountId}\"
/// },
/// \"ArnLike\": {
/// \"aws:SourceArn\": \"arn:aws:bedrock:us-east-1:${current.accountId}:*\"
/// }
/// }
/// }
/// ]
/// }
/// exampleInvocationLoggingConfiguration:
/// type: aws:bedrockmodel:InvocationLoggingConfiguration
/// name: example
/// properties:
/// loggingConfig:
/// embeddingDataDeliveryEnabled: true
/// imageDataDeliveryEnabled: true
/// textDataDeliveryEnabled: true
/// videoDataDeliveryEnabled: true
/// s3Config:
/// bucketName: ${example.id}
/// keyPrefix: bedrock
/// options:
/// dependsOn:
/// - ${exampleBucketPolicy}
/// variables:
/// current:
/// fn::invoke:
/// function: aws:getCallerIdentity
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Bedrock custom model using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> set to the AWS Region. For example:
///
/// ```sh
/// $ pulumi import aws:bedrockmodel/invocationLoggingConfiguration:InvocationLoggingConfiguration my_config us-east-1
/// ```
class InvocationLoggingConfiguration extends CustomResource {
  /// The logging configuration values to set. See <span pulumi-lang-nodejs="`loggingConfig`" pulumi-lang-dotnet="`LoggingConfig`" pulumi-lang-go="`loggingConfig`" pulumi-lang-python="`logging_config`" pulumi-lang-yaml="`loggingConfig`" pulumi-lang-java="`loggingConfig`">`logging_config`</span> Block for details.
  late final Output<InvocationLoggingConfigurationLoggingConfig> loggingConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  InvocationLoggingConfiguration(
    String name, {
    InvocationLoggingConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:bedrockmodel/invocationLoggingConfiguration:InvocationLoggingConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.loggingConfig =
        Output.createUnknown<InvocationLoggingConfigurationLoggingConfig>();
    this.region = Output.createUnknown<String>();
  }
}
