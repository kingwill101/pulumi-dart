import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_admin_account_args.dart';

/// Manages a GuardDuty Organization Admin Account. The AWS account utilizing this resource must be an Organizations primary account. More information about Organizations support in GuardDuty can be found in the [GuardDuty User Guide](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_organizations.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.organizations.Organization("example", {
///     awsServiceAccessPrincipals: ["guardduty.amazonaws.com"],
///     featureSet: "ALL",
/// });
/// const exampleDetector = new aws.guardduty.Detector("example", {});
/// const exampleOrganizationAdminAccount = new aws.guardduty.OrganizationAdminAccount("example", {adminAccountId: "123456789012"}, {
///     dependsOn: [example],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.organizations.Organization("example",
///     aws_service_access_principals=["guardduty.amazonaws.com"],
///     feature_set="ALL")
/// example_detector = aws.guardduty.Detector("example")
/// example_organization_admin_account = aws.guardduty.OrganizationAdminAccount("example", admin_account_id="123456789012",
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
///             "guardduty.amazonaws.com",
///         },
///         FeatureSet = "ALL",
///     });
///
///     var exampleDetector = new Aws.GuardDuty.Detector("example");
///
///     var exampleOrganizationAdminAccount = new Aws.GuardDuty.OrganizationAdminAccount("example", new()
///     {
///         AdminAccountId = "123456789012",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/guardduty"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := organizations.NewOrganization(ctx, "example", &organizations.OrganizationArgs{
/// 			AwsServiceAccessPrincipals: pulumi.StringArray{
/// 				pulumi.String("guardduty.amazonaws.com"),
/// 			},
/// 			FeatureSet: pulumi.String("ALL"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = guardduty.NewDetector(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = guardduty.NewOrganizationAdminAccount(ctx, "example", &guardduty.OrganizationAdminAccountArgs{
/// 			AdminAccountId: pulumi.String("123456789012"),
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
/// import com.pulumi.aws.guardduty.Detector;
/// import com.pulumi.aws.guardduty.OrganizationAdminAccount;
/// import com.pulumi.aws.guardduty.OrganizationAdminAccountArgs;
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
///             .awsServiceAccessPrincipals("guardduty.amazonaws.com")
///             .featureSet("ALL")
///             .build());
///
///         var exampleDetector = new Detector("exampleDetector");
///
///         var exampleOrganizationAdminAccount = new OrganizationAdminAccount("exampleOrganizationAdminAccount", OrganizationAdminAccountArgs.builder()
///             .adminAccountId("123456789012")
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
///         - guardduty.amazonaws.com
///       featureSet: ALL
///   exampleDetector:
///     type: aws:guardduty:Detector
///     name: example
///   exampleOrganizationAdminAccount:
///     type: aws:guardduty:OrganizationAdminAccount
///     name: example
///     properties:
///       adminAccountId: '123456789012'
///     options:
///       dependsOn:
///         - ${example}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import GuardDuty Organization Admin Account using the AWS account ID. For example:
///
/// ```sh
/// $ pulumi import aws:guardduty/organizationAdminAccount:OrganizationAdminAccount example 123456789012
/// ```
class OrganizationAdminAccount extends pulumi.CustomResource {
  /// AWS account identifier to designate as a delegated administrator for GuardDuty.
  late final pulumi.Output<String> adminAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [OrganizationAdminAccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationAdminAccount]. {@macro pulumi_guardduty_organization_admin_account_organization_admin_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationAdminAccount(
    String name, {
    OrganizationAdminAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:guardduty/organizationAdminAccount:OrganizationAdminAccount',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.adminAccountId = registerOutput<String>('adminAccountId');
    this.region = registerOutput<String>('region');
  }
}
