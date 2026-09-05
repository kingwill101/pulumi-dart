import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_args.dart';
import 'image_image_scanning_configuration.dart';
import 'image_image_tests_configuration.dart';
import 'image_logging_configuration.dart';
import 'image_output_resource.dart';
import 'image_state.dart';
import 'image_workflow.dart';

/// Manages an Image Builder Image.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.imagebuilder.Image("example", {
///     distributionConfigurationArn: exampleAwsImagebuilderDistributionConfiguration.arn,
///     imageRecipeArn: exampleAwsImagebuilderImageRecipe.arn,
///     infrastructureConfigurationArn: exampleAwsImagebuilderInfrastructureConfiguration.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.imagebuilder.Image("example",
///     distribution_configuration_arn=example_aws_imagebuilder_distribution_configuration["arn"],
///     image_recipe_arn=example_aws_imagebuilder_image_recipe["arn"],
///     infrastructure_configuration_arn=example_aws_imagebuilder_infrastructure_configuration["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ImageBuilder.Image("example", new()
///     {
///         DistributionConfigurationArn = exampleAwsImagebuilderDistributionConfiguration.Arn,
///         ImageRecipeArn = exampleAwsImagebuilderImageRecipe.Arn,
///         InfrastructureConfigurationArn = exampleAwsImagebuilderInfrastructureConfiguration.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/imagebuilder"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := imagebuilder.NewImage(ctx, "example", &imagebuilder.ImageArgs{
/// 			DistributionConfigurationArn:   pulumi.Any(exampleAwsImagebuilderDistributionConfiguration.Arn),
/// 			ImageRecipeArn:                 pulumi.Any(exampleAwsImagebuilderImageRecipe.Arn),
/// 			InfrastructureConfigurationArn: pulumi.Any(exampleAwsImagebuilderInfrastructureConfiguration.Arn),
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
/// resource "aws_imagebuilder_image" "example" {
///   distribution_configuration_arn   = exampleAwsImagebuilderDistributionConfiguration.arn
///   image_recipe_arn                 = exampleAwsImagebuilderImageRecipe.arn
///   infrastructure_configuration_arn = exampleAwsImagebuilderInfrastructureConfiguration.arn
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
///         var example = new Image("example", ImageArgs.builder()
///             .distributionConfigurationArn(exampleAwsImagebuilderDistributionConfiguration.arn())
///             .imageRecipeArn(exampleAwsImagebuilderImageRecipe.arn())
///             .infrastructureConfigurationArn(exampleAwsImagebuilderInfrastructureConfiguration.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:imagebuilder:Image
///     properties:
///       distributionConfigurationArn: ${exampleAwsImagebuilderDistributionConfiguration.arn}
///       imageRecipeArn: ${exampleAwsImagebuilderImageRecipe.arn}
///       infrastructureConfigurationArn: ${exampleAwsImagebuilderInfrastructureConfiguration.arn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) ARN of the Image Builder image.
///
///
/// Using `pulumi import`, import `aws.imagebuilder.Image` resources using the ARN. For example:
///
/// ```sh
/// $ pulumi import aws:imagebuilder/image:Image example arn:aws:imagebuilder:us-east-1:123456789012:image/example/1.0.0/1
/// ```
class Image extends pulumi.CustomResource {
  /// ARN of the image.
  late final pulumi.Output<String> arn;
  /// ARN of the container recipe.
  late final pulumi.Output<String?> containerRecipeArn;
  /// Date the image was created.
  late final pulumi.Output<String> dateCreated;
  /// ARN of the Image Builder Distribution Configuration.
  late final pulumi.Output<String?> distributionConfigurationArn;
  /// Whether additional information about the image being created is collected. Defaults to `true`.
  late final pulumi.Output<bool?> enhancedImageMetadataEnabled;
  /// ARN of the service-linked role to be used by Image Builder to [execute workflows](https://docs.aws.amazon.com/imagebuilder/latest/userguide/manage-image-workflows.html).
  late final pulumi.Output<String> executionRole;
  /// ARN of the image recipe.
  late final pulumi.Output<String?> imageRecipeArn;
  /// Configuration block with image scanning configuration. Detailed below.
  late final pulumi.Output<ImageImageScanningConfiguration> imageScanningConfiguration;
  /// Configuration block with image tests configuration. Detailed below.
  late final pulumi.Output<ImageImageTestsConfiguration> imageTestsConfiguration;
  /// ARN of the Image Builder Infrastructure Configuration.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> infrastructureConfigurationArn;
  /// Configuration block with logging configuration. Detailed below.
  late final pulumi.Output<ImageLoggingConfiguration?> loggingConfiguration;
  /// Name of the AMI.
  late final pulumi.Output<String> name;
  /// Operating System version of the image.
  late final pulumi.Output<String> osVersion;
  /// List of objects with resources created by the image.
  late final pulumi.Output<List<ImageOutputResource>> outputResources;
  /// Platform of the image.
  late final pulumi.Output<String> platform;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value map of resource tags for the Image Builder Image. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Version of the image.
  late final pulumi.Output<String> version;
  /// Configuration block with the workflow configuration. Detailed below.
  late final pulumi.Output<List<ImageWorkflow>> workflows;

