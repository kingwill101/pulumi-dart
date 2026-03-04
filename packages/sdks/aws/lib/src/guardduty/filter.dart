import 'package:pulumi/pulumi.dart' as pulumi;
import 'filter_args.dart';
import 'filter_finding_criteria.dart';
import 'filter_state.dart';

/// Provides a resource to manage a GuardDuty filter.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const myFilter = new aws.guardduty.Filter("MyFilter", {
///     name: "MyFilter",
///     action: "ARCHIVE",
///     detectorId: example.id,
///     rank: 1,
///     findingCriteria: {
///         criterions: [
///             {
///                 field: "region",
///                 equals: ["eu-west-1"],
///             },
///             {
///                 field: "service.additionalInfo.threatListName",
///                 notEquals: [
///                     "some-threat",
///                     "another-threat",
///                 ],
///             },
///             {
///                 field: "updatedAt",
///                 greaterThan: "2020-01-01T00:00:00Z",
///                 lessThan: "2020-02-01T00:00:00Z",
///             },
///             {
///                 field: "severity",
///                 greaterThanOrEqual: "4",
///             },
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// my_filter = aws.guardduty.Filter("MyFilter",
///     name="MyFilter",
///     action="ARCHIVE",
///     detector_id=example["id"],
///     rank=1,
///     finding_criteria={
///         "criterions": [
///             {
///                 "field": "region",
///                 "equals": ["eu-west-1"],
///             },
///             {
///                 "field": "service.additionalInfo.threatListName",
///                 "not_equals": [
///                     "some-threat",
///                     "another-threat",
///                 ],
///             },
///             {
///                 "field": "updatedAt",
///                 "greater_than": "2020-01-01T00:00:00Z",
///                 "less_than": "2020-02-01T00:00:00Z",
///             },
///             {
///                 "field": "severity",
///                 "greater_than_or_equal": "4",
///             },
///         ],
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
///     var myFilter = new Aws.GuardDuty.Filter("MyFilter", new()
///     {
///         Name = "MyFilter",
///         Action = "ARCHIVE",
///         DetectorId = example.Id,
///         Rank = 1,
///         FindingCriteria = new Aws.GuardDuty.Inputs.FilterFindingCriteriaArgs
///         {
///             Criterions = new[]
///             {
///                 new Aws.GuardDuty.Inputs.FilterFindingCriteriaCriterionArgs
///                 {
///                     Field = "region",
///                     Equals = new[]
///                     {
///                         "eu-west-1",
///                     },
///                 },
///                 new Aws.GuardDuty.Inputs.FilterFindingCriteriaCriterionArgs
///                 {
///                     Field = "service.additionalInfo.threatListName",
///                     NotEquals = new[]
///                     {
///                         "some-threat",
///                         "another-threat",
///                     },
///                 },
///                 new Aws.GuardDuty.Inputs.FilterFindingCriteriaCriterionArgs
///                 {
///                     Field = "updatedAt",
///                     GreaterThan = "2020-01-01T00:00:00Z",
///                     LessThan = "2020-02-01T00:00:00Z",
///                 },
///                 new Aws.GuardDuty.Inputs.FilterFindingCriteriaCriterionArgs
///                 {
///                     Field = "severity",
///                     GreaterThanOrEqual = "4",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/guardduty"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := guardduty.NewFilter(ctx, "MyFilter", &guardduty.FilterArgs{
/// 			Name:       pulumi.String("MyFilter"),
/// 			Action:     pulumi.String("ARCHIVE"),
/// 			DetectorId: pulumi.Any(example.Id),
/// 			Rank:       pulumi.Int(1),
/// 			FindingCriteria: &guardduty.FilterFindingCriteriaArgs{
/// 				Criterions: guardduty.FilterFindingCriteriaCriterionArray{
/// 					&guardduty.FilterFindingCriteriaCriterionArgs{
/// 						Field: pulumi.String("region"),
/// 						Equals: pulumi.StringArray{
/// 							pulumi.String("eu-west-1"),
/// 						},
/// 					},
/// 					&guardduty.FilterFindingCriteriaCriterionArgs{
/// 						Field: pulumi.String("service.additionalInfo.threatListName"),
/// 						NotEquals: pulumi.StringArray{
/// 							pulumi.String("some-threat"),
/// 							pulumi.String("another-threat"),
/// 						},
/// 					},
/// 					&guardduty.FilterFindingCriteriaCriterionArgs{
/// 						Field:       pulumi.String("updatedAt"),
/// 						GreaterThan: pulumi.String("2020-01-01T00:00:00Z"),
/// 						LessThan:    pulumi.String("2020-02-01T00:00:00Z"),
/// 					},
/// 					&guardduty.FilterFindingCriteriaCriterionArgs{
/// 						Field:              pulumi.String("severity"),
/// 						GreaterThanOrEqual: pulumi.String("4"),
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
/// import com.pulumi.aws.guardduty.Filter;
/// import com.pulumi.aws.guardduty.FilterArgs;
/// import com.pulumi.aws.guardduty.inputs.FilterFindingCriteriaArgs;
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
///         var myFilter = new Filter("myFilter", FilterArgs.builder()
///             .name("MyFilter")
///             .action("ARCHIVE")
///             .detectorId(example.id())
///             .rank(1)
///             .findingCriteria(FilterFindingCriteriaArgs.builder()
///                 .criterions(
///                     FilterFindingCriteriaCriterionArgs.builder()
///                         .field("region")
///                         .equals("eu-west-1")
///                         .build(),
///                     FilterFindingCriteriaCriterionArgs.builder()
///                         .field("service.additionalInfo.threatListName")
///                         .notEquals(
///                             "some-threat",
///                             "another-threat")
///                         .build(),
///                     FilterFindingCriteriaCriterionArgs.builder()
///                         .field("updatedAt")
///                         .greaterThan("2020-01-01T00:00:00Z")
///                         .lessThan("2020-02-01T00:00:00Z")
///                         .build(),
///                     FilterFindingCriteriaCriterionArgs.builder()
///                         .field("severity")
///                         .greaterThanOrEqual("4")
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myFilter:
///     type: aws:guardduty:Filter
///     name: MyFilter
///     properties:
///       name: MyFilter
///       action: ARCHIVE
///       detectorId: ${example.id}
///       rank: 1
///       findingCriteria:
///         criterions:
///           - field: region
///             equals:
///               - eu-west-1
///           - field: service.additionalInfo.threatListName
///             notEquals:
///               - some-threat
///               - another-threat
///           - field: updatedAt
///             greaterThan: 2020-01-01T00:00:00Z
///             lessThan: 2020-02-01T00:00:00Z
///           - field: severity
///             greaterThanOrEqual: '4'
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import GuardDuty filters using the detector ID and filter's name separated by a colon. For example:
///
/// ```sh
/// $ pulumi import aws:guardduty/filter:Filter MyFilter 00b00fd5aecc0ab60a708659477e9617:MyFilter
/// ```
class Filter extends pulumi.CustomResource {
  /// Specifies the action that is to be applied to the findings that match the filter. Can be one of `ARCHIVE` or `NOOP`.
  late final pulumi.Output<String> action;

