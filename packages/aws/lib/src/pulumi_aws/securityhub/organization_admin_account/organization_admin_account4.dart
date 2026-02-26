import 'package:pulumi/pulumi.dart';
import 'organization_admin_account_args4.dart';

/// Manages a Security Hub administrator account for an organization. The AWS account utilizing this resource must be an Organizations primary account. More information about Organizations support in Security Hub can be found in the [Security Hub User Guide](https://docs.aws.amazon.com/securityhub/latest/userguide/designate-orgs-admin-account.html).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.organizations.Organization("example", {
/// awsServiceAccessPrincipals: ["securityhub.amazonaws.com"],
/// featureSet: "ALL",
/// });
/// const exampleAccount = new aws.securityhub.Account("example", {});
/// const exampleOrganizationAdminAccount = new aws.securityhub.OrganizationAdminAccount("example", {adminAccountId: "123456789012"}, {
/// dependsOn: [example],
/// });
/// // Auto enable security hub in organization member accounts
/// const exampleOrganizationConfiguration = new aws.securityhub.OrganizationConfiguration("example", {autoEnable: true});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.organizations.Organization("example",
/// aws_service_access_principals=["securityhub.amazonaws.com"],
/// feature_set="ALL")
/// example_account = aws.securityhub.Account("example")
/// example_organization_admin_account = aws.securityhub.OrganizationAdminAccount("example", admin_account_id="123456789012",
/// opts = pulumi.ResourceOptions(depends_on=[example]))
/// # Auto enable security hub in organization member accounts
/// example_organization_configuration = aws.securityhub.OrganizationConfiguration("example", auto_enable=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Organizations.Organization("example", new()
/// {
/// AwsServiceAccessPrincipals = new[]
/// {
/// "securityhub.amazonaws.com",
/// },
/// FeatureSet = "ALL",
/// });
///
/// var exampleAccount = new Aws.SecurityHub.Account("example");
///
/// var exampleOrganizationAdminAccount = new Aws.SecurityHub.OrganizationAdminAccount("example", new()
/// {
/// AdminAccountId = "123456789012",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// example,
/// },
/// });
///
/// // Auto enable security hub in organization member accounts
/// var exampleOrganizationConfiguration = new Aws.SecurityHub.OrganizationConfiguration("example", new()
/// {
/// AutoEnable = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/securityhub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := organizations.NewOrganization(ctx, "example", &organizations.OrganizationArgs{
/// AwsServiceAccessPrincipals: pulumi.StringArray{
/// pulumi.String("securityhub.amazonaws.com"),
/// },
/// FeatureSet: pulumi.String("ALL"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = securityhub.NewAccount(ctx, "example", nil)
/// if err != nil {
/// return err
/// }
/// _, err = securityhub.NewOrganizationAdminAccount(ctx, "example", &securityhub.OrganizationAdminAccountArgs{
/// AdminAccountId: pulumi.String("123456789012"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// example,
/// }))
/// if err != nil {
/// return err
/// }
/// // Auto enable security hub in organization member accounts
/// _, err = securityhub.NewOrganizationConfiguration(ctx, "example", &securityhub.OrganizationConfigurationArgs{
/// AutoEnable: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import com.pulumi.aws.securityhub.Account;
/// import com.pulumi.aws.securityhub.OrganizationAdminAccount;
/// import com.pulumi.aws.securityhub.OrganizationAdminAccountArgs;
/// import com.pulumi.aws.securityhub.OrganizationConfiguration;
/// import com.pulumi.aws.securityhub.OrganizationConfigurationArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Organization("example", OrganizationArgs.builder()
/// .awsServiceAccessPrincipals("securityhub.amazonaws.com")
/// .featureSet("ALL")
/// .build());
///
/// var exampleAccount = new Account("exampleAccount");
///
/// var exampleOrganizationAdminAccount = new OrganizationAdminAccount("exampleOrganizationAdminAccount", OrganizationAdminAccountArgs.builder()
/// .adminAccountId("123456789012")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(example)
/// .build());
///
/// // Auto enable security hub in organization member accounts
/// var exampleOrganizationConfiguration = new OrganizationConfiguration("exampleOrganizationConfiguration", OrganizationConfigurationArgs.builder()
/// .autoEnable(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:organizations:Organization
/// properties:
/// awsServiceAccessPrincipals:
/// - securityhub.amazonaws.com
/// featureSet: ALL
/// exampleAccount:
/// type: aws:securityhub:Account
/// name: example
/// exampleOrganizationAdminAccount:
/// type: aws:securityhub:OrganizationAdminAccount
/// name: example
/// properties:
/// adminAccountId: '123456789012'
/// options:
/// dependsOn:
/// - ${example}
/// # Auto enable security hub in organization member accounts
/// exampleOrganizationConfiguration:
/// type: aws:securityhub:OrganizationConfiguration
/// name: example
/// properties:
/// autoEnable: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Security Hub Organization Admin Accounts using the AWS account ID. For example:
///
/// ```sh
/// $ pulumi import aws:securityhub/organizationAdminAccount:OrganizationAdminAccount example 123456789012
/// ```
class OrganizationAdminAccount4 extends CustomResource {
  /// The AWS account identifier of the account to designate as the Security Hub administrator account.
  late final Output<String> adminAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  OrganizationAdminAccount4(
    String name, {
    OrganizationAdminAccountArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:securityhub/organizationAdminAccount:OrganizationAdminAccount',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.adminAccountId = registerOutput<String>('adminAccountId');
    this.region = registerOutput<String>('region');
  }
}
