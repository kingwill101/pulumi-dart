import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_configuration_args.dart';
import 'distribution_configuration_distribution.dart';
import 'distribution_configuration_state.dart';

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
///     distributions: [{
///         amiDistributionConfiguration: {
///             launchPermission: {
///                 userIds: ["123456789012"],
///             },
///             amiTags: {
///                 CostCenter: "IT",
///             },
///             name: "example-{{ imagebuilder:buildDate }}",
///         },
///         launchTemplateConfigurations: [{
///             launchTemplateId: "lt-0aaa1bcde2ff3456",
///         }],
///         region: "us-east-1",
///     }],
///     name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.imagebuilder.DistributionConfiguration("example",
///     distributions=[{
///         "ami_distribution_configuration": {
///             "launch_permission": {
///                 "user_ids": ["123456789012"],
///             },
///             "ami_tags": {
///                 "CostCenter": "IT",
///             },
///             "name": "example-{{ imagebuilder:buildDate }}",
///         },
///         "launch_template_configurations": [{
///             "launch_template_id": "lt-0aaa1bcde2ff3456",
///         }],
///         "region": "us-east-1",
///     }],
///     name="example")
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
///         Distributions = new[]
///         {
///             new Aws.ImageBuilder.Inputs.DistributionConfigurationDistributionArgs
///             {
///                 AmiDistributionConfiguration = new Aws.ImageBuilder.Inputs.DistributionConfigurationDistributionAmiDistributionConfigurationArgs
///                 {
///                     LaunchPermission = new Aws.ImageBuilder.Inputs.DistributionConfigurationDistributionAmiDistributionConfigurationLaunchPermissionArgs
///                     {
///                         UserIds = new[]
///                         {
///                             "123456789012",
///                         },
///                     },
///                     AmiTags =
///                     {
///                         { "CostCenter", "IT" },
///                     },
///                     Name = "example-{{ imagebuilder:buildDate }}",
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
///         Name = "example",
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
/// 			Distributions: imagebuilder.DistributionConfigurationDistributionArray{
/// 				&imagebuilder.DistributionConfigurationDistributionArgs{
/// 					AmiDistributionConfiguration: &imagebuilder.DistributionConfigurationDistributionAmiDistributionConfigurationArgs{
/// 						LaunchPermission: &imagebuilder.DistributionConfigurationDistributionAmiDistributionConfigurationLaunchPermissionArgs{
/// 							UserIds: pulumi.StringArray{
/// 								pulumi.String("123456789012"),
/// 							},
/// 						},
/// 						AmiTags: pulumi.StringMap{
/// 							"CostCenter": pulumi.String("IT"),
/// 						},
/// 						Name: pulumi.String("example-{{ imagebuilder:buildDate }}"),
/// 					},
/// 					LaunchTemplateConfigurations: imagebuilder.DistributionConfigurationDistributionLaunchTemplateConfigurationArray{
/// 						&imagebuilder.DistributionConfigurationDistributionLaunchTemplateConfigurationArgs{
/// 							LaunchTemplateId: pulumi.String("lt-0aaa1bcde2ff3456"),
/// 						},
/// 					},
/// 					Region: pulumi.String("us-east-1"),
/// 				},
/// 			},
/// 			Name: pulumi.String("example"),
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
/// resource "aws_imagebuilder_distributionconfiguration" "example" {
///   distributions {
///     ami_distribution_configuration = {
///       launch_permission = {
///         user_ids = ["123456789012"]
///       }
///       ami_tags = {
///         "CostCenter" = "IT"
///       }
///       name = "example-{{ imagebuilder:buildDate }}"
///     }
///     launch_template_configurations {
///       launch_template_id = "lt-0aaa1bcde2ff3456"
///     }
///     region = "us-east-1"
///   }
///   name = "example"
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
/// import com.pulumi.aws.imagebuilder.inputs.DistributionConfigurationDistributionLaunchTemplateConfigurationArgs;
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
///         var example = new DistributionConfiguration("example", DistributionConfigurationArgs.builder()
///             .distributions(DistributionConfigurationDistributionArgs.builder()
///                 .amiDistributionConfiguration(DistributionConfigurationDistributionAmiDistributionConfigurationArgs.builder()
///                     .launchPermission(DistributionConfigurationDistributionAmiDistributionConfigurationLaunchPermissionArgs.builder()
///                         .userIds("123456789012")
///                         .build())
///                     .amiTags(Map.of("CostCenter", "IT"))
///                     .name("example-{{ imagebuilder:buildDate }}")
///                     .build())
///                 .launchTemplateConfigurations(DistributionConfigurationDistributionLaunchTemplateConfigurationArgs.builder()
///                     .launchTemplateId("lt-0aaa1bcde2ff3456")
///                     .build())
///                 .region("us-east-1")
///                 .build())
///             .name("example")
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
///       distributions:
///         - amiDistributionConfiguration:
///             launchPermission:
///               userIds:
///                 - '123456789012'
///             amiTags:
///               CostCenter: IT
///             name: example-{{ imagebuilder:buildDate }}
///           launchTemplateConfigurations:
///             - launchTemplateId: lt-0aaa1bcde2ff3456
///           region: us-east-1
///       name: example
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) ARN of the Image Builder distribution configuration.
///
///
/// Using `pulumi import`, import `aws.imagebuilder.getDistributionConfigurations` resources using the ARN. For example:
///
/// ```sh
/// $ pulumi import aws:imagebuilder/distributionConfiguration:DistributionConfiguration example arn:aws:imagebuilder:us-east-1:123456789012:distribution-configuration/example
/// ```
class DistributionConfiguration extends pulumi.CustomResource {
  /// (Required) ARN of the distribution configuration.
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
  /// Key-value map of resource tags for the distribution configuration. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    dateCreated = registerOutput<String>('dateCreated');
    dateUpdated = registerOutput<String>('dateUpdated');
    description = registerOutput<String?>('description');
    distributions = registerOutput<List<DistributionConfigurationDistribution>>('distributions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DistributionConfigurationDistribution>(guardedValue, (value) => DistributionConfigurationDistribution.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [DistributionConfiguration] resource's state with the given [name] and [id].
  static DistributionConfiguration get(
    String name,
    pulumi.Input<String> id, {
    DistributionConfigurationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DistributionConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DistributionConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:imagebuilder/distributionConfiguration:DistributionConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    dateCreated = registerOutput<String>('dateCreated');
    dateUpdated = registerOutput<String>('dateUpdated');
    description = registerOutput<String?>('description');
    distributions = registerOutput<List<DistributionConfigurationDistribution>>('distributions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DistributionConfigurationDistribution>(guardedValue, (value) => DistributionConfigurationDistribution.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [DistributionConfiguration] resource.
  DistributionConfiguration.reference(String urn)
    : super(
        'aws:imagebuilder/distributionConfiguration:DistributionConfiguration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    dateCreated = registerOutput<String>('dateCreated');
    dateUpdated = registerOutput<String>('dateUpdated');
    description = registerOutput<String?>('description');
    distributions = registerOutput<List<DistributionConfigurationDistribution>>('distributions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DistributionConfigurationDistribution>(guardedValue, (value) => DistributionConfigurationDistribution.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
