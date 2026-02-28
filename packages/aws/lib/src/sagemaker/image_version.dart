import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_version_args.dart';

/// Provides a SageMaker AI Image Version resource.
///
/// ## Example Usage
///
/// ### Basic usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sagemaker.ImageVersion("example", {
///     imageName: test.id,
///     baseImage: "012345678912.dkr.ecr.us-west-2.amazonaws.com/image:latest",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.ImageVersion("example",
///     image_name=test["id"],
///     base_image="012345678912.dkr.ecr.us-west-2.amazonaws.com/image:latest")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Sagemaker.ImageVersion("example", new()
///     {
///         ImageName = test.Id,
///         BaseImage = "012345678912.dkr.ecr.us-west-2.amazonaws.com/image:latest",
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
/// 		_, err := sagemaker.NewImageVersion(ctx, "example", &sagemaker.ImageVersionArgs{
/// 			ImageName: pulumi.Any(test.Id),
/// 			BaseImage: pulumi.String("012345678912.dkr.ecr.us-west-2.amazonaws.com/image:latest"),
/// 		})
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
/// import com.pulumi.aws.sagemaker.ImageVersion;
/// import com.pulumi.aws.sagemaker.ImageVersionArgs;
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
///         var example = new ImageVersion("example", ImageVersionArgs.builder()
///             .imageName(test.id())
///             .baseImage("012345678912.dkr.ecr.us-west-2.amazonaws.com/image:latest")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sagemaker:ImageVersion
///     properties:
///       imageName: ${test.id}
///       baseImage: 012345678912.dkr.ecr.us-west-2.amazonaws.com/image:latest
/// ```
///
///
/// ### With Aliases
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.sagemaker.ImageVersion("test", {
///     imageName: testAwsSagemakerImage.id,
///     baseImage: "012345678912.dkr.ecr.us-west-2.amazonaws.com/image:latest",
///     aliases: [
///         "latest",
///         "stable",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.sagemaker.ImageVersion("test",
///     image_name=test_aws_sagemaker_image["id"],
///     base_image="012345678912.dkr.ecr.us-west-2.amazonaws.com/image:latest",
///     aliases=[
///         "latest",
///         "stable",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Sagemaker.ImageVersion("test", new()
///     {
///         ImageName = testAwsSagemakerImage.Id,
///         BaseImage = "012345678912.dkr.ecr.us-west-2.amazonaws.com/image:latest",
///         Aliases = new[]
///         {
///             "latest",
///             "stable",
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
/// 		_, err := sagemaker.NewImageVersion(ctx, "test", &sagemaker.ImageVersionArgs{
/// 			ImageName: pulumi.Any(testAwsSagemakerImage.Id),
/// 			BaseImage: pulumi.String("012345678912.dkr.ecr.us-west-2.amazonaws.com/image:latest"),
/// 			Aliases: pulumi.StringArray{
/// 				pulumi.String("latest"),
/// 				pulumi.String("stable"),
/// 			},
/// 		})
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
/// import com.pulumi.aws.sagemaker.ImageVersion;
/// import com.pulumi.aws.sagemaker.ImageVersionArgs;
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
///         var test = new ImageVersion("test", ImageVersionArgs.builder()
///             .imageName(testAwsSagemakerImage.id())
///             .baseImage("012345678912.dkr.ecr.us-west-2.amazonaws.com/image:latest")
///             .aliases(
///                 "latest",
///                 "stable")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:sagemaker:ImageVersion
///     properties:
///       imageName: ${testAwsSagemakerImage.id}
///       baseImage: 012345678912.dkr.ecr.us-west-2.amazonaws.com/image:latest
///       aliases:
///         - latest
///         - stable
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import SageMaker AI Image Versions using a comma-delimited string concatenating `image_name` and `version`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/imageVersion:ImageVersion example example-name,1
/// ```
class ImageVersion extends pulumi.CustomResource {
  /// A list of aliases for the image version.
  late final pulumi.Output<List<String>?> aliases;
  /// The Amazon Resource Name (ARN) assigned by AWS to this Image Version.
  late final pulumi.Output<String> arn;
  /// The registry path of the container image on which this image version is based.
  late final pulumi.Output<String> baseImage;
  /// The registry path of the container image that contains this image version.
  late final pulumi.Output<String> containerImage;
  /// Indicates Horovod compatibility.
  late final pulumi.Output<bool?> horovod;
  late final pulumi.Output<String> imageArn;
  /// The name of the image. Must be unique to your account.
  late final pulumi.Output<String> imageName;
  /// Indicates SageMaker AI job type compatibility. Valid values are: `TRAINING`, `INFERENCE`, and `NOTEBOOK_KERNEL`.
  late final pulumi.Output<String?> jobType;
  /// The machine learning framework vended in the image version.
  late final pulumi.Output<String?> mlFramework;
  /// Indicates CPU or GPU compatibility. Valid values are: `CPU` and `GPU`.
  late final pulumi.Output<String?> processor;
  /// The supported programming language and its version.
  late final pulumi.Output<String?> programmingLang;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The maintainer description of the image version.
  late final pulumi.Output<String?> releaseNotes;
  /// The stability of the image version, specified by the maintainer. Valid values are: `NOT_PROVIDED`, `STABLE`, `TO_BE_ARCHIVED`, and `ARCHIVED`.
  late final pulumi.Output<String?> vendorGuidance;
  /// The version of the image. If not specified, the latest version is described.
  late final pulumi.Output<int> version;

  /// Creates a new [ImageVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ImageVersion]. {@macro pulumi_sagemaker_image_version_image_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ImageVersion(
    String name, {
    ImageVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/imageVersion:ImageVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aliases = registerOutput<List<String>?>('aliases');
    this.arn = registerOutput<String>('arn');
    this.baseImage = registerOutput<String>('baseImage');
    this.containerImage = registerOutput<String>('containerImage');
    this.horovod = registerOutput<bool?>('horovod');
    this.imageArn = registerOutput<String>('imageArn');
    this.imageName = registerOutput<String>('imageName');
    this.jobType = registerOutput<String?>('jobType');
    this.mlFramework = registerOutput<String?>('mlFramework');
    this.processor = registerOutput<String?>('processor');
    this.programmingLang = registerOutput<String?>('programmingLang');
    this.region = registerOutput<String>('region');
    this.releaseNotes = registerOutput<String?>('releaseNotes');
    this.vendorGuidance = registerOutput<String?>('vendorGuidance');
    this.version = registerOutput<int>('version');
  }
}
