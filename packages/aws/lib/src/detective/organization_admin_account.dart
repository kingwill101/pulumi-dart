import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_admin_account_args.dart';

/// Manages a Detective Organization Admin Account. The AWS account utilizing this resource must be an Organizations primary account. More information about Organizations support in Detective can be found in the [Detective User Guide](https://docs.aws.amazon.com/detective/latest/adminguide/accounts-orgs-transition.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.organizations.Organization("example", {
///     awsServiceAccessPrincipals: ["detective.amazonaws.com"],
///     featureSet: "ALL",
/// });
/// const exampleOrganizationAdminAccount = new aws.detective.OrganizationAdminAccount("example", {accountId: "123456789012"}, {
///     dependsOn: [example],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.organizations.Organization("example",
///     aws_service_access_principals=["detective.amazonaws.com"],
///     feature_set="ALL")
/// example_organization_admin_account = aws.detective.OrganizationAdminAccount("example", account_id="123456789012",
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
///     var example = new Aws.Organizations.Organization("example", new()
///     {
///         AwsServiceAccessPrincipals = new[]
///         {
///             "detective.amazonaws.com",
///         },
///         FeatureSet = "ALL",
///     });
///
///     var exampleOrganizationAdminAccount = new Aws.Detective.OrganizationAdminAccount("example", new()
///     {
///         AccountId = "123456789012",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/detective"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := organizations.NewOrganization(ctx, "example", &organizations.OrganizationArgs{
/// 			AwsServiceAccessPrincipals: pulumi.StringArray{
/// 				pulumi.String("detective.amazonaws.com"),
/// 			},
/// 			FeatureSet: pulumi.String("ALL"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = detective.NewOrganizationAdminAccount(ctx, "example", &detective.OrganizationAdminAccountArgs{
/// 			AccountId: pulumi.String("123456789012"),
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
/// import com.pulumi.aws.organizations.Organization;
/// import com.pulumi.aws.organizations.OrganizationArgs;
/// import com.pulumi.aws.detective.OrganizationAdminAccount;
/// import com.pulumi.aws.detective.OrganizationAdminAccountArgs;
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
///         var example = new Organization("example", OrganizationArgs.builder()
///             .awsServiceAccessPrincipals("detective.amazonaws.com")
///             .featureSet("ALL")
///             .build());
///
///         var exampleOrganizationAdminAccount = new OrganizationAdminAccount("exampleOrganizationAdminAccount", OrganizationAdminAccountArgs.builder()
///             .accountId("123456789012")
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
///     type: aws:organizations:Organization
///     properties:
///       awsServiceAccessPrincipals:
///         - detective.amazonaws.com
///       featureSet: ALL
///   exampleOrganizationAdminAccount:
///     type: aws:detective:OrganizationAdminAccount
///     name: example
///     properties:
///       accountId: '123456789012'
///     options:
///       dependsOn:
///         - ${example}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.detective.OrganizationAdminAccount` using `account_id`. For example:
///
/// ```sh
/// $ pulumi import aws:detective/organizationAdminAccount:OrganizationAdminAccount example 123456789012
/// ```
class OrganizationAdminAccount extends pulumi.CustomResource {
  /// AWS account identifier to designate as a delegated administrator for Detective.
  late final pulumi.Output<String> accountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [OrganizationAdminAccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationAdminAccount]. {@macro pulumi_detective_organization_admin_account_organization_admin_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationAdminAccount(
    String name, {
    OrganizationAdminAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:detective/organizationAdminAccount:OrganizationAdminAccount',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.region = registerOutput<String>('region');
  }
}
