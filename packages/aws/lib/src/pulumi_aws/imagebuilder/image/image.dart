import 'package:pulumi/pulumi.dart';
import '../image_image_scanning_configuration/image_image_scanning_configuration.dart';
import '../image_image_tests_configuration/image_image_tests_configuration.dart';
import '../image_logging_configuration/image_logging_configuration.dart';
import '../image_output_resource/image_output_resource.dart';
import '../image_workflow/image_workflow.dart';
import 'image_args.dart';

/// Manages an Image Builder Image.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.imagebuilder.Image("example", {
/// distributionConfigurationArn: exampleAwsImagebuilderDistributionConfiguration.arn,
/// imageRecipeArn: exampleAwsImagebuilderImageRecipe.arn,
/// infrastructureConfigurationArn: exampleAwsImagebuilderInfrastructureConfiguration.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.imagebuilder.Image("example",
/// distribution_configuration_arn=example_aws_imagebuilder_distribution_configuration["arn"],
/// image_recipe_arn=example_aws_imagebuilder_image_recipe["arn"],
/// infrastructure_configuration_arn=example_aws_imagebuilder_infrastructure_configuration["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.ImageBuilder.Image("example", new()
/// {
/// DistributionConfigurationArn = exampleAwsImagebuilderDistributionConfiguration.Arn,
/// ImageRecipeArn = exampleAwsImagebuilderImageRecipe.Arn,
/// InfrastructureConfigurationArn = exampleAwsImagebuilderInfrastructureConfiguration.Arn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/imagebuilder"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := imagebuilder.NewImage(ctx, "example", &imagebuilder.ImageArgs{
/// DistributionConfigurationArn:   pulumi.Any(exampleAwsImagebuilderDistributionConfiguration.Arn),
/// ImageRecipeArn:                 pulumi.Any(exampleAwsImagebuilderImageRecipe.Arn),
/// InfrastructureConfigurationArn: pulumi.Any(exampleAwsImagebuilderInfrastructureConfiguration.Arn),
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
/// import com.pulumi.aws.imagebuilder.Image;
/// import com.pulumi.aws.imagebuilder.ImageArgs;
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
/// var example = new Image("example", ImageArgs.builder()
/// .distributionConfigurationArn(exampleAwsImagebuilderDistributionConfiguration.arn())
/// .imageRecipeArn(exampleAwsImagebuilderImageRecipe.arn())
/// .infrastructureConfigurationArn(exampleAwsImagebuilderInfrastructureConfiguration.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:imagebuilder:Image
/// properties:
/// distributionConfigurationArn: ${exampleAwsImagebuilderDistributionConfiguration.arn}
/// imageRecipeArn: ${exampleAwsImagebuilderImageRecipe.arn}
/// infrastructureConfigurationArn: ${exampleAwsImagebuilderInfrastructureConfiguration.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the Image Builder image.
///
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.imagebuilder.Image`" pulumi-lang-dotnet="`aws.imagebuilder.Image`" pulumi-lang-go="`imagebuilder.Image`" pulumi-lang-python="`imagebuilder.Image`" pulumi-lang-yaml="`aws.imagebuilder.Image`" pulumi-lang-java="`aws.imagebuilder.Image`">`aws.imagebuilder.Image`</span> resources using the Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:imagebuilder/image:Image example arn:aws:imagebuilder:us-east-1:123456789012:image/example/1.0.0/1
/// ```
class Image extends CustomResource {
  /// Amazon Resource Name (ARN) of the image.
  late final Output<String> arn;

  /// Amazon Resource Name (ARN) of the container recipe.
  late final Output<String?> containerRecipeArn;

  /// Date the image was created.
  late final Output<String> dateCreated;

  /// Amazon Resource Name (ARN) of the Image Builder Distribution Configuration.
  late final Output<String?> distributionConfigurationArn;

  /// Whether additional information about the image being created is collected. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool?> enhancedImageMetadataEnabled;

  /// Amazon Resource Name (ARN) of the service-linked role to be used by Image Builder to [execute workflows](https://docs.aws.amazon.com/imagebuilder/latest/userguide/manage-image-workflows.html).
  late final Output<String> executionRole;

  /// Amazon Resource Name (ARN) of the image recipe.
  late final Output<String?> imageRecipeArn;

  /// Configuration block with image scanning configuration. Detailed below.
  late final Output<ImageImageScanningConfiguration> imageScanningConfiguration;

  /// Configuration block with image tests configuration. Detailed below.
  late final Output<ImageImageTestsConfiguration> imageTestsConfiguration;

  /// Amazon Resource Name (ARN) of the Image Builder Infrastructure Configuration.
  ///
  /// The following arguments are optional:
  late final Output<String> infrastructureConfigurationArn;

  /// Configuration block with logging configuration. Detailed below.
  late final Output<ImageLoggingConfiguration?> loggingConfiguration;

  /// Name of the AMI.
  late final Output<String> name;

  /// Operating System version of the image.
  late final Output<String> osVersion;

  /// List of objects with resources created by the image.
  late final Output<List<ImageOutputResource>> outputResources;

  /// Platform of the image.
  late final Output<String> platform;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of resource tags for the Image Builder Image. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Version of the image.
  late final Output<String> version;

  /// Configuration block with the workflow configuration. Detailed below.
  late final Output<List<ImageWorkflow>> workflows;

  Image(
    String name, {
    ImageArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:imagebuilder/image:Image',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.containerRecipeArn = registerOutput<String?>('containerRecipeArn');
    this.dateCreated = registerOutput<String>('dateCreated');
    this.distributionConfigurationArn =
        registerOutput<String?>('distributionConfigurationArn');
    this.enhancedImageMetadataEnabled =
        registerOutput<bool?>('enhancedImageMetadataEnabled');
    this.executionRole = registerOutput<String>('executionRole');
    this.imageRecipeArn = registerOutput<String?>('imageRecipeArn');
    this.imageScanningConfiguration =
        registerOutput<ImageImageScanningConfiguration>(
            'imageScanningConfiguration');
    this.imageTestsConfiguration =
        registerOutput<ImageImageTestsConfiguration>('imageTestsConfiguration');
    this.infrastructureConfigurationArn =
        registerOutput<String>('infrastructureConfigurationArn');
    this.loggingConfiguration =
        registerOutput<ImageLoggingConfiguration?>('loggingConfiguration');
    this.name = registerOutput<String>('name');
    this.osVersion = registerOutput<String>('osVersion');
    this.outputResources =
        registerOutput<List<ImageOutputResource>>('outputResources');
    this.platform = registerOutput<String>('platform');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.version = registerOutput<String>('version');
    this.workflows = registerOutput<List<ImageWorkflow>>('workflows');
  }
}
