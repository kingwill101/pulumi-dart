import 'package:pulumi/pulumi.dart';
import '../sdkvoice_voice_profile_domain_server_side_encryption_configuration/sdkvoice_voice_profile_domain_server_side_encryption_configuration.dart';
import 'sdkvoice_voice_profile_domain_args.dart';

/// Resource for managing an AWS Chime SDK Voice Profile Domain.
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
/// const example = new aws.kms.Key("example", {
/// description: "KMS Key for Voice Profile Domain",
/// deletionWindowInDays: 7,
/// });
/// const exampleSdkvoiceVoiceProfileDomain = new aws.chime.SdkvoiceVoiceProfileDomain("example", {
/// name: "ExampleVoiceProfileDomain",
/// serverSideEncryptionConfiguration: {
/// kmsKeyArn: example.arn,
/// },
/// description: "My Voice Profile Domain",
/// tags: {
/// key1: "value1",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kms.Key("example",
/// description="KMS Key for Voice Profile Domain",
/// deletion_window_in_days=7)
/// example_sdkvoice_voice_profile_domain = aws.chime.SdkvoiceVoiceProfileDomain("example",
/// name="ExampleVoiceProfileDomain",
/// server_side_encryption_configuration={
/// "kms_key_arn": example.arn,
/// },
/// description="My Voice Profile Domain",
/// tags={
/// "key1": "value1",
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
/// var example = new Aws.Kms.Key("example", new()
/// {
/// Description = "KMS Key for Voice Profile Domain",
/// DeletionWindowInDays = 7,
/// });
///
/// var exampleSdkvoiceVoiceProfileDomain = new Aws.Chime.SdkvoiceVoiceProfileDomain("example", new()
/// {
/// Name = "ExampleVoiceProfileDomain",
/// ServerSideEncryptionConfiguration = new Aws.Chime.Inputs.SdkvoiceVoiceProfileDomainServerSideEncryptionConfigurationArgs
/// {
/// KmsKeyArn = example.Arn,
/// },
/// Description = "My Voice Profile Domain",
/// Tags =
/// {
/// { "key1", "value1" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/chime"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := kms.NewKey(ctx, "example", &kms.KeyArgs{
/// Description:          pulumi.String("KMS Key for Voice Profile Domain"),
/// DeletionWindowInDays: pulumi.Int(7),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = chime.NewSdkvoiceVoiceProfileDomain(ctx, "example", &chime.SdkvoiceVoiceProfileDomainArgs{
/// Name: pulumi.String("ExampleVoiceProfileDomain"),
/// ServerSideEncryptionConfiguration: &chime.SdkvoiceVoiceProfileDomainServerSideEncryptionConfigurationArgs{
/// KmsKeyArn: example.Arn,
/// },
/// Description: pulumi.String("My Voice Profile Domain"),
/// Tags: pulumi.StringMap{
/// "key1": pulumi.String("value1"),
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
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.chime.SdkvoiceVoiceProfileDomain;
/// import com.pulumi.aws.chime.SdkvoiceVoiceProfileDomainArgs;
/// import com.pulumi.aws.chime.inputs.SdkvoiceVoiceProfileDomainServerSideEncryptionConfigurationArgs;
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
/// var example = new Key("example", KeyArgs.builder()
/// .description("KMS Key for Voice Profile Domain")
/// .deletionWindowInDays(7)
/// .build());
///
/// var exampleSdkvoiceVoiceProfileDomain = new SdkvoiceVoiceProfileDomain("exampleSdkvoiceVoiceProfileDomain", SdkvoiceVoiceProfileDomainArgs.builder()
/// .name("ExampleVoiceProfileDomain")
/// .serverSideEncryptionConfiguration(SdkvoiceVoiceProfileDomainServerSideEncryptionConfigurationArgs.builder()
/// .kmsKeyArn(example.arn())
/// .build())
/// .description("My Voice Profile Domain")
/// .tags(Map.of("key1", "value1"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:kms:Key
/// properties:
/// description: KMS Key for Voice Profile Domain
/// deletionWindowInDays: 7
/// exampleSdkvoiceVoiceProfileDomain:
/// type: aws:chime:SdkvoiceVoiceProfileDomain
/// name: example
/// properties:
/// name: ExampleVoiceProfileDomain
/// serverSideEncryptionConfiguration:
/// kmsKeyArn: ${example.arn}
/// description: My Voice Profile Domain
/// tags:
/// key1: value1
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import AWS Chime SDK Voice Profile Domain using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:chime/sdkvoiceVoiceProfileDomain:SdkvoiceVoiceProfileDomain example abcdef123456
/// ```
class SdkvoiceVoiceProfileDomain extends CustomResource {
  /// ARN of the Voice Profile Domain.
  late final Output<String> arn;

  /// Description of Voice Profile Domain.
  late final Output<String?> description;

  /// Name of Voice Profile Domain.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Configuration for server side encryption.
  late final Output<SdkvoiceVoiceProfileDomainServerSideEncryptionConfiguration>
      serverSideEncryptionConfiguration;
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  SdkvoiceVoiceProfileDomain(
    String name, {
    SdkvoiceVoiceProfileDomainArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:chime/sdkvoiceVoiceProfileDomain:SdkvoiceVoiceProfileDomain',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.serverSideEncryptionConfiguration = registerOutput<
            SdkvoiceVoiceProfileDomainServerSideEncryptionConfiguration>(
        'serverSideEncryptionConfiguration');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
