import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_configuration_args.dart';
import 'distribution_configuration_distribution.dart';

/// Manages an Image Builder Distribution Configuration.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.imagebuilder.DistributionConfiguration("example", {
///     name: "example",
///     distributions: [{
///         amiDistributionConfiguration: {
///             amiTags: {
///                 CostCenter: "IT",
///             },
///             name: "example-{{ imagebuilder:buildDate }}",
///             launchPermission: {
///                 userIds: ["123456789012"],
///             },
///         },
///         launchTemplateConfigurations: [{
///             launchTemplateId: "lt-0aaa1bcde2ff3456",
///         }],
///         region: "us-east-1",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.imagebuilder.DistributionConfiguration("example",
///     name="example",
///     distributions=[{
///         "ami_distribution_configuration": {
///             "ami_tags": {
///                 "CostCenter": "IT",
///             },
///             "name": "example-{{ imagebuilder:buildDate }}",
///             "launch_permission": {
///                 "user_ids": ["123456789012"],
///             },
///         },
///         "launch_template_configurations": [{
///             "launch_template_id": "lt-0aaa1bcde2ff3456",
///         }],
///         "region": "us-east-1",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ImageBuilder.DistributionConfiguration("example", new()
///     {
///         Name = "example",
///         Distributions = new[]
///         {
///             new Aws.ImageBuilder.Inputs.DistributionConfigurationDistributionArgs
///             {
///                 AmiDistributionConfiguration = new Aws.ImageBuilder.Inputs.DistributionConfigurationDistributionAmiDistributionConfigurationArgs
///                 {
///                     AmiTags =
///                     {
///                         { "CostCenter", "IT" },
///                     },
///                     Name = "example-{{ imagebuilder:buildDate }}",
///                     LaunchPermission = new Aws.ImageBuilder.Inputs.DistributionConfigurationDistributionAmiDistributionConfigurationLaunchPermissionArgs
///                     {
///                         UserIds = new[]
///                         {
///                             "123456789012",
///                         },
///                     },
///                 },
///                 LaunchTemplateConfigurations = new[]
///                 {
///                     new Aws.ImageBuilder.Inputs.DistributionConfigurationDistributionLaunchTemplateConfigurationArgs
///                     {
///                         LaunchTemplateId = "lt-0aaa1bcde2ff3456",
///                     },
///                 },
///                 Region = "us-east-1",
///             },
///         },
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
/// 		_, err := imagebuilder.NewDistributionConfiguration(ctx, "example", &imagebuilder.DistributionConfigurationArgs{
/// 			Name: pulumi.String("example"),
/// 			Distributions: imagebuilder.DistributionConfigurationDistributionArray{
/// 				&imagebuilder.DistributionConfigurationDistributionArgs{
/// 					AmiDistributionConfiguration: &imagebuilder.DistributionConfigurationDistributionAmiDistributionConfigurationArgs{
/// 						AmiTags: pulumi.StringMap{
/// 							"CostCenter": pulumi.String("IT"),
/// 						},
/// 						Name: pulumi.String("example-{{ imagebuilder:buildDate }}"),
/// 						LaunchPermission: &imagebuilder.DistributionConfigurationDistributionAmiDistributionConfigurationLaunchPermissionArgs{
/// 							UserIds: pulumi.StringArray{
/// 								pulumi.String("123456789012"),
/// 							},
/// 						},
/// 					},
/// 					LaunchTemplateConfigurations: imagebuilder.DistributionConfigurationDistributionLaunchTemplateConfigurationArray{
/// 						&imagebuilder.DistributionConfigurationDistributionLaunchTemplateConfigurationArgs{
/// 							LaunchTemplateId: pulumi.String("lt-0aaa1bcde2ff3456"),
/// 						},
/// 					},
/// 					Region: pulumi.String("us-east-1"),
/// 				},
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
/// import com.pulumi.aws.imagebuilder.DistributionConfiguration;
/// import com.pulumi.aws.imagebuilder.DistributionConfigurationArgs;
/// import com.pulumi.aws.imagebuilder.inputs.DistributionConfigurationDistributionArgs;
/// import com.pulumi.aws.imagebuilder.inputs.DistributionConfigurationDistributionAmiDistributionConfigurationArgs;
/// import com.pulumi.aws.imagebuilder.inputs.DistributionConfigurationDistributionAmiDistributionConfigurationLaunchPermissionArgs;
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
///         var example = new DistributionConfiguration("example", DistributionConfigurationArgs.builder()
///             .name("example")
///             .distributions(DistributionConfigurationDistributionArgs.builder()
///                 .amiDistributionConfiguration(DistributionConfigurationDistributionAmiDistributionConfigurationArgs.builder()
///                     .amiTags(Map.of("CostCenter", "IT"))
///                     .name("example-{{ imagebuilder:buildDate }}")
///                     .launchPermission(DistributionConfigurationDistributionAmiDistributionConfigurationLaunchPermissionArgs.builder()
///                         .userIds("123456789012")
///                         .build())
///                     .build())
///                 .launchTemplateConfigurations(DistributionConfigurationDistributionLaunchTemplateConfigurationArgs.builder()
///                     .launchTemplateId("lt-0aaa1bcde2ff3456")
///                     .build())
///                 .region("us-east-1")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:imagebuilder:DistributionConfiguration
///     properties:
///       name: example
///       distributions:
///         - amiDistributionConfiguration:
///             amiTags:
///               CostCenter: IT
///             name: example-{{ imagebuilder:buildDate }}
///             launchPermission:
///               userIds:
///                 - '123456789012'
///           launchTemplateConfigurations:
///             - launchTemplateId: lt-0aaa1bcde2ff3456
///           region: us-east-1
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Image Builder distribution configuration.
///
///
/// Using `pulumi import`, import `aws.imagebuilder.getDistributionConfigurations` resources using the Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:imagebuilder/distributionConfiguration:DistributionConfiguration example arn:aws:imagebuilder:us-east-1:123456789012:distribution-configuration/example
/// ```
class DistributionConfiguration extends pulumi.CustomResource {
  /// (Required) Amazon Resource Name (ARN) of the distribution configuration.
  late final pulumi.Output<String> arn;
  /// Date the distribution configuration was created.
  late final pulumi.Output<String> dateCreated;
  /// Date the distribution configuration was updated.
  late final pulumi.Output<String> dateUpdated;
  /// Description of the distribution configuration.
  late final pulumi.Output<String?> description;
  /// One or more configuration blocks with distribution settings. Detailed below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<DistributionConfigurationDistribution>> distributions;
  /// Name of the distribution configuration.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value map of resource tags for the distribution configuration. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [DistributionConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DistributionConfiguration]. {@macro pulumi_imagebuilder_distribution_configuration_distribution_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DistributionConfiguration(
    String name, {
    DistributionConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:imagebuilder/distributionConfiguration:DistributionConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.dateCreated = registerOutput<String>('dateCreated');
    this.dateUpdated = registerOutput<String>('dateUpdated');
    this.description = registerOutput<String?>('description');
    this.distributions = registerOutput<List<DistributionConfigurationDistribution>>('distributions');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
