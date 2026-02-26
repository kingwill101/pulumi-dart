import 'package:pulumi/pulumi.dart';
import '../view_data_filter_expression/view_data_filter_expression.dart';
import '../view_timeouts/view_timeouts.dart';
import 'view_args.dart';

/// Manages an AWS Billing View.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.billing.View("example", {
/// name: "example",
/// description: "example description",
/// sourceViews: ["arn:aws:billing::123456789012:billingview/example"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.billing.View("example",
/// name="example",
/// description="example description",
/// source_views=["arn:aws:billing::123456789012:billingview/example"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Billing.View("example", new()
/// {
/// Name = "example",
/// Description = "example description",
/// SourceViews = new[]
/// {
/// "arn:aws:billing::123456789012:billingview/example",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/billing"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := billing.NewView(ctx, "example", &billing.ViewArgs{
/// Name:        pulumi.String("example"),
/// Description: pulumi.String("example description"),
/// SourceViews: pulumi.StringArray{
/// pulumi.String("arn:aws:billing::123456789012:billingview/example"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new View("example", ViewArgs.builder()
/// .name("example")
/// .description("example description")
/// .sourceViews("arn:aws:billing::123456789012:billingview/example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:billing:View
/// properties:
/// name: example
/// description: example description
/// sourceViews:
/// - arn:aws:billing::123456789012:billingview/example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Billing View using the <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:billing/view:View example arn:aws:billing::123456789012:billing-view/example
/// ```
class View extends CustomResource {
  /// ARN of the View.
  late final Output<String> arn;

  /// Type of billing group. Valid values are PRIMARY|BILLING_GROUP|CUSTOM.
  late final Output<String> billingViewType;

  /// Timestamp when the billing view was created.
  late final Output<String> createdAt;

  /// Filter Cost Explorer APIs using the expression. Refer to the data-filter-expression block documentation for more details.
  late final Output<ViewDataFilterExpression?> dataFilterExpression;

  /// Number of billing views that use this billing view as a source.
  late final Output<int> derivedViewCount;

  /// Description of the custom billing view.
  late final Output<String?> description;

  /// Name of the custom billing view to be created.
  late final Output<String> name;

  /// Account owner of the billing view.
  late final Output<String> ownerAccountId;

  /// AWS account ID that owns the source billing view, if this is a derived billing view.
  late final Output<String> sourceAccountId;

  /// Number of source views associated with this billing view.
  late final Output<int> sourceViewCount;

  /// List of ARNs of the source data views for the custom billing view.
  ///
  /// The following arguments are optional:
  late final Output<List<String>?> sourceViews;

  /// List of key value map specifying tags associated to the billing view being created.
  late final Output<Map<String, String>?> tags;

  /// List of key value map specifying tags associated to the billing view.
  late final Output<Map<String, String>> tagsAll;
  late final Output<ViewTimeouts?> timeouts;

  /// Time when the billing view was last updated.
  late final Output<String> updatedAt;

  /// Timestamp of when the billing view definition was last updated.
  late final Output<String> viewDefinitionLastUpdatedAt;

  View(
    String name, {
    ViewArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:billing/view:View',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.billingViewType = Output.createUnknown<String>();
    this.createdAt = Output.createUnknown<String>();
    this.dataFilterExpression =
        Output.createUnknown<ViewDataFilterExpression?>();
    this.derivedViewCount = Output.createUnknown<int>();
    this.description = Output.createUnknown<String?>();
    this.name = Output.createUnknown<String>();
    this.ownerAccountId = Output.createUnknown<String>();
    this.sourceAccountId = Output.createUnknown<String>();
    this.sourceViewCount = Output.createUnknown<int>();
    this.sourceViews = Output.createUnknown<List<String>?>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.timeouts = Output.createUnknown<ViewTimeouts?>();
    this.updatedAt = Output.createUnknown<String>();
    this.viewDefinitionLastUpdatedAt = Output.createUnknown<String>();
  }
}
