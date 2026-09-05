import 'package:pulumi/pulumi.dart' as pulumi;
import 'findings_filter_args.dart';
import 'findings_filter_finding_criteria.dart';
import 'findings_filter_state.dart';

/// Provides a resource to manage an [Amazon Macie Findings Filter](https://docs.aws.amazon.com/macie/latest/APIReference/findingsfilters-id.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.macie2.Account("example", {});
/// const test = new aws.macie.FindingsFilter("test", {
///     findingCriteria: {
///         criterions: [{
///             field: "region",
///             eqs: [current.region],
///         }],
///     },
///     name: "NAME OF THE FINDINGS FILTER",
///     description: "DESCRIPTION",
///     position: 1,
///     action: "ARCHIVE",
/// }, {
///     dependsOn: [testAwsMacie2Account],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.macie2.Account("example")
/// test = aws.macie.FindingsFilter("test",
///     finding_criteria={
///         "criterions": [{
///             "field": "region",
///             "eqs": [current["region"]],
///         }],
///     },
///     name="NAME OF THE FINDINGS FILTER",
///     description="DESCRIPTION",
///     position=1,
///     action="ARCHIVE",
///     opts = pulumi.ResourceOptions(depends_on=[test_aws_macie2_account]))
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
///     var test = new Aws.Macie.FindingsFilter("test", new()
///     {
///         FindingCriteria = new Aws.Macie.Inputs.FindingsFilterFindingCriteriaArgs
///         {
///             Criterions = new[]
///             {
///                 new Aws.Macie.Inputs.FindingsFilterFindingCriteriaCriterionArgs
///                 {
///                     Field = "region",
///                     Eqs = new[]
///                     {
///                         current.Region,
///                     },
///                 },
///             },
///         },
///         Name = "NAME OF THE FINDINGS FILTER",
///         Description = "DESCRIPTION",
///         Position = 1,
///         Action = "ARCHIVE",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             testAwsMacie2Account,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/macie"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/macie2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := macie2.NewAccount(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = macie.NewFindingsFilter(ctx, "test", &macie.FindingsFilterArgs{
/// 			FindingCriteria: &macie.FindingsFilterFindingCriteriaArgs{
/// 				Criterions: macie.FindingsFilterFindingCriteriaCriterionArray{
/// 					&macie.FindingsFilterFindingCriteriaCriterionArgs{
/// 						Field: pulumi.String("region"),
/// 						Eqs: pulumi.StringArray{
/// 							current.Region,
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Name:        pulumi.String("NAME OF THE FINDINGS FILTER"),
/// 			Description: pulumi.String("DESCRIPTION"),
/// 			Position:    pulumi.Int(1),
/// 			Action:      pulumi.String("ARCHIVE"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			testAwsMacie2Account,
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
/// resource "aws_macie2_account" "example" {
/// }
/// resource "aws_macie_findingsfilter" "test" {
///   depends_on = [testAwsMacie2Account]
///   finding_criteria = {
///     criterions = [{
///       "field" = "region"
///       "eqs"   = [current.region]
///     }]
///   }
///   name        = "NAME OF THE FINDINGS FILTER"
///   description = "DESCRIPTION"
///   position    = 1
///   action      = "ARCHIVE"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.macie2.Account;
/// import com.pulumi.aws.macie.FindingsFilter;
/// import com.pulumi.aws.macie.FindingsFilterArgs;
/// import com.pulumi.aws.macie.inputs.FindingsFilterFindingCriteriaArgs;
/// import com.pulumi.aws.macie.inputs.FindingsFilterFindingCriteriaCriterionArgs;
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
///         var example = new Account("example");
///
///         var test = new FindingsFilter("test", FindingsFilterArgs.builder()
///             .findingCriteria(FindingsFilterFindingCriteriaArgs.builder()
///                 .criterions(FindingsFilterFindingCriteriaCriterionArgs.builder()
///                     .field("region")
///                     .eqs(current.region())
///                     .build())
///                 .build())
///             .name("NAME OF THE FINDINGS FILTER")
///             .description("DESCRIPTION")
///             .position(1)
///             .action("ARCHIVE")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(testAwsMacie2Account)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:macie2:Account
///   test:
///     type: aws:macie:FindingsFilter
///     properties:
///       findingCriteria:
///         criterions:
///           - field: region
///             eqs:
///               - ${current.region}
///       name: NAME OF THE FINDINGS FILTER
///       description: DESCRIPTION
///       position: 1
///       action: ARCHIVE
///     options:
///       dependsOn:
///         - ${testAwsMacie2Account}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.macie.FindingsFilter` using the id. For example:
///
/// ```sh
/// $ pulumi import aws:macie/findingsFilter:FindingsFilter example abcd1
/// ```
class FindingsFilter extends pulumi.CustomResource {
  /// The action to perform on findings that meet the filter criteria (`findingCriteria`). Valid values are: `ARCHIVE`, suppress (automatically archive) the findings; and, `NOOP`, don't perform any action on the findings.
  late final pulumi.Output<String> action;
  /// ARN of the Findings Filter.
  late final pulumi.Output<String> arn;
  /// A custom description of the filter. The description can contain as many as 512 characters.
  late final pulumi.Output<String?> description;
  /// The criteria to use to filter findings.
  late final pulumi.Output<FindingsFilterFindingCriteria> findingCriteria;
  /// A custom name for the filter. The name must contain at least 3 characters and can contain as many as 64 characters. If omitted, the provider will assign a random, unique name. Conflicts with `namePrefix`.
  late final pulumi.Output<String> name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;
  /// The position of the filter in the list of saved filters on the Amazon Macie console. This value also determines the order in which the filter is applied to findings, relative to other filters that are also applied to the findings.
  late final pulumi.Output<int> position;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [FindingsFilter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FindingsFilter]. {@macro pulumi_macie_findings_filter_findings_filter_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FindingsFilter(
    String name, {
    FindingsFilterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:macie/findingsFilter:FindingsFilter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    action = registerOutput<String>('action');
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    findingCriteria = registerOutput<FindingsFilterFindingCriteria>('findingCriteria', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FindingsFilterFindingCriteria.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    position = registerOutput<int>('position');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [FindingsFilter] resource's state with the given [name] and [id].
  static FindingsFilter get(
    String name,
    pulumi.Input<String> id, {
    FindingsFilterState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return FindingsFilter._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  FindingsFilter._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:macie/findingsFilter:FindingsFilter',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    action = registerOutput<String>('action');
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    findingCriteria = registerOutput<FindingsFilterFindingCriteria>('findingCriteria', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FindingsFilterFindingCriteria.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    position = registerOutput<int>('position');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [FindingsFilter] resource.
  FindingsFilter.reference(String urn)
    : super(
        'aws:macie/findingsFilter:FindingsFilter',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    action = registerOutput<String>('action');
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    findingCriteria = registerOutput<FindingsFilterFindingCriteria>('findingCriteria', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FindingsFilterFindingCriteria.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    position = registerOutput<int>('position');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
