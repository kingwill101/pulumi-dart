import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_delegated_admin_account_args.dart';
import 'organization_delegated_admin_account_state.dart';

/// Provides a resource to manage an AWS CloudTrail Delegated Administrator.
///
/// ## Example Usage
///
/// Basic usage:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const delegated = aws.getCallerIdentity({});
/// const example = new aws.cloudtrail.OrganizationDelegatedAdminAccount("example", {accountId: delegated.then(delegated => delegated.accountId)});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// delegated = aws.get_caller_identity()
/// example = aws.cloudtrail.OrganizationDelegatedAdminAccount("example", account_id=delegated.account_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var delegated = Aws.GetCallerIdentity.Invoke();
///
///     var example = new Aws.CloudTrail.OrganizationDelegatedAdminAccount("example", new()
///     {
///         AccountId = delegated.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudtrail"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		delegated, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudtrail.NewOrganizationDelegatedAdminAccount(ctx, "example", &cloudtrail.OrganizationDelegatedAdminAccountArgs{
/// 			AccountId: pulumi.String(delegated.AccountId),
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.cloudtrail.OrganizationDelegatedAdminAccount;
/// import com.pulumi.aws.cloudtrail.OrganizationDelegatedAdminAccountArgs;
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
///         final var delegated = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         var example = new OrganizationDelegatedAdminAccount("example", OrganizationDelegatedAdminAccountArgs.builder()
///             .accountId(delegated.accountId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudtrail:OrganizationDelegatedAdminAccount
///     properties:
///       accountId: ${delegated.accountId}
/// variables:
///   delegated:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import delegated administrators using the delegate account `id`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudtrail/organizationDelegatedAdminAccount:OrganizationDelegatedAdminAccount example 12345678901
/// ```
class OrganizationDelegatedAdminAccount extends pulumi.CustomResource {
  /// An organization member account ID that you want to designate as a delegated administrator.
  late final pulumi.Output<String> accountId;
  /// The Amazon Resource Name (ARN) of the delegated administrator's account.
  late final pulumi.Output<String> arn;
  /// The email address that is associated with the delegated administrator's AWS account.
  late final pulumi.Output<String> email;
  /// The friendly name of the delegated administrator's account.
  late final pulumi.Output<String> name;
  /// The AWS CloudTrail service principal name.
  late final pulumi.Output<String> servicePrincipal;

  /// Creates a new [OrganizationDelegatedAdminAccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationDelegatedAdminAccount]. {@macro pulumi_cloudtrail_organization_delegated_admin_account_organization_delegated_admin_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationDelegatedAdminAccount(
    String name, {
    OrganizationDelegatedAdminAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudtrail/organizationDelegatedAdminAccount:OrganizationDelegatedAdminAccount',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.arn = registerOutput<String>('arn');
    this.email = registerOutput<String>('email');
    this.name = registerOutput<String>('name');
    this.servicePrincipal = registerOutput<String>('servicePrincipal');
  }

  /// Gets an existing [OrganizationDelegatedAdminAccount] resource's state with the given [name] and [id].
  static OrganizationDelegatedAdminAccount get(
    String name,
    pulumi.Input<String> id, {
    OrganizationDelegatedAdminAccountState? state,
  }) {
    return OrganizationDelegatedAdminAccount._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  OrganizationDelegatedAdminAccount._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudtrail/organizationDelegatedAdminAccount:OrganizationDelegatedAdminAccount',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.arn = registerOutput<String>('arn');
    this.email = registerOutput<String>('email');
    this.name = registerOutput<String>('name');
    this.servicePrincipal = registerOutput<String>('servicePrincipal');
  }
}
