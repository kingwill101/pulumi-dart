import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_recipe_args.dart';
import 'image_recipe_state.dart';
import 'image_recipe_systems_manager_agent.dart';

/// Manages an Image Builder Image Recipe.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.imagebuilder.ImageRecipe("example", {
///     blockDeviceMappings: [{
///         deviceName: "/dev/xvdb",
///         ebs: {
///             deleteOnTermination: "true",
///             volumeSize: 100,
///             volumeType: "gp2",
///         },
///     }],
///     components: [{
///         componentArn: exampleAwsImagebuilderComponent.arn,
///         parameters: [
///             {
///                 name: "Parameter1",
///                 value: "Value1",
///             },
///             {
///                 name: "Parameter2",
///                 value: "Value2",
///             },
///         ],
///     }],
///     name: "example",
///     parentImage: `arn:${current.partition}:imagebuilder:${currentAwsRegion.region}:aws:image/amazon-linux-2-x86/x.x.x`,
///     version: "1.0.0",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.imagebuilder.ImageRecipe("example",
///     block_device_mappings=[{
///         "device_name": "/dev/xvdb",
///         "ebs": {
///             "delete_on_termination": "true",
///             "volume_size": 100,
///             "volume_type": "gp2",
///         },
///     }],
///     components=[{
///         "component_arn": example_aws_imagebuilder_component["arn"],
///         "parameters": [
///             {
///                 "name": "Parameter1",
///                 "value": "Value1",
///             },
///             {
///                 "name": "Parameter2",
///                 "value": "Value2",
///             },
///         ],
///     }],
///     name="example",
///     parent_image=f"arn:{current['partition']}:imagebuilder:{current_aws_region['region']}:aws:image/amazon-linux-2-x86/x.x.x",
///     version="1.0.0")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ImageBuilder.ImageRecipe("example", new()
///     {
///         BlockDeviceMappings = new[]
///         {
///             new Aws.ImageBuilder.Inputs.ImageRecipeBlockDeviceMappingArgs
///             {
///                 DeviceName = "/dev/xvdb",
///                 Ebs = new Aws.ImageBuilder.Inputs.ImageRecipeBlockDeviceMappingEbsArgs
///                 {
///                     DeleteOnTermination = "true",
///                     VolumeSize = 100,
///                     VolumeType = "gp2",
///                 },
///             },
///         },
///         Components = new[]
///         {
///             new Aws.ImageBuilder.Inputs.ImageRecipeComponentArgs
///             {
///                 ComponentArn = exampleAwsImagebuilderComponent.Arn,
///                 Parameters = new[]
///                 {
///                     new Aws.ImageBuilder.Inputs.ImageRecipeComponentParameterArgs
///                     {
///                         Name = "Parameter1",
///                         Value = "Value1",
///                     },
///                     new Aws.ImageBuilder.Inputs.ImageRecipeComponentParameterArgs
///                     {
///                         Name = "Parameter2",
///                         Value = "Value2",
///                     },
///                 },
///             },
///         },
///         Name = "example",
///         ParentImage = $"arn:{current.Partition}:imagebuilder:{currentAwsRegion.Region}:aws:image/amazon-linux-2-x86/x.x.x",
///         Version = "1.0.0",
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
/// 		_, err := imagebuilder.NewImageRecipe(ctx, "example", &imagebuilder.ImageRecipeArgs{
/// 			BlockDeviceMappings: imagebuilder.ImageRecipeBlockDeviceMappingArray{
/// 				&imagebuilder.ImageRecipeBlockDeviceMappingArgs{
/// 					DeviceName: pulumi.String("/dev/xvdb"),
/// 					Ebs: &imagebuilder.ImageRecipeBlockDeviceMappingEbsArgs{
/// 						DeleteOnTermination: pulumi.String("true"),
/// 						VolumeSize:          pulumi.Int(100),
/// 						VolumeType:          pulumi.String("gp2"),
/// 					},
/// 				},
/// 			},
/// 			Components: imagebuilder.ImageRecipeComponentArray{
/// 				&imagebuilder.ImageRecipeComponentArgs{
/// 					ComponentArn: pulumi.Any(exampleAwsImagebuilderComponent.Arn),
/// 					Parameters: imagebuilder.ImageRecipeComponentParameterArray{
/// 						&imagebuilder.ImageRecipeComponentParameterArgs{
/// 							Name:  pulumi.String("Parameter1"),
/// 							Value: pulumi.String("Value1"),
/// 						},
/// 						&imagebuilder.ImageRecipeComponentParameterArgs{
/// 							Name:  pulumi.String("Parameter2"),
/// 							Value: pulumi.String("Value2"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Name:        pulumi.String("example"),
/// 			ParentImage: pulumi.Sprintf("arn:%v:imagebuilder:%v:aws:image/amazon-linux-2-x86/x.x.x", current.Partition, currentAwsRegion.Region),
/// 			Version:     pulumi.String("1.0.0"),
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
/// import com.pulumi.aws.imagebuilder.ImageRecipe;
/// import com.pulumi.aws.imagebuilder.ImageRecipeArgs;
/// import com.pulumi.aws.imagebuilder.inputs.ImageRecipeBlockDeviceMappingArgs;
/// import com.pulumi.aws.imagebuilder.inputs.ImageRecipeBlockDeviceMappingEbsArgs;
/// import com.pulumi.aws.imagebuilder.inputs.ImageRecipeComponentArgs;
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
///         var example = new ImageRecipe("example", ImageRecipeArgs.builder()
///             .blockDeviceMappings(ImageRecipeBlockDeviceMappingArgs.builder()
///                 .deviceName("/dev/xvdb")
///                 .ebs(ImageRecipeBlockDeviceMappingEbsArgs.builder()
///                     .deleteOnTermination("true")
///                     .volumeSize(100)
///                     .volumeType("gp2")
///                     .build())
///                 .build())
///             .components(ImageRecipeComponentArgs.builder()
///                 .componentArn(exampleAwsImagebuilderComponent.arn())
///                 .parameters(
///                     ImageRecipeComponentParameterArgs.builder()
///                         .name("Parameter1")
///                         .value("Value1")
///                         .build(),
///                     ImageRecipeComponentParameterArgs.builder()
///                         .name("Parameter2")
///                         .value("Value2")
///                         .build())
///                 .build())
///             .name("example")
///             .parentImage(String.format("arn:%s:imagebuilder:%s:aws:image/amazon-linux-2-x86/x.x.x", current.partition(),currentAwsRegion.region()))
///             .version("1.0.0")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:imagebuilder:ImageRecipe
///     properties:
///       blockDeviceMappings:
///         - deviceName: /dev/xvdb
///           ebs:
///             deleteOnTermination: true
///             volumeSize: 100
///             volumeType: gp2
///       components:
///         - componentArn: ${exampleAwsImagebuilderComponent.arn}
///           parameters:
///             - name: Parameter1
///               value: Value1
///             - name: Parameter2
///               value: Value2
///       name: example
///       parentImage: arn:${current.partition}:imagebuilder:${currentAwsRegion.region}:aws:image/amazon-linux-2-x86/x.x.x
///       version: 1.0.0
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Image Builder image recipe.
///
///
/// Using `pulumi import`, import `aws.imagebuilder.ImageRecipe` resources using the Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:imagebuilder/imageRecipe:ImageRecipe example arn:aws:imagebuilder:us-east-1:123456789012:image-recipe/example/1.0.0
/// ```
class ImageRecipe extends pulumi.CustomResource {
  /// Tags that are applied to the AMI that Image Builder creates during the Build phase prior to image distribution. Maximum of 50 tags.
  late final pulumi.Output<Map<String, String>?> amiTags;
  /// Amazon Resource Name (ARN) of the image recipe.
  late final pulumi.Output<String> arn;
  /// Configuration block(s) with block device mappings for the image recipe. Detailed below.
  late final pulumi.Output<List<Map<String, dynamic>>?> blockDeviceMappings;
  /// Ordered configuration block(s) with components for the image recipe. Detailed below.
  late final pulumi.Output<List<Map<String, dynamic>>> components;
  /// Date the image recipe was created.
  late final pulumi.Output<String> dateCreated;
  /// Description of the image recipe.
  late final pulumi.Output<String?> description;
  /// Name of the image recipe.
  late final pulumi.Output<String> name;
  /// Owner of the image recipe.
  late final pulumi.Output<String> owner;
  /// The image recipe uses this image as a base from which to build your customized image. The value can be the base image ARN, an AMI ID, or an SSM Parameter referencing the AMI. For an SSM Parameter, enter the prefix `ssm:`, followed by the parameter name or ARN.
  late final pulumi.Output<String> parentImage;
  /// Platform of the image recipe.
  late final pulumi.Output<String> platform;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Configuration block for the Systems Manager Agent installed by default by Image Builder. Detailed below.
  late final pulumi.Output<ImageRecipeSystemsManagerAgent> systemsManagerAgent;
  /// Key-value map of resource tags for the image recipe. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Base64 encoded user data. Use this to provide commands or a command script to run when you launch your build instance.
  late final pulumi.Output<String> userDataBase64;
  /// The semantic version of the image recipe, which specifies the version in the following format, with numeric values in each position to indicate a specific version: major.minor.patch. For example: 1.0.0.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> version;
  /// The working directory to be used during build and test workflows.
  late final pulumi.Output<String?> workingDirectory;

