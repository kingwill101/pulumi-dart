import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_args.dart';
import 'feature_state.dart';

/// Provides a CloudWatch Evidently Feature resource.
///
/// &gt; **Warning:** This resource is deprecated. Use [AWS AppConfig feature flags](https://aws.amazon.com/blogs/mt/using-aws-appconfig-feature-flags/) instead.
///
/// ## Example Usage
///
/// ### Basic
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.evidently.Feature("example", {
///     name: "example",
///     project: exampleAwsEvidentlyProject.name,
///     description: "example description",
///     variations: [{
///         name: "Variation1",
///         value: {
///             stringValue: "example",
///         },
///     }],
///     tags: {
///         Key1: "example Feature",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.evidently.Feature("example",
///     name="example",
///     project=example_aws_evidently_project["name"],
///     description="example description",
///     variations=[{
///         "name": "Variation1",
///         "value": {
///             "string_value": "example",
///         },
///     }],
///     tags={
///         "Key1": "example Feature",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Evidently.Feature("example", new()
///     {
///         Name = "example",
///         Project = exampleAwsEvidentlyProject.Name,
///         Description = "example description",
///         Variations = new[]
///         {
///             new Aws.Evidently.Inputs.FeatureVariationArgs
///             {
///                 Name = "Variation1",
///                 Value = new Aws.Evidently.Inputs.FeatureVariationValueArgs
///                 {
///                     StringValue = "example",
///                 },
///             },
///         },
///         Tags =
///         {
///             { "Key1", "example Feature" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/evidently"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := evidently.NewFeature(ctx, "example", &evidently.FeatureArgs{
/// 			Name:        pulumi.String("example"),
/// 			Project:     pulumi.Any(exampleAwsEvidentlyProject.Name),
/// 			Description: pulumi.String("example description"),
/// 			Variations: evidently.FeatureVariationArray{
/// 				&evidently.FeatureVariationArgs{
/// 					Name: pulumi.String("Variation1"),
/// 					Value: &evidently.FeatureVariationValueArgs{
/// 						StringValue: pulumi.String("example"),
/// 					},
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Key1": pulumi.String("example Feature"),
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
/// import com.pulumi.aws.evidently.Feature;
/// import com.pulumi.aws.evidently.FeatureArgs;
/// import com.pulumi.aws.evidently.inputs.FeatureVariationArgs;
/// import com.pulumi.aws.evidently.inputs.FeatureVariationValueArgs;
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
///         var example = new Feature("example", FeatureArgs.builder()
///             .name("example")
///             .project(exampleAwsEvidentlyProject.name())
///             .description("example description")
///             .variations(FeatureVariationArgs.builder()
///                 .name("Variation1")
///                 .value(FeatureVariationValueArgs.builder()
///                     .stringValue("example")
///                     .build())
///                 .build())
///             .tags(Map.of("Key1", "example Feature"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:evidently:Feature
///     properties:
///       name: example
///       project: ${exampleAwsEvidentlyProject.name}
///       description: example description
///       variations:
///         - name: Variation1
///           value:
///             stringValue: example
///       tags:
///         Key1: example Feature
/// ```
///
///
/// ### With default variation
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.evidently.Feature("example", {
///     name: "example",
///     project: exampleAwsEvidentlyProject.name,
///     defaultVariation: "Variation2",
///     variations: [
///         {
///             name: "Variation1",
///             value: {
///                 stringValue: "exampleval1",
///             },
///         },
///         {
///             name: "Variation2",
///             value: {
///                 stringValue: "exampleval2",
///             },
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.evidently.Feature("example",
///     name="example",
///     project=example_aws_evidently_project["name"],
///     default_variation="Variation2",
///     variations=[
///         {
///             "name": "Variation1",
///             "value": {
///                 "string_value": "exampleval1",
///             },
///         },
///         {
///             "name": "Variation2",
///             "value": {
///                 "string_value": "exampleval2",
///             },
///         },
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
///     var example = new Aws.Evidently.Feature("example", new()
///     {
///         Name = "example",
///         Project = exampleAwsEvidentlyProject.Name,
///         DefaultVariation = "Variation2",
///         Variations = new[]
///         {
///             new Aws.Evidently.Inputs.FeatureVariationArgs
///             {
///                 Name = "Variation1",
///                 Value = new Aws.Evidently.Inputs.FeatureVariationValueArgs
///                 {
///                     StringValue = "exampleval1",
///                 },
///             },
///             new Aws.Evidently.Inputs.FeatureVariationArgs
///             {
///                 Name = "Variation2",
///                 Value = new Aws.Evidently.Inputs.FeatureVariationValueArgs
///                 {
///                     StringValue = "exampleval2",
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/evidently"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := evidently.NewFeature(ctx, "example", &evidently.FeatureArgs{
/// 			Name:             pulumi.String("example"),
/// 			Project:          pulumi.Any(exampleAwsEvidentlyProject.Name),
/// 			DefaultVariation: pulumi.String("Variation2"),
/// 			Variations: evidently.FeatureVariationArray{
/// 				&evidently.FeatureVariationArgs{
/// 					Name: pulumi.String("Variation1"),
/// 					Value: &evidently.FeatureVariationValueArgs{
/// 						StringValue: pulumi.String("exampleval1"),
/// 					},
/// 				},
/// 				&evidently.FeatureVariationArgs{
/// 					Name: pulumi.String("Variation2"),
/// 					Value: &evidently.FeatureVariationValueArgs{
/// 						StringValue: pulumi.String("exampleval2"),
/// 					},
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
/// import com.pulumi.aws.evidently.Feature;
/// import com.pulumi.aws.evidently.FeatureArgs;
/// import com.pulumi.aws.evidently.inputs.FeatureVariationArgs;
/// import com.pulumi.aws.evidently.inputs.FeatureVariationValueArgs;
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
///         var example = new Feature("example", FeatureArgs.builder()
///             .name("example")
///             .project(exampleAwsEvidentlyProject.name())
///             .defaultVariation("Variation2")
///             .variations(
///                 FeatureVariationArgs.builder()
///                     .name("Variation1")
///                     .value(FeatureVariationValueArgs.builder()
///                         .stringValue("exampleval1")
///                         .build())
///                     .build(),
///                 FeatureVariationArgs.builder()
///                     .name("Variation2")
///                     .value(FeatureVariationValueArgs.builder()
///                         .stringValue("exampleval2")
///                         .build())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:evidently:Feature
///     properties:
///       name: example
///       project: ${exampleAwsEvidentlyProject.name}
///       defaultVariation: Variation2
///       variations:
///         - name: Variation1
///           value:
///             stringValue: exampleval1
///         - name: Variation2
///           value:
///             stringValue: exampleval2
/// ```
///
///
/// ### With entity overrides
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.evidently.Feature("example", {
///     name: "example",
///     project: exampleAwsEvidentlyProject.name,
///     entityOverrides: {
///         test1: "Variation1",
///     },
///     variations: [
///         {
///             name: "Variation1",
///             value: {
///                 stringValue: "exampleval1",
///             },
///         },
///         {
///             name: "Variation2",
///             value: {
///                 stringValue: "exampleval2",
///             },
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.evidently.Feature("example",
///     name="example",
///     project=example_aws_evidently_project["name"],
///     entity_overrides={
///         "test1": "Variation1",
///     },
///     variations=[
///         {
///             "name": "Variation1",
///             "value": {
///                 "string_value": "exampleval1",
///             },
///         },
///         {
///             "name": "Variation2",
///             "value": {
///                 "string_value": "exampleval2",
///             },
///         },
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
///     var example = new Aws.Evidently.Feature("example", new()
///     {
///         Name = "example",
///         Project = exampleAwsEvidentlyProject.Name,
///         EntityOverrides =
///         {
///             { "test1", "Variation1" },
///         },
///         Variations = new[]
///         {
///             new Aws.Evidently.Inputs.FeatureVariationArgs
///             {
///                 Name = "Variation1",
///                 Value = new Aws.Evidently.Inputs.FeatureVariationValueArgs
///                 {
///                     StringValue = "exampleval1",
///                 },
///             },
///             new Aws.Evidently.Inputs.FeatureVariationArgs
///             {
///                 Name = "Variation2",
///                 Value = new Aws.Evidently.Inputs.FeatureVariationValueArgs
///                 {
///                     StringValue = "exampleval2",
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/evidently"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := evidently.NewFeature(ctx, "example", &evidently.FeatureArgs{
/// 			Name:    pulumi.String("example"),
/// 			Project: pulumi.Any(exampleAwsEvidentlyProject.Name),
/// 			EntityOverrides: pulumi.StringMap{
/// 				"test1": pulumi.String("Variation1"),
/// 			},
/// 			Variations: evidently.FeatureVariationArray{
/// 				&evidently.FeatureVariationArgs{
/// 					Name: pulumi.String("Variation1"),
/// 					Value: &evidently.FeatureVariationValueArgs{
/// 						StringValue: pulumi.String("exampleval1"),
/// 					},
/// 				},
/// 				&evidently.FeatureVariationArgs{
/// 					Name: pulumi.String("Variation2"),
/// 					Value: &evidently.FeatureVariationValueArgs{
/// 						StringValue: pulumi.String("exampleval2"),
/// 					},
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
/// import com.pulumi.aws.evidently.Feature;
/// import com.pulumi.aws.evidently.FeatureArgs;
/// import com.pulumi.aws.evidently.inputs.FeatureVariationArgs;
/// import com.pulumi.aws.evidently.inputs.FeatureVariationValueArgs;
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
///         var example = new Feature("example", FeatureArgs.builder()
///             .name("example")
///             .project(exampleAwsEvidentlyProject.name())
///             .entityOverrides(Map.of("test1", "Variation1"))
///             .variations(
///                 FeatureVariationArgs.builder()
///                     .name("Variation1")
///                     .value(FeatureVariationValueArgs.builder()
///                         .stringValue("exampleval1")
///                         .build())
///                     .build(),
///                 FeatureVariationArgs.builder()
///                     .name("Variation2")
///                     .value(FeatureVariationValueArgs.builder()
///                         .stringValue("exampleval2")
///                         .build())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:evidently:Feature
///     properties:
///       name: example
///       project: ${exampleAwsEvidentlyProject.name}
///       entityOverrides:
///         test1: Variation1
///       variations:
///         - name: Variation1
///           value:
///             stringValue: exampleval1
///         - name: Variation2
///           value:
///             stringValue: exampleval2
/// ```
///
///
/// ### With evaluation strategy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.evidently.Feature("example", {
///     name: "example",
///     project: exampleAwsEvidentlyProject.name,
///     evaluationStrategy: "ALL_RULES",
///     entityOverrides: {
///         test1: "Variation1",
///     },
///     variations: [{
///         name: "Variation1",
///         value: {
///             stringValue: "exampleval1",
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.evidently.Feature("example",
///     name="example",
///     project=example_aws_evidently_project["name"],
///     evaluation_strategy="ALL_RULES",
///     entity_overrides={
///         "test1": "Variation1",
///     },
///     variations=[{
///         "name": "Variation1",
///         "value": {
///             "string_value": "exampleval1",
///         },
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
///     var example = new Aws.Evidently.Feature("example", new()
///     {
///         Name = "example",
///         Project = exampleAwsEvidentlyProject.Name,
///         EvaluationStrategy = "ALL_RULES",
///         EntityOverrides =
///         {
///             { "test1", "Variation1" },
///         },
///         Variations = new[]
///         {
///             new Aws.Evidently.Inputs.FeatureVariationArgs
///             {
///                 Name = "Variation1",
///                 Value = new Aws.Evidently.Inputs.FeatureVariationValueArgs
///                 {
///                     StringValue = "exampleval1",
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/evidently"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := evidently.NewFeature(ctx, "example", &evidently.FeatureArgs{
/// 			Name:               pulumi.String("example"),
/// 			Project:            pulumi.Any(exampleAwsEvidentlyProject.Name),
/// 			EvaluationStrategy: pulumi.String("ALL_RULES"),
/// 			EntityOverrides: pulumi.StringMap{
/// 				"test1": pulumi.String("Variation1"),
/// 			},
/// 			Variations: evidently.FeatureVariationArray{
/// 				&evidently.FeatureVariationArgs{
/// 					Name: pulumi.String("Variation1"),
/// 					Value: &evidently.FeatureVariationValueArgs{
/// 						StringValue: pulumi.String("exampleval1"),
/// 					},
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
/// import com.pulumi.aws.evidently.Feature;
/// import com.pulumi.aws.evidently.FeatureArgs;
/// import com.pulumi.aws.evidently.inputs.FeatureVariationArgs;
/// import com.pulumi.aws.evidently.inputs.FeatureVariationValueArgs;
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
///         var example = new Feature("example", FeatureArgs.builder()
///             .name("example")
///             .project(exampleAwsEvidentlyProject.name())
///             .evaluationStrategy("ALL_RULES")
///             .entityOverrides(Map.of("test1", "Variation1"))
///             .variations(FeatureVariationArgs.builder()
///                 .name("Variation1")
///                 .value(FeatureVariationValueArgs.builder()
///                     .stringValue("exampleval1")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:evidently:Feature
///     properties:
///       name: example
///       project: ${exampleAwsEvidentlyProject.name}
///       evaluationStrategy: ALL_RULES
///       entityOverrides:
///         test1: Variation1
///       variations:
///         - name: Variation1
///           value:
///             stringValue: exampleval1
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch Evidently Feature using the feature `name` and `name` or `arn` of the hosting CloudWatch Evidently Project separated by a `:`. For example:
///
/// ```sh
/// $ pulumi import aws:evidently/feature:Feature example exampleFeatureName:arn:aws:evidently:us-east-1:123456789012:project/example
/// ```
class Feature extends pulumi.CustomResource {
  /// The ARN of the feature.
  late final pulumi.Output<String> arn;

  /// The date and time that the feature is created.
  late final pulumi.Output<String> createdTime;

  /// The name of the variation to use as the default variation. The default variation is served to users who are not allocated to any ongoing launches or experiments of this feature. This variation must also be listed in the `variations` structure. If you omit `default_variation`, the first variation listed in the `variations` structure is used as the default variation.
  late final pulumi.Output<String> defaultVariation;

  /// Specifies the description of the feature.
  late final pulumi.Output<String?> description;

  /// Specify users that should always be served a specific variation of a feature. Each user is specified by a key-value pair . For each key, specify a user by entering their user ID, account ID, or some other identifier. For the value, specify the name of the variation that they are to be served.
  late final pulumi.Output<Map<String, String>?> entityOverrides;

  /// One or more blocks that define the evaluation rules for the feature. Detailed below
  late final pulumi.Output<List<Map<String, dynamic>>> evaluationRules;

  /// Specify `ALL_RULES` to activate the traffic allocation specified by any ongoing launches or experiments. Specify `DEFAULT_VARIATION` to serve the default variation to all users instead.
  late final pulumi.Output<String> evaluationStrategy;

  /// The date and time that the feature was most recently updated.
  late final pulumi.Output<String> lastUpdatedTime;

  /// The name for the new feature. Minimum length of `1`. Maximum length of `127`.
  late final pulumi.Output<String> name;

  /// The name or ARN of the project that is to contain the new feature.
  late final pulumi.Output<String> project;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The current state of the feature. Valid values are `AVAILABLE` and `UPDATING`.
  late final pulumi.Output<String> status;

  /// Tags to apply to the feature. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Defines the type of value used to define the different feature variations. Valid Values: `STRING`, `LONG`, `DOUBLE`, `BOOLEAN`.
  late final pulumi.Output<String> valueType;

  /// One or more blocks that contain the configuration of the feature's different variations. Detailed below
  late final pulumi.Output<List<Map<String, dynamic>>> variations;

  /// Creates a new [Feature].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Feature]. {@macro pulumi_evidently_feature_feature_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Feature(
    String name, {
    FeatureArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:evidently/feature:Feature',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    createdTime = registerOutput<String>('createdTime');
    defaultVariation = registerOutput<String>('defaultVariation');
    description = registerOutput<String?>('description');
    entityOverrides = registerOutput<Map<String, String>?>('entityOverrides');
    evaluationRules = registerOutput<List<Map<String, dynamic>>>(
      'evaluationRules',
    );
    evaluationStrategy = registerOutput<String>('evaluationStrategy');
    lastUpdatedTime = registerOutput<String>('lastUpdatedTime');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    valueType = registerOutput<String>('valueType');
    variations = registerOutput<List<Map<String, dynamic>>>('variations');
  }

  /// Gets an existing [Feature] resource's state with the given [name] and [id].
  static Feature get(
    String name,
    pulumi.Input<String> id, {
    FeatureState? state,
  }) {
    return Feature._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Feature._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:evidently/feature:Feature',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    createdTime = registerOutput<String>('createdTime');
    defaultVariation = registerOutput<String>('defaultVariation');
    description = registerOutput<String?>('description');
    entityOverrides = registerOutput<Map<String, String>?>('entityOverrides');
    evaluationRules = registerOutput<List<Map<String, dynamic>>>(
      'evaluationRules',
    );
    evaluationStrategy = registerOutput<String>('evaluationStrategy');
    lastUpdatedTime = registerOutput<String>('lastUpdatedTime');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    valueType = registerOutput<String>('valueType');
    variations = registerOutput<List<Map<String, dynamic>>>('variations');
  }
}
