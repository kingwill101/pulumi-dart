import 'package:pulumi/pulumi.dart';
import '../conformance_pack_input_parameter/conformance_pack_input_parameter.dart';
import 'conformance_pack_args.dart';

/// Manages a Config Conformance Pack. More information about this collection of Config rules and remediation actions can be found in the
/// [Conformance Packs](https://docs.aws.amazon.com/config/latest/developerguide/conformance-packs.html) documentation.
/// Sample Conformance Pack templates may be found in the
/// [AWS Config Rules Repository](https://github.com/awslabs/aws-config-rules/tree/master/aws-config-conformance-packs).
///
/// > **NOTE:** The account must have a Configuration Recorder with proper IAM permissions before the Conformance Pack will
/// successfully create or update. See also the
/// <span pulumi-lang-nodejs="`aws.cfg.Recorder`" pulumi-lang-dotnet="`aws.cfg.Recorder`" pulumi-lang-go="`cfg.Recorder`" pulumi-lang-python="`cfg.Recorder`" pulumi-lang-yaml="`aws.cfg.Recorder`" pulumi-lang-java="`aws.cfg.Recorder`">`aws.cfg.Recorder`</span> resource.
///
/// ## Example Usage
///
/// ### Template Body
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cfg.ConformancePack("example", {
/// name: "example",
/// inputParameters: [{
/// parameterName: "AccessKeysRotatedParameterMaxAccessKeyAge",
/// parameterValue: "90",
/// }],
/// templateBody: `Parameters:
/// AccessKeysRotatedParameterMaxAccessKeyAge:
/// Type: String
/// Resources:
/// IAMPasswordPolicy:
/// Properties:
/// ConfigRuleName: IAMPasswordPolicy
/// Source:
/// Owner: AWS
/// SourceIdentifier: IAM_PASSWORD_POLICY
/// Type: AWS::Config::ConfigRule
/// `,
/// }, {
/// dependsOn: [exampleAwsConfigConfigurationRecorder],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cfg.ConformancePack("example",
/// name="example",
/// input_parameters=[{
/// "parameter_name": "AccessKeysRotatedParameterMaxAccessKeyAge",
/// "parameter_value": "90",
/// }],
/// template_body="""Parameters:
/// AccessKeysRotatedParameterMaxAccessKeyAge:
/// Type: String
/// Resources:
/// IAMPasswordPolicy:
/// Properties:
/// ConfigRuleName: IAMPasswordPolicy
/// Source:
/// Owner: AWS
/// SourceIdentifier: IAM_PASSWORD_POLICY
/// Type: AWS::Config::ConfigRule
/// """,
/// opts = pulumi.ResourceOptions(depends_on=[example_aws_config_configuration_recorder]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Cfg.ConformancePack("example", new()
/// {
/// Name = "example",
/// InputParameters = new[]
/// {
/// new Aws.Cfg.Inputs.ConformancePackInputParameterArgs
/// {
/// ParameterName = "AccessKeysRotatedParameterMaxAccessKeyAge",
/// ParameterValue = "90",
/// },
/// },
/// TemplateBody = @"Parameters:
/// AccessKeysRotatedParameterMaxAccessKeyAge:
/// Type: String
/// Resources:
/// IAMPasswordPolicy:
/// Properties:
/// ConfigRuleName: IAMPasswordPolicy
/// Source:
/// Owner: AWS
/// SourceIdentifier: IAM_PASSWORD_POLICY
/// Type: AWS::Config::ConfigRule
/// ",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// exampleAwsConfigConfigurationRecorder,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cfg"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cfg.NewConformancePack(ctx, "example", &cfg.ConformancePackArgs{
/// Name: pulumi.String("example"),
/// InputParameters: cfg.ConformancePackInputParameterArray{
/// &cfg.ConformancePackInputParameterArgs{
/// ParameterName:  pulumi.String("AccessKeysRotatedParameterMaxAccessKeyAge"),
/// ParameterValue: pulumi.String("90"),
/// },
/// },
/// TemplateBody: pulumi.String(`Parameters:
/// AccessKeysRotatedParameterMaxAccessKeyAge:
/// Type: String
/// Resources:
/// IAMPasswordPolicy:
/// Properties:
/// ConfigRuleName: IAMPasswordPolicy
/// Source:
/// Owner: AWS
/// SourceIdentifier: IAM_PASSWORD_POLICY
/// Type: AWS::Config::ConfigRule
/// `),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// exampleAwsConfigConfigurationRecorder,
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
/// import com.pulumi.aws.cfg.ConformancePack;
/// import com.pulumi.aws.cfg.ConformancePackArgs;
/// import com.pulumi.aws.cfg.inputs.ConformancePackInputParameterArgs;
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
/// var example = new ConformancePack("example", ConformancePackArgs.builder()
/// .name("example")
/// .inputParameters(ConformancePackInputParameterArgs.builder()
/// .parameterName("AccessKeysRotatedParameterMaxAccessKeyAge")
/// .parameterValue("90")
/// .build())
/// .templateBody("""
/// Parameters:
/// AccessKeysRotatedParameterMaxAccessKeyAge:
/// Type: String
/// Resources:
/// IAMPasswordPolicy:
/// Properties:
/// ConfigRuleName: IAMPasswordPolicy
/// Source:
/// Owner: AWS
/// SourceIdentifier: IAM_PASSWORD_POLICY
/// Type: AWS::Config::ConfigRule
/// """)
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(exampleAwsConfigConfigurationRecorder)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:cfg:ConformancePack
/// properties:
/// name: example
/// inputParameters:
/// - parameterName: AccessKeysRotatedParameterMaxAccessKeyAge
/// parameterValue: '90'
/// templateBody: |
/// Parameters:
/// AccessKeysRotatedParameterMaxAccessKeyAge:
/// Type: String
/// Resources:
/// IAMPasswordPolicy:
/// Properties:
/// ConfigRuleName: IAMPasswordPolicy
/// Source:
/// Owner: AWS
/// SourceIdentifier: IAM_PASSWORD_POLICY
/// Type: AWS::Config::ConfigRule
/// options:
/// dependsOn:
/// - ${exampleAwsConfigConfigurationRecorder}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Template S3 URI
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleBucket = new aws.s3.Bucket("example", {bucket: "example"});
/// const exampleBucketObjectv2 = new aws.s3.BucketObjectv2("example", {
/// bucket: exampleBucket.id,
/// key: "example-key",
/// content: `Resources:
/// IAMPasswordPolicy:
/// Properties:
/// ConfigRuleName: IAMPasswordPolicy
/// Source:
/// Owner: AWS
/// SourceIdentifier: IAM_PASSWORD_POLICY
/// Type: AWS::Config::ConfigRule
/// `,
/// });
/// const example = new aws.cfg.ConformancePack("example", {
/// name: "example",
/// templateS3Uri: pulumi.interpolate`s3://${exampleBucket.bucket}/${exampleBucketObjectv2.key}`,
/// }, {
/// dependsOn: [exampleAwsConfigConfigurationRecorder],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_bucket = aws.s3.Bucket("example", bucket="example")
/// example_bucket_objectv2 = aws.s3.BucketObjectv2("example",
/// bucket=example_bucket.id,
/// key="example-key",
/// content="""Resources:
/// IAMPasswordPolicy:
/// Properties:
/// ConfigRuleName: IAMPasswordPolicy
/// Source:
/// Owner: AWS
/// SourceIdentifier: IAM_PASSWORD_POLICY
/// Type: AWS::Config::ConfigRule
/// """)
/// example = aws.cfg.ConformancePack("example",
/// name="example",
/// template_s3_uri=pulumi.Output.all(
/// bucket=example_bucket.bucket,
/// key=example_bucket_objectv2.key
/// ).apply(lambda resolved_outputs: f"s3://{resolved_outputs['bucket']}/{resolved_outputs['key']}")
/// ,
/// opts = pulumi.ResourceOptions(depends_on=[example_aws_config_configuration_recorder]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var exampleBucket = new Aws.S3.Bucket("example", new()
/// {
/// BucketName = "example",
/// });
///
/// var exampleBucketObjectv2 = new Aws.S3.BucketObjectv2("example", new()
/// {
/// Bucket = exampleBucket.Id,
/// Key = "example-key",
/// Content = @"Resources:
/// IAMPasswordPolicy:
/// Properties:
/// ConfigRuleName: IAMPasswordPolicy
/// Source:
/// Owner: AWS
/// SourceIdentifier: IAM_PASSWORD_POLICY
/// Type: AWS::Config::ConfigRule
/// ",
/// });
///
/// var example = new Aws.Cfg.ConformancePack("example", new()
/// {
/// Name = "example",
/// TemplateS3Uri = Output.Tuple(exampleBucket.BucketName, exampleBucketObjectv2.Key).Apply(values =>
/// {
/// var bucket = values.Item1;
/// var key = values.Item2;
/// return $"s3://{bucket}/{key}";
/// }),
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// exampleAwsConfigConfigurationRecorder,
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cfg"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// exampleBucket, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// Bucket: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleBucketObjectv2, err := s3.NewBucketObjectv2(ctx, "example", &s3.BucketObjectv2Args{
/// Bucket: exampleBucket.ID(),
/// Key:    pulumi.String("example-key"),
/// Content: pulumi.String(`Resources:
/// IAMPasswordPolicy:
/// Properties:
/// ConfigRuleName: IAMPasswordPolicy
/// Source:
/// Owner: AWS
/// SourceIdentifier: IAM_PASSWORD_POLICY
/// Type: AWS::Config::ConfigRule
/// `),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = cfg.NewConformancePack(ctx, "example", &cfg.ConformancePackArgs{
/// Name: pulumi.String("example"),
/// TemplateS3Uri: pulumi.All(exampleBucket.Bucket, exampleBucketObjectv2.Key).ApplyT(func(_args []interface{}) (string, error) {
/// bucket := _args[0].(string)
/// key := _args[1].(string)
/// return fmt.Sprintf("s3://%v/%v", bucket, key), nil
/// }).(pulumi.StringOutput),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// exampleAwsConfigConfigurationRecorder,
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
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.s3.BucketObjectv2;
/// import com.pulumi.aws.s3.BucketObjectv2Args;
/// import com.pulumi.aws.cfg.ConformancePack;
/// import com.pulumi.aws.cfg.ConformancePackArgs;
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
/// var exampleBucket = new Bucket("exampleBucket", BucketArgs.builder()
/// .bucket("example")
/// .build());
///
/// var exampleBucketObjectv2 = new BucketObjectv2("exampleBucketObjectv2", BucketObjectv2Args.builder()
/// .bucket(exampleBucket.id())
/// .key("example-key")
/// .content("""
/// Resources:
/// IAMPasswordPolicy:
/// Properties:
/// ConfigRuleName: IAMPasswordPolicy
/// Source:
/// Owner: AWS
/// SourceIdentifier: IAM_PASSWORD_POLICY
/// Type: AWS::Config::ConfigRule
/// """)
/// .build());
///
/// var example = new ConformancePack("example", ConformancePackArgs.builder()
/// .name("example")
/// .templateS3Uri(Output.tuple(exampleBucket.bucket(), exampleBucketObjectv2.key()).applyValue(values -> {
/// var bucket = values.t1;
/// var key = values.t2;
/// return String.format("s3://%s/%s", bucket,key);
/// }))
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(exampleAwsConfigConfigurationRecorder)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:cfg:ConformancePack
/// properties:
/// name: example
/// templateS3Uri: s3://${exampleBucket.bucket}/${exampleBucketObjectv2.key}
/// options:
/// dependsOn:
/// - ${exampleAwsConfigConfigurationRecorder}
/// exampleBucket:
/// type: aws:s3:Bucket
/// name: example
/// properties:
/// bucket: example
/// exampleBucketObjectv2:
/// type: aws:s3:BucketObjectv2
/// name: example
/// properties:
/// bucket: ${exampleBucket.id}
/// key: example-key
/// content: |
/// Resources:
/// IAMPasswordPolicy:
/// Properties:
/// ConfigRuleName: IAMPasswordPolicy
/// Source:
/// Owner: AWS
/// SourceIdentifier: IAM_PASSWORD_POLICY
/// Type: AWS::Config::ConfigRule
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Config Conformance Packs using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:cfg/conformancePack:ConformancePack example example
/// ```
class ConformancePack extends CustomResource {
  /// Amazon Resource Name (ARN) of the conformance pack.
  late final Output<String> arn;

  /// Amazon S3 bucket where AWS Config stores conformance pack templates. Maximum length of 63.
  late final Output<String?> deliveryS3Bucket;

  /// The prefix for the Amazon S3 bucket. Maximum length of 1024.
  late final Output<String?> deliveryS3KeyPrefix;

  /// Set of configuration blocks describing input parameters passed to the conformance pack template. Documented below. When configured, the parameters must also be included in the <span pulumi-lang-nodejs="`templateBody`" pulumi-lang-dotnet="`TemplateBody`" pulumi-lang-go="`templateBody`" pulumi-lang-python="`template_body`" pulumi-lang-yaml="`templateBody`" pulumi-lang-java="`templateBody`">`template_body`</span> or in the template stored in Amazon S3 if using <span pulumi-lang-nodejs="`templateS3Uri`" pulumi-lang-dotnet="`TemplateS3Uri`" pulumi-lang-go="`templateS3Uri`" pulumi-lang-python="`template_s3_uri`" pulumi-lang-yaml="`templateS3Uri`" pulumi-lang-java="`templateS3Uri`">`template_s3_uri`</span>.
  late final Output<List<ConformancePackInputParameter>?> inputParameters;

  /// The name of the conformance pack. Must begin with a letter and contain from 1 to 256 alphanumeric characters and hyphens.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A string containing full conformance pack template body. Maximum length of 51200. Drift detection is not possible with this argument.
  late final Output<String?> templateBody;

  /// Location of file, e.g., `s3://bucketname/prefix`, containing the template body. The uri must point to the conformance pack template that is located in an Amazon S3 bucket in the same region as the conformance pack. Maximum length of 1024. Drift detection is not possible with this argument.
  ///
  /// > **Note:** If both <span pulumi-lang-nodejs="`templateBody`" pulumi-lang-dotnet="`TemplateBody`" pulumi-lang-go="`templateBody`" pulumi-lang-python="`template_body`" pulumi-lang-yaml="`templateBody`" pulumi-lang-java="`templateBody`">`template_body`</span> and <span pulumi-lang-nodejs="`templateS3Uri`" pulumi-lang-dotnet="`TemplateS3Uri`" pulumi-lang-go="`templateS3Uri`" pulumi-lang-python="`template_s3_uri`" pulumi-lang-yaml="`templateS3Uri`" pulumi-lang-java="`templateS3Uri`">`template_s3_uri`</span> are specified, AWS Config uses the <span pulumi-lang-nodejs="`templateS3Uri`" pulumi-lang-dotnet="`TemplateS3Uri`" pulumi-lang-go="`templateS3Uri`" pulumi-lang-python="`template_s3_uri`" pulumi-lang-yaml="`templateS3Uri`" pulumi-lang-java="`templateS3Uri`">`template_s3_uri`</span> and ignores the <span pulumi-lang-nodejs="`templateBody`" pulumi-lang-dotnet="`TemplateBody`" pulumi-lang-go="`templateBody`" pulumi-lang-python="`template_body`" pulumi-lang-yaml="`templateBody`" pulumi-lang-java="`templateBody`">`template_body`</span>.
  late final Output<String?> templateS3Uri;

  ConformancePack(
    String name, {
    ConformancePackArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cfg/conformancePack:ConformancePack',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.deliveryS3Bucket = registerOutput<String?>('deliveryS3Bucket');
    this.deliveryS3KeyPrefix = registerOutput<String?>('deliveryS3KeyPrefix');
    this.inputParameters =
        registerOutput<List<ConformancePackInputParameter>?>('inputParameters');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.templateBody = registerOutput<String?>('templateBody');
    this.templateS3Uri = registerOutput<String?>('templateS3Uri');
  }
}
