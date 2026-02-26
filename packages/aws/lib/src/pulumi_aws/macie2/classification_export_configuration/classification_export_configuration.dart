import 'package:pulumi/pulumi.dart';
import '../classification_export_configuration_s3_destination/classification_export_configuration_s3_destination.dart';
import 'classification_export_configuration_args.dart';

/// Provides a resource to manage an [Amazon Macie Classification Export Configuration](https://docs.aws.amazon.com/macie/latest/APIReference/classification-export-configuration.html).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.macie2.Account("example", {});
/// const exampleClassificationExportConfiguration = new aws.macie2.ClassificationExportConfiguration("example", {s3Destination: {
/// bucketName: exampleAwsS3Bucket.bucket,
/// keyPrefix: "exampleprefix/",
/// kmsKeyArn: exampleAwsKmsKey.arn,
/// }}, {
/// dependsOn: [example],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.macie2.Account("example")
/// example_classification_export_configuration = aws.macie2.ClassificationExportConfiguration("example", s3_destination={
/// "bucket_name": example_aws_s3_bucket["bucket"],
/// "key_prefix": "exampleprefix/",
/// "kms_key_arn": example_aws_kms_key["arn"],
/// },
/// opts = pulumi.ResourceOptions(depends_on=[example]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Macie2.Account("example");
///
/// var exampleClassificationExportConfiguration = new Aws.Macie2.ClassificationExportConfiguration("example", new()
/// {
/// S3Destination = new Aws.Macie2.Inputs.ClassificationExportConfigurationS3DestinationArgs
/// {
/// BucketName = exampleAwsS3Bucket.Bucket,
/// KeyPrefix = "exampleprefix/",
/// KmsKeyArn = exampleAwsKmsKey.Arn,
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// example,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/macie2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := macie2.NewAccount(ctx, "example", nil)
/// if err != nil {
/// return err
/// }
/// _, err = macie2.NewClassificationExportConfiguration(ctx, "example", &macie2.ClassificationExportConfigurationArgs{
/// S3Destination: &macie2.ClassificationExportConfigurationS3DestinationArgs{
/// BucketName: pulumi.Any(exampleAwsS3Bucket.Bucket),
/// KeyPrefix:  pulumi.String("exampleprefix/"),
/// KmsKeyArn:  pulumi.Any(exampleAwsKmsKey.Arn),
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// example,
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
/// import com.pulumi.aws.macie2.Account;
/// import com.pulumi.aws.macie2.ClassificationExportConfiguration;
/// import com.pulumi.aws.macie2.ClassificationExportConfigurationArgs;
/// import com.pulumi.aws.macie2.inputs.ClassificationExportConfigurationS3DestinationArgs;
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
/// var example = new Account("example");
///
/// var exampleClassificationExportConfiguration = new ClassificationExportConfiguration("exampleClassificationExportConfiguration", ClassificationExportConfigurationArgs.builder()
/// .s3Destination(ClassificationExportConfigurationS3DestinationArgs.builder()
/// .bucketName(exampleAwsS3Bucket.bucket())
/// .keyPrefix("exampleprefix/")
/// .kmsKeyArn(exampleAwsKmsKey.arn())
/// .build())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(example)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:macie2:Account
/// exampleClassificationExportConfiguration:
/// type: aws:macie2:ClassificationExportConfiguration
/// name: example
/// properties:
/// s3Destination:
/// bucketName: ${exampleAwsS3Bucket.bucket}
/// keyPrefix: exampleprefix/
/// kmsKeyArn: ${exampleAwsKmsKey.arn}
/// options:
/// dependsOn:
/// - ${example}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.macie2.ClassificationExportConfiguration`" pulumi-lang-dotnet="`aws.macie2.ClassificationExportConfiguration`" pulumi-lang-go="`macie2.ClassificationExportConfiguration`" pulumi-lang-python="`macie2.ClassificationExportConfiguration`" pulumi-lang-yaml="`aws.macie2.ClassificationExportConfiguration`" pulumi-lang-java="`aws.macie2.ClassificationExportConfiguration`">`aws.macie2.ClassificationExportConfiguration`</span> using the region. For example:
///
/// ```sh
/// $ pulumi import aws:macie2/classificationExportConfiguration:ClassificationExportConfiguration example us-west-2
/// ```
class ClassificationExportConfiguration extends CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Configuration block for a S3 Destination. Defined below
  late final Output<ClassificationExportConfigurationS3Destination>
      s3Destination;

  ClassificationExportConfiguration(
    String name, {
    ClassificationExportConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:macie2/classificationExportConfiguration:ClassificationExportConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.s3Destination =
        registerOutput<ClassificationExportConfigurationS3Destination>(
            's3Destination');
  }
}
