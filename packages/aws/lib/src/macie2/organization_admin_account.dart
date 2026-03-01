import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_admin_account_args.dart';

/// Provides a resource to manage an [Amazon Macie Organization Admin Account](https://docs.aws.amazon.com/macie/latest/APIReference/admin.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.macie2.Account("example", {});
/// const exampleOrganizationAdminAccount = new aws.macie2.OrganizationAdminAccount("example", {adminAccountId: "ID OF THE ADMIN ACCOUNT"}, {
///     dependsOn: [example],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.macie2.Account("example")
/// example_organization_admin_account = aws.macie2.OrganizationAdminAccount("example", admin_account_id="ID OF THE ADMIN ACCOUNT",
/// opts = pulumi.ResourceOptions(depends_on=[example]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Macie2.Account("example");
///
///     var exampleOrganizationAdminAccount = new Aws.Macie2.OrganizationAdminAccount("example", new()
///     {
///         AdminAccountId = "ID OF THE ADMIN ACCOUNT",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             example,
///         },
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
/// 		example, err := macie2.NewAccount(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = macie2.NewOrganizationAdminAccount(ctx, "example", &macie2.OrganizationAdminAccountArgs{
/// 			AdminAccountId: pulumi.String("ID OF THE ADMIN ACCOUNT"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			example,
/// 		}))
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
/// import com.pulumi.aws.macie2.OrganizationAdminAccount;
/// import com.pulumi.aws.macie2.OrganizationAdminAccountArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new Account("example");
///
///         var exampleOrganizationAdminAccount = new OrganizationAdminAccount("exampleOrganizationAdminAccount", OrganizationAdminAccountArgs.builder()
///             .adminAccountId("ID OF THE ADMIN ACCOUNT")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(example)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:macie2:Account
///   exampleOrganizationAdminAccount:
///     type: aws:macie2:OrganizationAdminAccount
///     name: example
///     properties:
///       adminAccountId: ID OF THE ADMIN ACCOUNT
///     options:
///       dependsOn:
///         - ${example}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.macie2.OrganizationAdminAccount` using the id. For example:
///
/// ```sh
/// $ pulumi import aws:macie2/organizationAdminAccount:OrganizationAdminAccount example abcd1
/// ```
class OrganizationAdminAccount extends pulumi.CustomResource {
  /// The AWS account ID for the account to designate as the delegated Amazon Macie administrator account for the organization.
  late final pulumi.Output<String> adminAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [OrganizationAdminAccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationAdminAccount]. {@macro pulumi_macie2_organization_admin_account_organization_admin_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationAdminAccount(
    String name, {
    OrganizationAdminAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:macie2/organizationAdminAccount:OrganizationAdminAccount',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.adminAccountId = registerOutput<String>('adminAccountId');
    this.region = registerOutput<String>('region');
  }
}