  /// Creates a new [ImageRecipe].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ImageRecipe]. {@macro pulumi_imagebuilder_image_recipe_image_recipe_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ImageRecipe(
    String name, {
    ImageRecipeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:imagebuilder/imageRecipe:ImageRecipe',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    amiTags = registerOutput<Map<String, String>?>('amiTags');
    arn = registerOutput<String>('arn');
    blockDeviceMappings = registerOutput<List<Map<String, dynamic>>?>('blockDeviceMappings');
    components = registerOutput<List<Map<String, dynamic>>>('components');
    dateCreated = registerOutput<String>('dateCreated');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    owner = registerOutput<String>('owner');
    parentImage = registerOutput<String>('parentImage');
    platform = registerOutput<String>('platform');
    region = registerOutput<String>('region');
    systemsManagerAgent = registerOutput<ImageRecipeSystemsManagerAgent>('systemsManagerAgent', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ImageRecipeSystemsManagerAgent.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    userDataBase64 = registerOutput<String>('userDataBase64');
    version = registerOutput<String>('version');
    workingDirectory = registerOutput<String?>('workingDirectory');
  }

  /// Gets an existing [ImageRecipe] resource's state with the given [name] and [id].
  static ImageRecipe get(
    String name,
    pulumi.Input<String> id, {
    ImageRecipeState? state,
  }) {
    return ImageRecipe._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ImageRecipe._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:imagebuilder/imageRecipe:ImageRecipe',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    amiTags = registerOutput<Map<String, String>?>('amiTags');
    arn = registerOutput<String>('arn');
    blockDeviceMappings = registerOutput<List<Map<String, dynamic>>?>('blockDeviceMappings');
    components = registerOutput<List<Map<String, dynamic>>>('components');
    dateCreated = registerOutput<String>('dateCreated');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    owner = registerOutput<String>('owner');
    parentImage = registerOutput<String>('parentImage');
    platform = registerOutput<String>('platform');
    region = registerOutput<String>('region');
    systemsManagerAgent = registerOutput<ImageRecipeSystemsManagerAgent>('systemsManagerAgent', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ImageRecipeSystemsManagerAgent.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    userDataBase64 = registerOutput<String>('userDataBase64');
    version = registerOutput<String>('version');
    workingDirectory = registerOutput<String?>('workingDirectory');
  }
}
