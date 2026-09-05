import 'package:pulumi/pulumi.dart' as pulumi;
import 'aggregator_v2_args.dart';
import 'aggregator_v2_state.dart';

/// Manages a Security Hub V2 Aggregator, which enables cross-region finding aggregation.
///
/// &gt; **NOTE:** Security Hub V2 must be enabled (`aws.securityhub.AccountV2`) before creating an aggregator.
///
/// ## Example Usage
///
/// ### All Regions
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.securityhub.AccountV2("example", {});
/// const exampleAggregatorV2 = new aws.securityhub.AggregatorV2("example", {regionLinkingMode: "ALL_REGIONS"}, {
///     dependsOn: [example],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.securityhub.AccountV2("example")
/// example_aggregator_v2 = aws.securityhub.AggregatorV2("example", region_linking_mode="ALL_REGIONS",
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
///     var example = new Aws.SecurityHub.AccountV2("example");
///
///     var exampleAggregatorV2 = new Aws.SecurityHub.AggregatorV2("example", new()
///     {
///         RegionLinkingMode = "ALL_REGIONS",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/securityhub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := securityhub.NewAccountV2(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securityhub.NewAggregatorV2(ctx, "example", &securityhub.AggregatorV2Args{
/// 			RegionLinkingMode: pulumi.String("ALL_REGIONS"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_securityhub_accountv2" "example" {
/// }
/// resource "aws_securityhub_aggregatorv2" "example" {
///   depends_on          = [aws_securityhub_accountv2.example]
///   region_linking_mode = "ALL_REGIONS"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.securityhub.AccountV2;
/// import com.pulumi.aws.securityhub.AggregatorV2;
/// import com.pulumi.aws.securityhub.AggregatorV2Args;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new AccountV2("example");
///
///         var exampleAggregatorV2 = new AggregatorV2("exampleAggregatorV2", AggregatorV2Args.builder()
///             .regionLinkingMode("ALL_REGIONS")
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
///     type: aws:securityhub:AccountV2
///   exampleAggregatorV2:
///     type: aws:securityhub:AggregatorV2
///     name: example
///     properties:
///       regionLinkingMode: ALL_REGIONS
///     options:
///       dependsOn:
///         - ${example}
/// ```
///
///
/// ### Specified Regions
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.securityhub.AccountV2("example", {});
/// const exampleAggregatorV2 = new aws.securityhub.AggregatorV2("example", {
///     regionLinkingMode: "SPECIFIED_REGIONS",
///     linkedRegions: [
///         "us-west-2",
///         "eu-west-1",
///     ],
/// }, {
///     dependsOn: [example],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.securityhub.AccountV2("example")
/// example_aggregator_v2 = aws.securityhub.AggregatorV2("example",
///     region_linking_mode="SPECIFIED_REGIONS",
///     linked_regions=[
///         "us-west-2",
///         "eu-west-1",
///     ],
///     opts = pulumi.ResourceOptions(depends_on=[example]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SecurityHub.AccountV2("example");
///
///     var exampleAggregatorV2 = new Aws.SecurityHub.AggregatorV2("example", new()
///     {
///         RegionLinkingMode = "SPECIFIED_REGIONS",
///         LinkedRegions = new[]
///         {
///             "us-west-2",
///             "eu-west-1",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/securityhub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := securityhub.NewAccountV2(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securityhub.NewAggregatorV2(ctx, "example", &securityhub.AggregatorV2Args{
/// 			RegionLinkingMode: pulumi.String("SPECIFIED_REGIONS"),
/// 			LinkedRegions: pulumi.StringArray{
/// 				pulumi.String("us-west-2"),
/// 				pulumi.String("eu-west-1"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_securityhub_accountv2" "example" {
/// }
/// resource "aws_securityhub_aggregatorv2" "example" {
///   depends_on          = [aws_securityhub_accountv2.example]
///   region_linking_mode = "SPECIFIED_REGIONS"
///   linked_regions      = ["us-west-2", "eu-west-1"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.securityhub.AccountV2;
/// import com.pulumi.aws.securityhub.AggregatorV2;
/// import com.pulumi.aws.securityhub.AggregatorV2Args;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new AccountV2("example");
///
///         var exampleAggregatorV2 = new AggregatorV2("exampleAggregatorV2", AggregatorV2Args.builder()
///             .regionLinkingMode("SPECIFIED_REGIONS")
///             .linkedRegions(
///                 "us-west-2",
///                 "eu-west-1")
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
///     type: aws:securityhub:AccountV2
///   exampleAggregatorV2:
///     type: aws:securityhub:AggregatorV2
///     name: example
///     properties:
///       regionLinkingMode: SPECIFIED_REGIONS
///       linkedRegions:
///         - us-west-2
///         - eu-west-1
///     options:
///       dependsOn:
///         - ${example}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) ARN of the Security Hub V2 aggregator.
///
///
/// Using `pulumi import`, import Security Hub V2 aggregators using `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:securityhub/aggregatorV2:AggregatorV2 example arn:aws:securityhub:us-east-1:123456789012:aggregator/v2/example
/// ```
class AggregatorV2 extends pulumi.CustomResource {
  /// The AWS Region where data is aggregated.
  late final pulumi.Output<String> aggregationRegion;
  /// ARN of the Security Hub V2 Aggregator.
  late final pulumi.Output<String> arn;
  /// List of Regions linked to the aggregation Region. Required when `regionLinkingMode` is `SPECIFIED_REGIONS` or `ALL_REGIONS_EXCEPT_SPECIFIED`.
  late final pulumi.Output<List<String>?> linkedRegions;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Determines how Regions are linked to the aggregator. Valid values: `ALL_REGIONS`, `ALL_REGIONS_EXCEPT_SPECIFIED`, `SPECIFIED_REGIONS`.
  late final pulumi.Output<String> regionLinkingMode;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [AggregatorV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AggregatorV2]. {@macro pulumi_securityhub_aggregator_v2_aggregator_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AggregatorV2(
    String name, {
    AggregatorV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:securityhub/aggregatorV2:AggregatorV2',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    aggregationRegion = registerOutput<String>('aggregationRegion');
    arn = registerOutput<String>('arn');
    linkedRegions = registerOutput<List<String>?>('linkedRegions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    region = registerOutput<String>('region');
    regionLinkingMode = registerOutput<String>('regionLinkingMode');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [AggregatorV2] resource's state with the given [name] and [id].
  static AggregatorV2 get(
    String name,
    pulumi.Input<String> id, {
    AggregatorV2State? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AggregatorV2._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AggregatorV2._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:securityhub/aggregatorV2:AggregatorV2',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aggregationRegion = registerOutput<String>('aggregationRegion');
    arn = registerOutput<String>('arn');
    linkedRegions = registerOutput<List<String>?>('linkedRegions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    region = registerOutput<String>('region');
    regionLinkingMode = registerOutput<String>('regionLinkingMode');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [AggregatorV2] resource.
  AggregatorV2.reference(String urn)
    : super(
        'aws:securityhub/aggregatorV2:AggregatorV2',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    aggregationRegion = registerOutput<String>('aggregationRegion');
    arn = registerOutput<String>('arn');
    linkedRegions = registerOutput<List<String>?>('linkedRegions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    region = registerOutput<String>('region');
    regionLinkingMode = registerOutput<String>('regionLinkingMode');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
