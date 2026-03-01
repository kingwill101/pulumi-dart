import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_suppression_attributes_args.dart';

/// Manages AWS SESv2 (Simple Email V2) account-level suppression attributes.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sesv2.AccountSuppressionAttributes("example", {suppressedReasons: ["COMPLAINT"]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sesv2.AccountSuppressionAttributes("example", suppressed_reasons=["COMPLAINT"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SesV2.AccountSuppressionAttributes("example", new()
///     {
///         SuppressedReasons = new[]
///         {
///             "COMPLAINT",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sesv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sesv2.NewAccountSuppressionAttributes(ctx, "example", &sesv2.AccountSuppressionAttributesArgs{
/// 			SuppressedReasons: pulumi.StringArray{
/// 				pulumi.String("COMPLAINT"),
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
/// import com.pulumi.aws.sesv2.AccountSuppressionAttributes;
/// import com.pulumi.aws.sesv2.AccountSuppressionAttributesArgs;
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
///         var example = new AccountSuppressionAttributes("example", AccountSuppressionAttributesArgs.builder()
///             .suppressedReasons("COMPLAINT")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sesv2:AccountSuppressionAttributes
///     properties:
///       suppressedReasons:
///         - COMPLAINT
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import account-level suppression attributes using the account ID. For example:
///
/// ```sh
/// $ pulumi import aws:sesv2/accountSuppressionAttributes:AccountSuppressionAttributes example 123456789012
/// ```
class AccountSuppressionAttributes extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A list that contains the reasons that email addresses will be automatically added to the suppression list for your account. Valid values: `COMPLAINT`, `BOUNCE`.
  late final pulumi.Output<List<String>> suppressedReasons;

  /// Creates a new [AccountSuppressionAttributes].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccountSuppressionAttributes]. {@macro pulumi_sesv2_account_suppression_attributes_account_suppression_attributes_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccountSuppressionAttributes(
    String name, {
    AccountSuppressionAttributesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:sesv2/accountSuppressionAttributes:AccountSuppressionAttributes',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.region = registerOutput<String>('region');
    this.suppressedReasons = registerOutput<List<String>>('suppressedReasons');
  }
}
