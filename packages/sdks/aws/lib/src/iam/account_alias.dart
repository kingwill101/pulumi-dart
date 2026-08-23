import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_alias_args.dart';
import 'account_alias_state.dart';

/// &gt; **Note:** There is only a single account alias per AWS account.
///
/// Manages the account alias for the AWS Account.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const alias = new aws.iam.AccountAlias("alias", {accountAlias: "my-account-alias"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// alias = aws.iam.AccountAlias("alias", account_alias="my-account-alias")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @alias = new Aws.Iam.AccountAlias("alias", new()
///     {
///         Alias = "my-account-alias",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.NewAccountAlias(ctx, "alias", &iam.AccountAliasArgs{
/// 			AccountAlias: pulumi.String("my-account-alias"),
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
/// resource "aws_iam_accountalias" "alias" {
///   account_alias = "my-account-alias"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.AccountAlias;
/// import com.pulumi.aws.iam.AccountAliasArgs;
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
///         var alias = new AccountAlias("alias", AccountAliasArgs.builder()
///             .accountAlias("my-account-alias")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   alias:
///     type: aws:iam:AccountAlias
///     properties:
///       accountAlias: my-account-alias
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import the current Account Alias using the `accountAlias`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/accountAlias:AccountAlias alias my-account-alias
/// ```
class AccountAlias extends pulumi.CustomResource {
  /// The account alias
  late final pulumi.Output<String> accountAlias;

  /// Creates a new [AccountAlias].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccountAlias]. {@macro pulumi_iam_account_alias_account_alias_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccountAlias(
    String name, {
    AccountAliasArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/accountAlias:AccountAlias',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountAlias = registerOutput<String>('accountAlias');
  }

  /// Gets an existing [AccountAlias] resource's state with the given [name] and [id].
  static AccountAlias get(
    String name,
    pulumi.Input<String> id, {
    AccountAliasState? state,
  }) {
    return AccountAlias._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AccountAlias._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/accountAlias:AccountAlias',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountAlias = registerOutput<String>('accountAlias');
  }
}
