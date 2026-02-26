import 'package:pulumi/pulumi.dart';
import '../invoice_unit_rule/invoice_unit_rule.dart';
import '../invoice_unit_timeouts/invoice_unit_timeouts.dart';
import 'invoice_unit_args.dart';

/// Manages an AWS Invoice Unit for organizational billing.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.invoicing.InvoiceUnit("example", {
/// name: "example-unit",
/// description: "Example invoice unit",
/// invoiceReceiver: "123456789012",
/// rules: [{
/// linkedAccounts: ["098765432109"],
/// }],
/// tags: {
/// Environment: "production",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.invoicing.InvoiceUnit("example",
/// name="example-unit",
/// description="Example invoice unit",
/// invoice_receiver="123456789012",
/// rules=[{
/// "linked_accounts": ["098765432109"],
/// }],
/// tags={
/// "Environment": "production",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Invoicing.InvoiceUnit("example", new()
/// {
/// Name = "example-unit",
/// Description = "Example invoice unit",
/// InvoiceReceiver = "123456789012",
/// Rules = new[]
/// {
/// new Aws.Invoicing.Inputs.InvoiceUnitRuleArgs
/// {
/// LinkedAccounts = new[]
/// {
/// "098765432109",
/// },
/// },
/// },
/// Tags =
/// {
/// { "Environment", "production" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/invoicing"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := invoicing.NewInvoiceUnit(ctx, "example", &invoicing.InvoiceUnitArgs{
/// Name:            pulumi.String("example-unit"),
/// Description:     pulumi.String("Example invoice unit"),
/// InvoiceReceiver: pulumi.String("123456789012"),
/// Rules: invoicing.InvoiceUnitRuleArray{
/// &invoicing.InvoiceUnitRuleArgs{
/// LinkedAccounts: pulumi.StringArray{
/// pulumi.String("098765432109"),
/// },
/// },
/// },
/// Tags: pulumi.StringMap{
/// "Environment": pulumi.String("production"),
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
/// import com.pulumi.aws.invoicing.InvoiceUnit;
/// import com.pulumi.aws.invoicing.InvoiceUnitArgs;
/// import com.pulumi.aws.invoicing.inputs.InvoiceUnitRuleArgs;
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
/// var example = new InvoiceUnit("example", InvoiceUnitArgs.builder()
/// .name("example-unit")
/// .description("Example invoice unit")
/// .invoiceReceiver("123456789012")
/// .rules(InvoiceUnitRuleArgs.builder()
/// .linkedAccounts("098765432109")
/// .build())
/// .tags(Map.of("Environment", "production"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:invoicing:InvoiceUnit
/// properties:
/// name: example-unit
/// description: Example invoice unit
/// invoiceReceiver: '123456789012'
/// rules:
/// - linkedAccounts:
/// - '098765432109'
/// tags:
/// Environment: production
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Invoice Units using the ARN. For example:
///
/// ```sh
/// $ pulumi import aws:invoicing/invoiceUnit:InvoiceUnit example arn:aws:invoicing::123456789012:invoice-unit/example-id
/// ```
class InvoiceUnit extends CustomResource {
  /// ARN of the invoice unit.
  late final Output<String> arn;

  /// Description of the invoice unit.
  late final Output<String?> description;

  /// AWS account ID that receives invoices for this unit. Cannot be changed after creation.
  late final Output<String> invoiceReceiver;

  /// Timestamp when the invoice unit was last modified.
  late final Output<String> lastModified;

  /// Unique name of the invoice unit. Cannot be changed after creation.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Configuration block for invoice unit rules. See <span pulumi-lang-nodejs="`rule`" pulumi-lang-dotnet="`Rule`" pulumi-lang-go="`rule`" pulumi-lang-python="`rule`" pulumi-lang-yaml="`rule`" pulumi-lang-java="`rule`">`rule`</span> below.
  ///
  /// The following arguments are optional:
  late final Output<List<InvoiceUnitRule>?> rules;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Whether tax inheritance is disabled for this invoice unit.
  late final Output<bool> taxInheritanceDisabled;
  late final Output<InvoiceUnitTimeouts?> timeouts;

  InvoiceUnit(
    String name, {
    InvoiceUnitArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:invoicing/invoiceUnit:InvoiceUnit',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.invoiceReceiver = Output.createUnknown<String>();
    this.lastModified = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.rules = Output.createUnknown<List<InvoiceUnitRule>?>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.taxInheritanceDisabled = Output.createUnknown<bool>();
    this.timeouts = Output.createUnknown<InvoiceUnitTimeouts?>();
  }
}
