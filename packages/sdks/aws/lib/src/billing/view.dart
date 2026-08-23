import 'package:pulumi/pulumi.dart' as pulumi;
import 'view_args.dart';
import 'view_data_filter_expression.dart';
import 'view_state.dart';
import 'view_timeouts.dart';

/// Manages an AWS Billing View.
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
/// const example = new aws.billing.View("example", {
///     name: "example",
///     description: "example description",
///     sourceViews: ["arn:aws:billing::123456789012:billingview/example"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.billing.View("example",
///     name="example",
///     description="example description",
///     source_views=["arn:aws:billing::123456789012:billingview/example"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Billing.View("example", new()
///     {
///         Name = "example",
///         Description = "example description",
///         SourceViews = new[]
///         {
///             "arn:aws:billing::123456789012:billingview/example",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/billing"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := billing.NewView(ctx, "example", &billing.ViewArgs{
/// 			Name:        pulumi.String("example"),
/// 			Description: pulumi.String("example description"),
/// 			SourceViews: pulumi.StringArray{
/// 				pulumi.String("arn:aws:billing::123456789012:billingview/example"),
/// 			},
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
/// resource "aws_billing_view" "example" {
///   name         = "example"
///   description  = "example description"
///   source_views = ["arn:aws:billing::123456789012:billingview/example"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.billing.View;
/// import com.pulumi.aws.billing.ViewArgs;
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
///         var example = new View("example", ViewArgs.builder()
///             .name("example")
///             .description("example description")
///             .sourceViews("arn:aws:billing::123456789012:billingview/example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:billing:View
///     properties:
///       name: example
///       description: example description
///       sourceViews:
///         - arn:aws:billing::123456789012:billingview/example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Billing View using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:billing/view:View example arn:aws:billing::123456789012:billing-view/example
/// ```
class View extends pulumi.CustomResource {
  /// ARN of the View.
  late final pulumi.Output<String> arn;
  /// Type of billing group. Valid values are PRIMARY|BILLING_GROUP|CUSTOM.
  late final pulumi.Output<String> billingViewType;
  /// Timestamp when the billing view was created.
  late final pulumi.Output<String> createdAt;
  /// Filter Cost Explorer APIs using the expression. Refer to the data-filter-expression block documentation for more details.
  late final pulumi.Output<ViewDataFilterExpression?> dataFilterExpression;
  /// Number of billing views that use this billing view as a source.
  late final pulumi.Output<int> derivedViewCount;
  /// Description of the custom billing view.
  late final pulumi.Output<String?> description;
  /// Name of the custom billing view to be created.
  late final pulumi.Output<String> name;
  /// Account owner of the billing view.
  late final pulumi.Output<String> ownerAccountId;
  /// AWS account ID that owns the source billing view, if this is a derived billing view.
  late final pulumi.Output<String> sourceAccountId;
  /// Number of source views associated with this billing view.
  late final pulumi.Output<int> sourceViewCount;
  /// List of ARNs of the source data views for the custom billing view.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<String>?> sourceViews;
  /// List of key value map specifying tags associated to the billing view being created.
  late final pulumi.Output<Map<String, String>?> tags;
  /// List of key value map specifying tags associated to the billing view.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<ViewTimeouts?> timeouts;
  /// Time when the billing view was last updated.
  late final pulumi.Output<String> updatedAt;
  /// Timestamp of when the billing view definition was last updated.
  late final pulumi.Output<String> viewDefinitionLastUpdatedAt;

  /// Creates a new [View].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [View]. {@macro pulumi_billing_view_view_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  View(
    String name, {
    ViewArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:billing/view:View',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    billingViewType = registerOutput<String>('billingViewType');
    createdAt = registerOutput<String>('createdAt');
    dataFilterExpression = registerOutput<ViewDataFilterExpression?>('dataFilterExpression', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ViewDataFilterExpression.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    derivedViewCount = registerOutput<int>('derivedViewCount');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    ownerAccountId = registerOutput<String>('ownerAccountId');
    sourceAccountId = registerOutput<String>('sourceAccountId');
    sourceViewCount = registerOutput<int>('sourceViewCount');
    sourceViews = registerOutput<List<String>?>('sourceViews');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<ViewTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ViewTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updatedAt = registerOutput<String>('updatedAt');
    viewDefinitionLastUpdatedAt = registerOutput<String>('viewDefinitionLastUpdatedAt');
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
          'aws:billing/view:View',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    billingViewType = registerOutput<String>('billingViewType');
    createdAt = registerOutput<String>('createdAt');
    dataFilterExpression = registerOutput<ViewDataFilterExpression?>('dataFilterExpression', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ViewDataFilterExpression.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    derivedViewCount = registerOutput<int>('derivedViewCount');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    ownerAccountId = registerOutput<String>('ownerAccountId');
    sourceAccountId = registerOutput<String>('sourceAccountId');
    sourceViewCount = registerOutput<int>('sourceViewCount');
    sourceViews = registerOutput<List<String>?>('sourceViews');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<ViewTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ViewTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updatedAt = registerOutput<String>('updatedAt');
    viewDefinitionLastUpdatedAt = registerOutput<String>('viewDefinitionLastUpdatedAt');
  }
}
