import 'package:pulumi/pulumi.dart' as pulumi;
import 'filter_args.dart';
import 'filter_filter_criteria.dart';

/// Resource for managing an AWS Inspector Filter.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.inspector2.Filter("example", {
///     name: "test",
///     action: "NONE",
///     filterCriterias: [{
///         awsAccountIds: [{
///             comparison: "EQUALS",
///             value: "111222333444",
///         }],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.inspector2.Filter("example",
///     name="test",
///     action="NONE",
///     filter_criterias=[{
///         "aws_account_ids": [{
///             "comparison": "EQUALS",
///             "value": "111222333444",
///         }],
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
///     var example = new Aws.Inspector2.Filter("example", new()
///     {
///         Name = "test",
///         Action = "NONE",
///         FilterCriterias = new[]
///         {
///             new Aws.Inspector2.Inputs.FilterFilterCriteriaArgs
///             {
///                 AwsAccountIds = new[]
///                 {
///                     new Aws.Inspector2.Inputs.FilterFilterCriteriaAwsAccountIdArgs
///                     {
///                         Comparison = "EQUALS",
///                         Value = "111222333444",
///                     },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/inspector2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := inspector2.NewFilter(ctx, "example", &inspector2.FilterArgs{
/// 			Name:   pulumi.String("test"),
/// 			Action: pulumi.String("NONE"),
/// 			FilterCriterias: inspector2.FilterFilterCriteriaArray{
/// 				&inspector2.FilterFilterCriteriaArgs{
/// 					AwsAccountIds: inspector2.FilterFilterCriteriaAwsAccountIdArray{
/// 						&inspector2.FilterFilterCriteriaAwsAccountIdArgs{
/// 							Comparison: pulumi.String("EQUALS"),
/// 							Value:      pulumi.String("111222333444"),
/// 						},
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
/// import com.pulumi.aws.inspector2.Filter;
/// import com.pulumi.aws.inspector2.FilterArgs;
/// import com.pulumi.aws.inspector2.inputs.FilterFilterCriteriaArgs;
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
///         var example = new Filter("example", FilterArgs.builder()
///             .name("test")
///             .action("NONE")
///             .filterCriterias(FilterFilterCriteriaArgs.builder()
///                 .awsAccountIds(FilterFilterCriteriaAwsAccountIdArgs.builder()
///                     .comparison("EQUALS")
///                     .value("111222333444")
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
///     type: aws:inspector2:Filter
///     properties:
///       name: test
///       action: NONE
///       filterCriterias:
///         - awsAccountIds:
///             - comparison: EQUALS
///               value: '111222333444'
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Inspector Filter using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:inspector2/filter:Filter example "arn:aws:inspector2:us-east-1:111222333444:owner/111222333444/filter/abcdefgh12345678"
/// ```
class Filter extends pulumi.CustomResource {
  /// Action to be applied to the findings that maatch the filter. Possible values are `NONE` and `SUPPRESS`
  late final pulumi.Output<String> action;

  /// ARN of the Filter.
  late final pulumi.Output<String> arn;

  /// Description
  late final pulumi.Output<String?> description;

  /// Details on the filter criteria. Documented below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<FilterFilterCriteria>> filterCriterias;

  /// Name of the filter.
  late final pulumi.Output<String> name;

  /// Reason for creating the filter
  late final pulumi.Output<String?> reason;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Filter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Filter]. {@macro pulumi_inspector2_filter_filter_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Filter(String name, {FilterArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'aws:inspector2/filter:Filter',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    this.action = registerOutput<String>('action');
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.filterCriterias = registerOutput<List<FilterFilterCriteria>>(
      'filterCriterias',
    );
    this.name = registerOutput<String>('name');
    this.reason = registerOutput<String?>('reason');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
