import 'package:pulumi/pulumi.dart' as pulumi;
import 'view_args.dart';
import 'view_filters.dart';
import 'view_state.dart';

/// Provides a resource to manage a Resource Explorer view.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.resourceexplorer.Index("example", {type: "LOCAL"});
/// const exampleView = new aws.resourceexplorer.View("example", {
///     name: "exampleview",
///     filters: {
///         filterString: "resourcetype:ec2:instance",
///     },
///     includedProperties: [{
///         name: "tags",
///     }],
/// }, {
///     dependsOn: [example],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.resourceexplorer.Index("example", type="LOCAL")
/// example_view = aws.resourceexplorer.View("example",
///     name="exampleview",
///     filters={
///         "filter_string": "resourcetype:ec2:instance",
///     },
///     included_properties=[{
///         "name": "tags",
///     }],
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
///     var example = new Aws.ResourceExplorer.Index("example", new()
///     {
///         Type = "LOCAL",
///     });
///
///     var exampleView = new Aws.ResourceExplorer.View("example", new()
///     {
///         Name = "exampleview",
///         Filters = new Aws.ResourceExplorer.Inputs.ViewFiltersArgs
///         {
///             FilterString = "resourcetype:ec2:instance",
///         },
///         IncludedProperties = new[]
///         {
///             new Aws.ResourceExplorer.Inputs.ViewIncludedPropertyArgs
///             {
///                 Name = "tags",
///             },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/resourceexplorer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := resourceexplorer.NewIndex(ctx, "example", &resourceexplorer.IndexArgs{
/// 			Type: pulumi.String("LOCAL"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = resourceexplorer.NewView(ctx, "example", &resourceexplorer.ViewArgs{
/// 			Name: pulumi.String("exampleview"),
/// 			Filters: &resourceexplorer.ViewFiltersArgs{
/// 				FilterString: pulumi.String("resourcetype:ec2:instance"),
/// 			},
/// 			IncludedProperties: resourceexplorer.ViewIncludedPropertyArray{
/// 				&resourceexplorer.ViewIncludedPropertyArgs{
/// 					Name: pulumi.String("tags"),
/// 				},
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
/// resource "aws_resourceexplorer_index" "example" {
///   type = "LOCAL"
/// }
/// resource "aws_resourceexplorer_view" "example" {
///   depends_on = [aws_resourceexplorer_index.example]
///   name       = "exampleview"
///   filters = {
///     filter_string = "resourcetype:ec2:instance"
///   }
///   included_properties {
///     name = "tags"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.resourceexplorer.Index;
/// import com.pulumi.aws.resourceexplorer.IndexArgs;
/// import com.pulumi.aws.resourceexplorer.View;
/// import com.pulumi.aws.resourceexplorer.ViewArgs;
/// import com.pulumi.aws.resourceexplorer.inputs.ViewFiltersArgs;
/// import com.pulumi.aws.resourceexplorer.inputs.ViewIncludedPropertyArgs;
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
///         var example = new Index("example", IndexArgs.builder()
///             .type("LOCAL")
///             .build());
///
///         var exampleView = new View("exampleView", ViewArgs.builder()
///             .name("exampleview")
///             .filters(ViewFiltersArgs.builder()
///                 .filterString("resourcetype:ec2:instance")
///                 .build())
///             .includedProperties(ViewIncludedPropertyArgs.builder()
///                 .name("tags")
///                 .build())
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
///     type: aws:resourceexplorer:Index
///     properties:
///       type: LOCAL
///   exampleView:
///     type: aws:resourceexplorer:View
///     name: example
///     properties:
///       name: exampleview
///       filters:
///         filterString: resourcetype:ec2:instance
///       includedProperties:
///         - name: tags
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
/// - `arn` (String) Amazon Resource Name (ARN) of the Resource Explorer view.
///
///
/// Using `pulumi import`, import Resource Explorer views using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:resourceexplorer/view:View example arn:aws:resource-explorer-2:us-west-2:123456789012:view/exampleview/e0914f6c-6c27-4b47-b5d4-6b28381a2421
/// ```
class View extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the Resource Explorer view.
  late final pulumi.Output<String> arn;
  /// Specifies whether the view is the [_default view_](https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-views-about.html#manage-views-about-default) for the AWS Region. Default: `false`.
  late final pulumi.Output<bool> defaultView;
  /// Specifies which resources are included in the results of queries made using this view. See Filters below for more details.
  late final pulumi.Output<ViewFilters?> filters;
  /// Optional fields to be included in search results from this view. See Included Properties below for more details.
  late final pulumi.Output<List<Map<String, dynamic>>?> includedProperties;
  /// The name of the view. The name must be no more than 64 characters long, and can include letters, digits, and the dash (-) character. The name must be unique within its AWS Region.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The root ARN of the account, an organizational unit (OU), or an organization ARN. If left empty, the default is account.
  late final pulumi.Output<String> scope;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [View].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [View]. {@macro pulumi_resourceexplorer_view_view_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  View(
    String name, {
    ViewArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:resourceexplorer/view:View',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    defaultView = registerOutput<bool>('defaultView');
    filters = registerOutput<ViewFilters?>('filters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ViewFilters.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    includedProperties = registerOutput<List<Map<String, dynamic>>?>('includedProperties');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    scope = registerOutput<String>('scope');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [View] resource's state with the given [name] and [id].
  static View get(
    String name,
    pulumi.Input<String> id, {
    ViewState? state,
  }) {
    return View._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  View._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:resourceexplorer/view:View',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    defaultView = registerOutput<bool>('defaultView');
    filters = registerOutput<ViewFilters?>('filters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ViewFilters.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    includedProperties = registerOutput<List<Map<String, dynamic>>?>('includedProperties');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    scope = registerOutput<String>('scope');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
