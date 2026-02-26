import 'package:pulumi/pulumi.dart';
import 'receipt_filter_args.dart';

/// Provides an SES receipt filter resource
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const filter = new aws.ses.ReceiptFilter("filter", {
/// name: "block-spammer",
/// cidr: "10.10.10.10",
/// policy: "Block",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// filter = aws.ses.ReceiptFilter("filter",
/// name="block-spammer",
/// cidr="10.10.10.10",
/// policy="Block")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var filter = new Aws.Ses.ReceiptFilter("filter", new()
/// {
/// Name = "block-spammer",
/// Cidr = "10.10.10.10",
/// Policy = "Block",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ses"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ses.NewReceiptFilter(ctx, "filter", &ses.ReceiptFilterArgs{
/// Name:   pulumi.String("block-spammer"),
/// Cidr:   pulumi.String("10.10.10.10"),
/// Policy: pulumi.String("Block"),
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
/// import com.pulumi.aws.ses.ReceiptFilter;
/// import com.pulumi.aws.ses.ReceiptFilterArgs;
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
/// var filter = new ReceiptFilter("filter", ReceiptFilterArgs.builder()
/// .name("block-spammer")
/// .cidr("10.10.10.10")
/// .policy("Block")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// filter:
/// type: aws:ses:ReceiptFilter
/// properties:
/// name: block-spammer
/// cidr: 10.10.10.10
/// policy: Block
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import SES Receipt Filter using their <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ses/receiptFilter:ReceiptFilter test some-filter
/// ```
class ReceiptFilter extends CustomResource {
  /// The SES receipt filter ARN.
  late final Output<String> arn;

  /// The IP address or address range to filter, in CIDR notation
  late final Output<String> cidr;

  /// The name of the filter
  late final Output<String> name;

  /// Block or Allow
  late final Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  ReceiptFilter(
    String name, {
    ReceiptFilterArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ses/receiptFilter:ReceiptFilter',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.cidr = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.policy = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
  }
}
