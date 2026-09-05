import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_args.dart';
import 'account_state.dart';

/// Enables Security Hub CSPM for this AWS account.
///
/// &gt; **NOTE:** Destroying this resource will disable Security Hub for this AWS account.
///
/// &gt; **NOTE:** This resource manages Security Hub CSPM, which is distinct from the unified Security Hub V2 service managed by `aws.securityhub.AccountV2`. Both can coexist in the same account.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.securityhub.Account("example", {});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.securityhub.Account("example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SecurityHub.Account("example");
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/securityhub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securityhub.NewAccount(ctx, "example", nil)
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
/// resource "aws_securityhub_account" "example" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.securityhub.Account;
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
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:securityhub:Account
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import an existing Security Hub enabled account using the AWS account ID. For example:
///
/// ```sh
/// $ pulumi import aws:securityhub/account:Account example 123456789012
/// ```
class Account extends pulumi.CustomResource {
  /// ARN of the SecurityHub Hub created in the account.
  late final pulumi.Output<String> arn;
  /// Whether to automatically enable new controls when they are added to standards that are enabled. By default, this is set to true, and new controls are enabled automatically. To not automatically enable new controls, set this to false.
  late final pulumi.Output<bool?> autoEnableControls;
  /// Updates whether the calling account has consolidated control findings turned on. If the value for this field is set to `SECURITY_CONTROL`, Security Hub generates a single finding for a control check even when the check applies to multiple enabled standards. If the value for this field is set to `STANDARD_CONTROL`, Security Hub generates separate findings for a control check when the check applies to multiple enabled standards. For accounts that are part of an organization, this value can only be updated in the administrator account.
  late final pulumi.Output<String> controlFindingGenerator;
  /// Whether to enable the security standards that Security Hub has designated as automatically enabled including: ` AWS Foundational Security Best Practices v1.0.0` and `CIS AWS Foundations Benchmark v1.2.0`. Defaults to `true`.
  late final pulumi.Output<bool?> enableDefaultStandards;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [Account].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Account]. {@macro pulumi_securityhub_account_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Account(
    String name, {
    AccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:securityhub/account:Account',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    autoEnableControls = registerOutput<bool?>('autoEnableControls');
    controlFindingGenerator = registerOutput<String>('controlFindingGenerator');
    enableDefaultStandards = registerOutput<bool?>('enableDefaultStandards');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [Account] resource's state with the given [name] and [id].
  static Account get(
    String name,
    pulumi.Input<String> id, {
    AccountState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Account._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Account._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:securityhub/account:Account',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    autoEnableControls = registerOutput<bool?>('autoEnableControls');
    controlFindingGenerator = registerOutput<String>('controlFindingGenerator');
    enableDefaultStandards = registerOutput<bool?>('enableDefaultStandards');
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [Account] resource.
  Account.reference(String urn)
    : super(
        'aws:securityhub/account:Account',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    autoEnableControls = registerOutput<bool?>('autoEnableControls');
    controlFindingGenerator = registerOutput<String>('controlFindingGenerator');
    enableDefaultStandards = registerOutput<bool?>('enableDefaultStandards');
    region = registerOutput<String>('region');
  }
}
