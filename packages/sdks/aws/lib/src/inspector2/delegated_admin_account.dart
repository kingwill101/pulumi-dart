import 'package:pulumi/pulumi.dart' as pulumi;
import 'delegated_admin_account_args.dart';
import 'delegated_admin_account_state.dart';

/// Resource for managing an Amazon Inspector Delegated Admin Account.
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
/// const current = aws.getCallerIdentity({});
/// const example = new aws.inspector2.DelegatedAdminAccount("example", {accountId: current.then(current => current.accountId)});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// example = aws.inspector2.DelegatedAdminAccount("example", account_id=current.account_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetCallerIdentity.Invoke();
///
///     var example = new Aws.Inspector2.DelegatedAdminAccount("example", new()
///     {
///         AccountId = current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/inspector2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = inspector2.NewDelegatedAdminAccount(ctx, "example", &inspector2.DelegatedAdminAccountArgs{
/// 			AccountId: pulumi.String(current.AccountId),
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
/// data "aws_getcalleridentity" "current" {
/// }
///
/// resource "aws_inspector2_delegatedadminaccount" "example" {
///   account_id = data.aws_getcalleridentity.current.account_id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.inspector2.DelegatedAdminAccount;
/// import com.pulumi.aws.inspector2.DelegatedAdminAccountArgs;
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
///         final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         var example = new DelegatedAdminAccount("example", DelegatedAdminAccountArgs.builder()
///             .accountId(current.accountId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:inspector2:DelegatedAdminAccount
///     properties:
///       accountId: ${current.accountId}
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Inspector Delegated Admin Account using the `accountId`. For example:
///
/// ```sh
/// $ pulumi import aws:inspector2/delegatedAdminAccount:DelegatedAdminAccount example 123456789012
/// ```
class DelegatedAdminAccount extends pulumi.CustomResource {
  /// Account to enable as delegated admin account.
  late final pulumi.Output<String> accountId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Status of this delegated admin account.
  late final pulumi.Output<String> relationshipStatus;

  /// Creates a new [DelegatedAdminAccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DelegatedAdminAccount]. {@macro pulumi_inspector2_delegated_admin_account_delegated_admin_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DelegatedAdminAccount(
    String name, {
    DelegatedAdminAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:inspector2/delegatedAdminAccount:DelegatedAdminAccount',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    region = registerOutput<String>('region');
    relationshipStatus = registerOutput<String>('relationshipStatus');
  }

  /// Gets an existing [DelegatedAdminAccount] resource's state with the given [name] and [id].
  static DelegatedAdminAccount get(
    String name,
    pulumi.Input<String> id, {
    DelegatedAdminAccountState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DelegatedAdminAccount._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DelegatedAdminAccount._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:inspector2/delegatedAdminAccount:DelegatedAdminAccount',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    region = registerOutput<String>('region');
    relationshipStatus = registerOutput<String>('relationshipStatus');
  }

  /// Creates a typed reference to an existing [DelegatedAdminAccount] resource.
  DelegatedAdminAccount.reference(String urn)
    : super(
        'aws:inspector2/delegatedAdminAccount:DelegatedAdminAccount',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    region = registerOutput<String>('region');
    relationshipStatus = registerOutput<String>('relationshipStatus');
  }
}
