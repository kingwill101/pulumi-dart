import 'package:pulumi/pulumi.dart';
import '../security_configuration_encryption_configuration/security_configuration_encryption_configuration.dart';
import 'security_configuration_args2.dart';

/// Manages a Glue Security Configuration.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.SecurityConfiguration("example", {
/// name: "example",
/// encryptionConfiguration: {
/// cloudwatchEncryption: {
/// cloudwatchEncryptionMode: "DISABLED",
/// },
/// jobBookmarksEncryption: {
/// jobBookmarksEncryptionMode: "DISABLED",
/// },
/// s3Encryption: {
/// kmsKeyArn: exampleAwsKmsKey.arn,
/// s3EncryptionMode: "SSE-KMS",
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.SecurityConfiguration("example",
/// name="example",
/// encryption_configuration={
/// "cloudwatch_encryption": {
/// "cloudwatch_encryption_mode": "DISABLED",
/// },
/// "job_bookmarks_encryption": {
/// "job_bookmarks_encryption_mode": "DISABLED",
/// },
/// "s3_encryption": {
/// "kms_key_arn": example_aws_kms_key["arn"],
/// "s3_encryption_mode": "SSE-KMS",
/// },
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
/// var example = new Aws.Glue.SecurityConfiguration("example", new()
/// {
/// Name = "example",
/// EncryptionConfiguration = new Aws.Glue.Inputs.SecurityConfigurationEncryptionConfigurationArgs
/// {
/// CloudwatchEncryption = new Aws.Glue.Inputs.SecurityConfigurationEncryptionConfigurationCloudwatchEncryptionArgs
/// {
/// CloudwatchEncryptionMode = "DISABLED",
/// },
/// JobBookmarksEncryption = new Aws.Glue.Inputs.SecurityConfigurationEncryptionConfigurationJobBookmarksEncryptionArgs
/// {
/// JobBookmarksEncryptionMode = "DISABLED",
/// },
/// S3Encryption = new Aws.Glue.Inputs.SecurityConfigurationEncryptionConfigurationS3EncryptionArgs
/// {
/// KmsKeyArn = exampleAwsKmsKey.Arn,
/// S3EncryptionMode = "SSE-KMS",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := glue.NewSecurityConfiguration(ctx, "example", &glue.SecurityConfigurationArgs{
/// Name: pulumi.String("example"),
/// EncryptionConfiguration: &glue.SecurityConfigurationEncryptionConfigurationArgs{
/// CloudwatchEncryption: &glue.SecurityConfigurationEncryptionConfigurationCloudwatchEncryptionArgs{
/// CloudwatchEncryptionMode: pulumi.String("DISABLED"),
/// },
/// JobBookmarksEncryption: &glue.SecurityConfigurationEncryptionConfigurationJobBookmarksEncryptionArgs{
/// JobBookmarksEncryptionMode: pulumi.String("DISABLED"),
/// },
/// S3Encryption: &glue.SecurityConfigurationEncryptionConfigurationS3EncryptionArgs{
/// KmsKeyArn:        pulumi.Any(exampleAwsKmsKey.Arn),
/// S3EncryptionMode: pulumi.String("SSE-KMS"),
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
/// import com.pulumi.aws.glue.SecurityConfiguration;
/// import com.pulumi.aws.glue.SecurityConfigurationArgs;
/// import com.pulumi.aws.glue.inputs.SecurityConfigurationEncryptionConfigurationArgs;
/// import com.pulumi.aws.glue.inputs.SecurityConfigurationEncryptionConfigurationCloudwatchEncryptionArgs;
/// import com.pulumi.aws.glue.inputs.SecurityConfigurationEncryptionConfigurationJobBookmarksEncryptionArgs;
/// import com.pulumi.aws.glue.inputs.SecurityConfigurationEncryptionConfigurationS3EncryptionArgs;
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
/// var example = new SecurityConfiguration("example", SecurityConfigurationArgs.builder()
/// .name("example")
/// .encryptionConfiguration(SecurityConfigurationEncryptionConfigurationArgs.builder()
/// .cloudwatchEncryption(SecurityConfigurationEncryptionConfigurationCloudwatchEncryptionArgs.builder()
/// .cloudwatchEncryptionMode("DISABLED")
/// .build())
/// .jobBookmarksEncryption(SecurityConfigurationEncryptionConfigurationJobBookmarksEncryptionArgs.builder()
/// .jobBookmarksEncryptionMode("DISABLED")
/// .build())
/// .s3Encryption(SecurityConfigurationEncryptionConfigurationS3EncryptionArgs.builder()
/// .kmsKeyArn(exampleAwsKmsKey.arn())
/// .s3EncryptionMode("SSE-KMS")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:glue:SecurityConfiguration
/// properties:
/// name: example
/// encryptionConfiguration:
/// cloudwatchEncryption:
/// cloudwatchEncryptionMode: DISABLED
/// jobBookmarksEncryption:
/// jobBookmarksEncryptionMode: DISABLED
/// s3Encryption:
/// kmsKeyArn: ${exampleAwsKmsKey.arn}
/// s3EncryptionMode: SSE-KMS
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Glue Security Configurations using <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:glue/securityConfiguration:SecurityConfiguration example example
/// ```
class SecurityConfiguration2 extends CustomResource {
  /// Configuration block containing encryption configuration. Detailed below.
  late final Output<SecurityConfigurationEncryptionConfiguration>
      encryptionConfiguration;

  /// Name of the security configuration.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  SecurityConfiguration2(
    String name, {
    SecurityConfigurationArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:glue/securityConfiguration:SecurityConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.encryptionConfiguration =
        Output.createUnknown<SecurityConfigurationEncryptionConfiguration>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
  }
}