  /// The ARN of the GuardDuty filter.
  late final pulumi.Output<String> arn;

  /// Description of the filter.
  late final pulumi.Output<String?> description;

  /// ID of a GuardDuty detector, attached to your account.
  late final pulumi.Output<String> detectorId;

  /// Represents the criteria to be used in the filter for querying findings. Contains one or more `criterion` blocks, documented below.
  late final pulumi.Output<FilterFindingCriteria> findingCriteria;

  /// The name of your filter.
  late final pulumi.Output<String> name;

  /// Specifies the position of the filter in the list of current filters. Also specifies the order in which this filter is applied to the findings.
  late final pulumi.Output<int> rank;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The tags that you want to add to the Filter resource. A tag consists of a key and a value. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Filter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Filter]. {@macro pulumi_guardduty_filter_filter_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Filter(String name, {FilterArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'aws:guardduty/filter:Filter',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    action = registerOutput<String>('action');
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    detectorId = registerOutput<String>('detectorId');
    findingCriteria = registerOutput<FilterFindingCriteria>('findingCriteria');
    this.name = registerOutput<String>('name');
    rank = registerOutput<int>('rank');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [Filter] resource's state with the given [name] and [id].
  static Filter get(
    String name,
    pulumi.Input<String> id, {
    FilterState? state,
  }) {
    return Filter._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Filter._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:guardduty/filter:Filter',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    action = registerOutput<String>('action');
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    detectorId = registerOutput<String>('detectorId');
    findingCriteria = registerOutput<FilterFindingCriteria>('findingCriteria');
    this.name = registerOutput<String>('name');
    rank = registerOutput<int>('rank');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
