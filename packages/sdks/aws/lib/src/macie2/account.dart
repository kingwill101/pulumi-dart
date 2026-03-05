import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_args.dart';
import 'account_state.dart';

/// Provides a resource to manage an [AWS Macie Account](https://docs.aws.amazon.com/macie/latest/APIReference/macie.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.macie2.Account("test", {
///     findingPublishingFrequency: "FIFTEEN_MINUTES",
///     status: "ENABLED",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.macie2.Account("test",
///     finding_publishing_frequency="FIFTEEN_MINUTES",
///     status="ENABLED")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Macie2.Account("test", new()
///     {
///         FindingPublishingFrequency = "FIFTEEN_MINUTES",
///         Status = "ENABLED",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/macie2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := macie2.NewAccount(ctx, "test", &macie2.AccountArgs{
/// 			FindingPublishingFrequency: pulumi.String("FIFTEEN_MINUTES"),
/// 			Status:                     pulumi.String("ENABLED"),
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
/// import com.pulumi.aws.macie2.Account;
/// import com.pulumi.aws.macie2.AccountArgs;
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
///         var test = new Account("test", AccountArgs.builder()
///             .findingPublishingFrequency("FIFTEEN_MINUTES")
///             .status("ENABLED")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:macie2:Account
///     properties:
///       findingPublishingFrequency: FIFTEEN_MINUTES
///       status: ENABLED
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.macie2.Account` using the id. For example:
///
/// ```sh
/// $ pulumi import aws:macie2/account:Account example abcd1
/// ```
class Account extends pulumi.CustomResource {
  /// The date and time, in UTC and extended RFC 3339 format, when the Amazon Macie account was created.
  late final pulumi.Output<String> createdAt;
  /// Specifies how often to publish updates to policy findings for the account. This includes publishing updates to AWS Security Hub and Amazon EventBridge (formerly called Amazon CloudWatch Events). Valid values are `FIFTEEN_MINUTES`, `ONE_HOUR` or `SIX_HOURS`.
  late final pulumi.Output<String> findingPublishingFrequency;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The Amazon Resource Name (ARN) of the service-linked role that allows Macie to monitor and analyze data in AWS resources for the account.
  late final pulumi.Output<String> serviceRole;
  /// Specifies the status for the account. To enable Amazon Macie and start all Macie activities for the account, set this value to `ENABLED`. Valid values are `ENABLED` or `PAUSED`.
  late final pulumi.Output<String> status;
  /// The date and time, in UTC and extended RFC 3339 format, of the most recent change to the status of the Macie account.
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [Account].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Account]. {@macro pulumi_macie2_account_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Account(
    String name, {
    AccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:macie2/account:Account',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createdAt = registerOutput<String>('createdAt');
    findingPublishingFrequency = registerOutput<String>('findingPublishingFrequency');
    region = registerOutput<String>('region');
    serviceRole = registerOutput<String>('serviceRole');
    status = registerOutput<String>('status');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Gets an existing [Account] resource's state with the given [name] and [id].
  static Account get(
    String name,
    pulumi.Input<String> id, {
    AccountState? state,
  }) {
    return Account._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Account._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:macie2/account:Account',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createdAt = registerOutput<String>('createdAt');
    findingPublishingFrequency = registerOutput<String>('findingPublishingFrequency');
    region = registerOutput<String>('region');
    serviceRole = registerOutput<String>('serviceRole');
    status = registerOutput<String>('status');
    updatedAt = registerOutput<String>('updatedAt');
  }
}