  /// Creates a new [Image].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Image]. {@macro pulumi_imagebuilder_image_image_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Image(
    String name, {
    ImageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:imagebuilder/image:Image',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    containerRecipeArn = registerOutput<String?>('containerRecipeArn');
    dateCreated = registerOutput<String>('dateCreated');
    distributionConfigurationArn = registerOutput<String?>('distributionConfigurationArn');
    enhancedImageMetadataEnabled = registerOutput<bool?>('enhancedImageMetadataEnabled');
    executionRole = registerOutput<String>('executionRole');
    imageRecipeArn = registerOutput<String?>('imageRecipeArn');
    imageScanningConfiguration = registerOutput<ImageImageScanningConfiguration>('imageScanningConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ImageImageScanningConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    imageTestsConfiguration = registerOutput<ImageImageTestsConfiguration>('imageTestsConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ImageImageTestsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    infrastructureConfigurationArn = registerOutput<String>('infrastructureConfigurationArn');
    loggingConfiguration = registerOutput<ImageLoggingConfiguration?>('loggingConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ImageLoggingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    osVersion = registerOutput<String>('osVersion');
    outputResources = registerOutput<List<ImageOutputResource>>('outputResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ImageOutputResource>(guardedValue, (value) => ImageOutputResource.fromMap((value as Map).cast<String, dynamic>())); });
    platform = registerOutput<String>('platform');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    version = registerOutput<String>('version');
    workflows = registerOutput<List<ImageWorkflow>>('workflows', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ImageWorkflow>(guardedValue, (value) => ImageWorkflow.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [Image] resource's state with the given [name] and [id].
  static Image get(
    String name,
    pulumi.Input<String> id, {
    ImageState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Image._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Image._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:imagebuilder/image:Image',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    containerRecipeArn = registerOutput<String?>('containerRecipeArn');
    dateCreated = registerOutput<String>('dateCreated');
    distributionConfigurationArn = registerOutput<String?>('distributionConfigurationArn');
    enhancedImageMetadataEnabled = registerOutput<bool?>('enhancedImageMetadataEnabled');
    executionRole = registerOutput<String>('executionRole');
    imageRecipeArn = registerOutput<String?>('imageRecipeArn');
    imageScanningConfiguration = registerOutput<ImageImageScanningConfiguration>('imageScanningConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ImageImageScanningConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    imageTestsConfiguration = registerOutput<ImageImageTestsConfiguration>('imageTestsConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ImageImageTestsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    infrastructureConfigurationArn = registerOutput<String>('infrastructureConfigurationArn');
    loggingConfiguration = registerOutput<ImageLoggingConfiguration?>('loggingConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ImageLoggingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    osVersion = registerOutput<String>('osVersion');
    outputResources = registerOutput<List<ImageOutputResource>>('outputResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ImageOutputResource>(guardedValue, (value) => ImageOutputResource.fromMap((value as Map).cast<String, dynamic>())); });
    platform = registerOutput<String>('platform');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    version = registerOutput<String>('version');
    workflows = registerOutput<List<ImageWorkflow>>('workflows', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ImageWorkflow>(guardedValue, (value) => ImageWorkflow.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [Image] resource.
  Image.reference(String urn)
    : super(
        'aws:imagebuilder/image:Image',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    containerRecipeArn = registerOutput<String?>('containerRecipeArn');
    dateCreated = registerOutput<String>('dateCreated');
    distributionConfigurationArn = registerOutput<String?>('distributionConfigurationArn');
    enhancedImageMetadataEnabled = registerOutput<bool?>('enhancedImageMetadataEnabled');
    executionRole = registerOutput<String>('executionRole');
    imageRecipeArn = registerOutput<String?>('imageRecipeArn');
    imageScanningConfiguration = registerOutput<ImageImageScanningConfiguration>('imageScanningConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ImageImageScanningConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    imageTestsConfiguration = registerOutput<ImageImageTestsConfiguration>('imageTestsConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ImageImageTestsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    infrastructureConfigurationArn = registerOutput<String>('infrastructureConfigurationArn');
    loggingConfiguration = registerOutput<ImageLoggingConfiguration?>('loggingConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ImageLoggingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    osVersion = registerOutput<String>('osVersion');
    outputResources = registerOutput<List<ImageOutputResource>>('outputResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ImageOutputResource>(guardedValue, (value) => ImageOutputResource.fromMap((value as Map).cast<String, dynamic>())); });
    platform = registerOutput<String>('platform');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    version = registerOutput<String>('version');
    workflows = registerOutput<List<ImageWorkflow>>('workflows', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ImageWorkflow>(guardedValue, (value) => ImageWorkflow.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
