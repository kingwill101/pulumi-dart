import 'package:pulumi/pulumi.dart' as pulumi;
import 'classification_export_configuration_args.dart';
import 'classification_export_configuration_s3_destination.dart';
import 'classification_export_configuration_state.dart';

/// Provides a resource to manage an [Amazon Macie Classification Export Configuration](https://docs.aws.amazon.com/macie/latest/APIReference/classification-export-configuration.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.macie2.Account("example", {});
/// const exampleClassificationExportConfiguration = new aws.macie2.ClassificationExportConfiguration("example", {s3Destination: {
///     bucketName: exampleAwsS3Bucket.bucket,
///     keyPrefix: "exampleprefix/",
///     kmsKeyArn: exampleAwsKmsKey.arn,
/// }}, {
///     dependsOn: [example],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.macie2.Account("example")
/// example_classification_export_configuration = aws.macie2.ClassificationExportConfiguration("example", s3_destination={
///     "bucket_name": example_aws_s3_bucket["bucket"],
///     "key_prefix": "exampleprefix/",
///     "kms_key_arn": example_aws_kms_key["arn"],
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
///     var example = new Aws.Macie2.Account("example");
///
///     var exampleClassificationExportConfiguration = new Aws.Macie2.ClassificationExportConfiguration("example", new()
///     {
///         S3Destination = new Aws.Macie2.Inputs.ClassificationExportConfigurationS3DestinationArgs
///         {
///             BucketName = exampleAwsS3Bucket.Bucket,
///             KeyPrefix = "exampleprefix/",
///             KmsKeyArn = exampleAwsKmsKey.Arn,
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             example,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/macie2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := macie2.NewAccount(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = macie2.NewClassificationExportConfiguration(ctx, "example", &macie2.ClassificationExportConfigurationArgs{
/// 			S3Destination: &macie2.ClassificationExportConfigurationS3DestinationArgs{
/// 				BucketName: pulumi.Any(exampleAwsS3Bucket.Bucket),
/// 				KeyPrefix:  pulumi.String("exampleprefix/"),
/// 				KmsKeyArn:  pulumi.Any(exampleAwsKmsKey.Arn),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			example,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new Account("example");
///
///         var exampleClassificationExportConfiguration = new ClassificationExportConfiguration("exampleClassificationExportConfiguration", ClassificationExportConfigurationArgs.builder()
///             .s3Destination(ClassificationExportConfigurationS3DestinationArgs.builder()
///                 .bucketName(exampleAwsS3Bucket.bucket())
///                 .keyPrefix("exampleprefix/")
///                 .kmsKeyArn(exampleAwsKmsKey.arn())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(example)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:macie2:Account
///   exampleClassificationExportConfiguration:
///     type: aws:macie2:ClassificationExportConfiguration
///     name: example
///     properties:
///       s3Destination:
///         bucketName: ${exampleAwsS3Bucket.bucket}
///         keyPrefix: exampleprefix/
///         kmsKeyArn: ${exampleAwsKmsKey.arn}
///     options:
///       dependsOn:
///         - ${example}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.macie2.ClassificationExportConfiguration` using the region. For example:
///
/// ```sh
/// $ pulumi import aws:macie2/classificationExportConfiguration:ClassificationExportConfiguration example us-west-2
/// ```
class ClassificationExportConfiguration extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Configuration block for a S3 Destination. Defined below
  late final pulumi.Output<ClassificationExportConfigurationS3Destination> s3Destination;

  /// Creates a new [ClassificationExportConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClassificationExportConfiguration]. {@macro pulumi_macie2_classification_export_configuration_classification_export_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClassificationExportConfiguration(
    String name, {
    ClassificationExportConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:macie2/classificationExportConfiguration:ClassificationExportConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    region = registerOutput<String>('region');
    s3Destination = registerOutput<ClassificationExportConfigurationS3Destination>('s3Destination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClassificationExportConfigurationS3Destination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [ClassificationExportConfiguration] resource's state with the given [name] and [id].
  static ClassificationExportConfiguration get(
    String name,
    pulumi.Input<String> id, {
    ClassificationExportConfigurationState? state,
  }) {
    return ClassificationExportConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ClassificationExportConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:macie2/classificationExportConfiguration:ClassificationExportConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    region = registerOutput<String>('region');
    s3Destination = registerOutput<ClassificationExportConfigurationS3Destination>('s3Destination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClassificationExportConfigurationS3Destination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
