import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_settings_args.dart';
import 'account_settings_minimum_throughput_billing_commitment.dart';
import 'account_settings_state.dart';

/// Manages account-level settings for Amazon Kinesis Data Streams.
///
/// &gt; Deletion of this resource will not modify any settings, only remove the resource from state.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kinesis.AccountSettings("example", {minimumThroughputBillingCommitment: {
///     status: "ENABLED",
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kinesis.AccountSettings("example", minimum_throughput_billing_commitment={
///     "status": "ENABLED",
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
///     var example = new Aws.Kinesis.AccountSettings("example", new()
///     {
///         MinimumThroughputBillingCommitment = new Aws.Kinesis.Inputs.AccountSettingsMinimumThroughputBillingCommitmentArgs
///         {
///             Status = "ENABLED",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kinesis.NewAccountSettings(ctx, "example", &kinesis.AccountSettingsArgs{
/// 			MinimumThroughputBillingCommitment: &kinesis.AccountSettingsMinimumThroughputBillingCommitmentArgs{
/// 				Status: pulumi.String("ENABLED"),
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
/// resource "aws_kinesis_accountsettings" "example" {
///   minimum_throughput_billing_commitment = {
///     status = "ENABLED"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kinesis.AccountSettings;
/// import com.pulumi.aws.kinesis.AccountSettingsArgs;
/// import com.pulumi.aws.kinesis.inputs.AccountSettingsMinimumThroughputBillingCommitmentArgs;
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
///         var example = new AccountSettings("example", AccountSettingsArgs.builder()
///             .minimumThroughputBillingCommitment(AccountSettingsMinimumThroughputBillingCommitmentArgs.builder()
///                 .status("ENABLED")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kinesis:AccountSettings
///     properties:
///       minimumThroughputBillingCommitment:
///         status: ENABLED
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Kinesis account settings using the region name. For example:
///
/// ```sh
/// $ pulumi import aws:kinesis/accountSettings:AccountSettings example us-west-2
/// ```
class AccountSettings extends pulumi.CustomResource {
  /// Minimum throughput billing commitment configuration. Detailed below.
  late final pulumi.Output<AccountSettingsMinimumThroughputBillingCommitment?> minimumThroughputBillingCommitment;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [AccountSettings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccountSettings]. {@macro pulumi_kinesis_account_settings_account_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccountSettings(
    String name, {
    AccountSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:kinesis/accountSettings:AccountSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    minimumThroughputBillingCommitment = registerOutput<AccountSettingsMinimumThroughputBillingCommitment?>('minimumThroughputBillingCommitment', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountSettingsMinimumThroughputBillingCommitment.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
  }

  /// Gets an existing [AccountSettings] resource's state with the given [name] and [id].
  static AccountSettings get(
    String name,
    pulumi.Input<String> id, {
    AccountSettingsState? state,
  }) {
    return AccountSettings._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AccountSettings._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:kinesis/accountSettings:AccountSettings',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    minimumThroughputBillingCommitment = registerOutput<AccountSettingsMinimumThroughputBillingCommitment?>('minimumThroughputBillingCommitment', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountSettingsMinimumThroughputBillingCommitment.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
  }
}
