import 'package:pulumi/pulumi.dart' as pulumi;
import 'receipt_filter_args.dart';
import 'receipt_filter_state.dart';

/// Provides an SES receipt filter resource
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const filter = new aws.ses.ReceiptFilter("filter", {
///     name: "block-spammer",
///     cidr: "10.10.10.10",
///     policy: "Block",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// filter = aws.ses.ReceiptFilter("filter",
///     name="block-spammer",
///     cidr="10.10.10.10",
///     policy="Block")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var filter = new Aws.Ses.ReceiptFilter("filter", new()
///     {
///         Name = "block-spammer",
///         Cidr = "10.10.10.10",
///         Policy = "Block",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ses"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ses.NewReceiptFilter(ctx, "filter", &ses.ReceiptFilterArgs{
/// 			Name:   pulumi.String("block-spammer"),
/// 			Cidr:   pulumi.String("10.10.10.10"),
/// 			Policy: pulumi.String("Block"),
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
/// resource "aws_ses_receiptfilter" "filter" {
///   name   = "block-spammer"
///   cidr   = "10.10.10.10"
///   policy = "Block"
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
///         var filter = new ReceiptFilter("filter", ReceiptFilterArgs.builder()
///             .name("block-spammer")
///             .cidr("10.10.10.10")
///             .policy("Block")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   filter:
///     type: aws:ses:ReceiptFilter
///     properties:
///       name: block-spammer
///       cidr: 10.10.10.10
///       policy: Block
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import SES Receipt Filter using their `name`. For example:
///
/// ```sh
/// $ pulumi import aws:ses/receiptFilter:ReceiptFilter test some-filter
/// ```
class ReceiptFilter extends pulumi.CustomResource {
  /// SES receipt filter ARN.
  late final pulumi.Output<String> arn;
  /// IP address or address range to filter, in CIDR notation
  late final pulumi.Output<String> cidr;
  /// Name of the filter
  late final pulumi.Output<String> name;
  /// Block or Allow
  late final pulumi.Output<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [ReceiptFilter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReceiptFilter]. {@macro pulumi_ses_receipt_filter_receipt_filter_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReceiptFilter(
    String name, {
    ReceiptFilterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ses/receiptFilter:ReceiptFilter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    cidr = registerOutput<String>('cidr');
    this.name = registerOutput<String>('name');
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [ReceiptFilter] resource's state with the given [name] and [id].
  static ReceiptFilter get(
    String name,
    pulumi.Input<String> id, {
    ReceiptFilterState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ReceiptFilter._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ReceiptFilter._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ses/receiptFilter:ReceiptFilter',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    cidr = registerOutput<String>('cidr');
    this.name = registerOutput<String>('name');
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [ReceiptFilter] resource.
  ReceiptFilter.reference(String urn)
    : super(
        'aws:ses/receiptFilter:ReceiptFilter',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    cidr = registerOutput<String>('cidr');
    this.name = registerOutput<String>('name');
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
  }
}
