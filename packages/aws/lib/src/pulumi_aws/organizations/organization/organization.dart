import 'package:pulumi/pulumi.dart';
import '../organization_account/organization_account.dart';
import '../organization_non_master_account/organization_non_master_account.dart';
import '../organization_root/organization_root.dart';
import 'organization_args.dart';

/// Provides a resource to create an organization.
///
/// !> **WARNING:** When migrating from a <span pulumi-lang-nodejs="`featureSet`" pulumi-lang-dotnet="`FeatureSet`" pulumi-lang-go="`featureSet`" pulumi-lang-python="`feature_set`" pulumi-lang-yaml="`featureSet`" pulumi-lang-java="`featureSet`">`feature_set`</span> of `CONSOLIDATED_BILLING` to `ALL`, the Organization account owner will received an email stating the following: "You started the process to enable all features for your AWS organization. As part of that process, all member accounts that joined your organization by invitation must approve the change. You don’t need approval from member accounts that you directly created from within your AWS organization." After all member accounts have accepted the invitation, the Organization account owner must then finalize the changes via the [AWS Console](https://console.aws.amazon.com/organizations/home#/organization/settings/migration-progress). Until these steps are performed, the provider will perpetually show a difference, and the `DescribeOrganization` API will continue to show the `FeatureSet` as `CONSOLIDATED_BILLING`. See the [AWS Organizations documentation](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html) for more information.
///
/// !> **WARNING:** [Warning from the AWS Docs](https://docs.aws.amazon.com/organizations/latest/APIReference/API_EnableAWSServiceAccess.html): "We recommend that you enable integration between AWS Organizations and the specified AWS service by using the console or commands that are provided by the specified service. Doing so ensures that the service is aware that it can create the resources that are required for the integration. How the service creates those resources in the organization's accounts depends on that service. For more information, see the documentation for the other AWS service."
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const org = new aws.organizations.Organization("org", {
/// awsServiceAccessPrincipals: [
/// "cloudtrail.amazonaws.com",
/// "config.amazonaws.com",
/// ],
/// featureSet: "ALL",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// org = aws.organizations.Organization("org",
/// aws_service_access_principals=[
/// "cloudtrail.amazonaws.com",
/// "config.amazonaws.com",
/// ],
/// feature_set="ALL")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var org = new Aws.Organizations.Organization("org", new()
/// {
/// AwsServiceAccessPrincipals = new[]
/// {
/// "cloudtrail.amazonaws.com",
/// "config.amazonaws.com",
/// },
/// FeatureSet = "ALL",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := organizations.NewOrganization(ctx, "org", &organizations.OrganizationArgs{
/// AwsServiceAccessPrincipals: pulumi.StringArray{
/// pulumi.String("cloudtrail.amazonaws.com"),
/// pulumi.String("config.amazonaws.com"),
/// },
/// FeatureSet: pulumi.String("ALL"),
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
/// var org = new Organization("org", OrganizationArgs.builder()
/// .awsServiceAccessPrincipals(
/// "cloudtrail.amazonaws.com",
/// "config.amazonaws.com")
/// .featureSet("ALL")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// org:
/// type: aws:organizations:Organization
/// properties:
/// awsServiceAccessPrincipals:
/// - cloudtrail.amazonaws.com
/// - config.amazonaws.com
/// featureSet: ALL
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> (String) ID of the AWS Organizations organization.
///
/// #### Optional
///
/// * <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> (String) AWS Account where this resource is managed.
///
///
/// Using `pulumi import`, import the AWS organization using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:organizations/organization:Organization example o-1234567
/// ```
class Organization extends CustomResource {
  /// List of organization accounts including the master account. For a list excluding the master account, see the <span pulumi-lang-nodejs="`nonMasterAccounts`" pulumi-lang-dotnet="`NonMasterAccounts`" pulumi-lang-go="`nonMasterAccounts`" pulumi-lang-python="`non_master_accounts`" pulumi-lang-yaml="`nonMasterAccounts`" pulumi-lang-java="`nonMasterAccounts`">`non_master_accounts`</span> attribute. All elements have these attributes:
  late final Output<List<OrganizationAccount>> accounts;

  /// ARN of the root.
  late final Output<String> arn;

  /// List of AWS service principal names for which you want to enable integration with your organization. This is typically in the form of a URL, such as service-abbreviation.amazonaws.com. Organization must have <span pulumi-lang-nodejs="`featureSet`" pulumi-lang-dotnet="`FeatureSet`" pulumi-lang-go="`featureSet`" pulumi-lang-python="`feature_set`" pulumi-lang-yaml="`featureSet`" pulumi-lang-java="`featureSet`">`feature_set`</span> set to `ALL`. Some services do not support enablement via this endpoint, see [warning in aws docs](https://docs.aws.amazon.com/organizations/latest/APIReference/API_EnableAWSServiceAccess.html).
  late final Output<List<String>?> awsServiceAccessPrincipals;

  /// List of Organizations policy types to enable in the Organization Root. Organization must have <span pulumi-lang-nodejs="`featureSet`" pulumi-lang-dotnet="`FeatureSet`" pulumi-lang-go="`featureSet`" pulumi-lang-python="`feature_set`" pulumi-lang-yaml="`featureSet`" pulumi-lang-java="`featureSet`">`feature_set`</span> set to `ALL`. For additional information about valid policy types (e.g., `AISERVICES_OPT_OUT_POLICY`, `BACKUP_POLICY`, `BEDROCK_POLICY`, `CHATBOT_POLICY`, `DECLARATIVE_POLICY_EC2`, `INSPECTOR_POLICY`, `RESOURCE_CONTROL_POLICY`, `S3_POLICY`, `SECURITYHUB_POLICY`, `SERVICE_CONTROL_POLICY`, `TAG_POLICY` and `UPGRADE_ROLLOUT_POLICY`), see the [AWS Organizations API Reference](https://docs.aws.amazon.com/organizations/latest/APIReference/API_EnablePolicyType.html). To enable `INSPECTOR_POLICY`, <span pulumi-lang-nodejs="`awsServiceAccessPrincipals`" pulumi-lang-dotnet="`AwsServiceAccessPrincipals`" pulumi-lang-go="`awsServiceAccessPrincipals`" pulumi-lang-python="`aws_service_access_principals`" pulumi-lang-yaml="`awsServiceAccessPrincipals`" pulumi-lang-java="`awsServiceAccessPrincipals`">`aws_service_access_principals`</span> must include `inspector2.amazonaws.com`. To enable `SECURITYHUB_POLICY`, <span pulumi-lang-nodejs="`awsServiceAccessPrincipals`" pulumi-lang-dotnet="`AwsServiceAccessPrincipals`" pulumi-lang-go="`awsServiceAccessPrincipals`" pulumi-lang-python="`aws_service_access_principals`" pulumi-lang-yaml="`awsServiceAccessPrincipals`" pulumi-lang-java="`awsServiceAccessPrincipals`">`aws_service_access_principals`</span> must include `securityhub.amazonaws.com`.
  late final Output<List<String>?> enabledPolicyTypes;

  /// Specify `ALL` (default) or `CONSOLIDATED_BILLING`.
  late final Output<String?> featureSet;

  /// ARN of the master account.
  late final Output<String> masterAccountArn;

  /// Email address of the master account.
  late final Output<String> masterAccountEmail;

  /// Identifier of the master account.
  late final Output<String> masterAccountId;

  /// Name of the master account.
  late final Output<String> masterAccountName;

  /// List of organization accounts excluding the master account. For a list including the master account, see the <span pulumi-lang-nodejs="`accounts`" pulumi-lang-dotnet="`Accounts`" pulumi-lang-go="`accounts`" pulumi-lang-python="`accounts`" pulumi-lang-yaml="`accounts`" pulumi-lang-java="`accounts`">`accounts`</span> attribute. All elements have these attributes:
  late final Output<List<OrganizationNonMasterAccount>> nonMasterAccounts;

  /// Return (as attributes) only the results of the [`DescribeOrganization`](https://docs.aws.amazon.com/organizations/latest/APIReference/API_DescribeOrganization.html) API to avoid [API limits](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_limits.html#throttling-limits). When configured to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> only the <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span>, <span pulumi-lang-nodejs="`featureSet`" pulumi-lang-dotnet="`FeatureSet`" pulumi-lang-go="`featureSet`" pulumi-lang-python="`feature_set`" pulumi-lang-yaml="`featureSet`" pulumi-lang-java="`featureSet`">`feature_set`</span>, <span pulumi-lang-nodejs="`masterAccountArn`" pulumi-lang-dotnet="`MasterAccountArn`" pulumi-lang-go="`masterAccountArn`" pulumi-lang-python="`master_account_arn`" pulumi-lang-yaml="`masterAccountArn`" pulumi-lang-java="`masterAccountArn`">`master_account_arn`</span>, <span pulumi-lang-nodejs="`masterAccountEmail`" pulumi-lang-dotnet="`MasterAccountEmail`" pulumi-lang-go="`masterAccountEmail`" pulumi-lang-python="`master_account_email`" pulumi-lang-yaml="`masterAccountEmail`" pulumi-lang-java="`masterAccountEmail`">`master_account_email`</span> and <span pulumi-lang-nodejs="`masterAccountId`" pulumi-lang-dotnet="`MasterAccountId`" pulumi-lang-go="`masterAccountId`" pulumi-lang-python="`master_account_id`" pulumi-lang-yaml="`masterAccountId`" pulumi-lang-java="`masterAccountId`">`master_account_id`</span> attributes will be returned. All others will be empty. Default: <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> returnOrganizationOnly;

  /// List of organization roots. All elements have these attributes:
  late final Output<List<OrganizationRoot>> roots;

  Organization(
    String name, {
    OrganizationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:organizations/organization:Organization',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accounts = Output.createUnknown<List<OrganizationAccount>>();
    this.arn = Output.createUnknown<String>();
    this.awsServiceAccessPrincipals = Output.createUnknown<List<String>?>();
    this.enabledPolicyTypes = Output.createUnknown<List<String>?>();
    this.featureSet = Output.createUnknown<String?>();
    this.masterAccountArn = Output.createUnknown<String>();
    this.masterAccountEmail = Output.createUnknown<String>();
    this.masterAccountId = Output.createUnknown<String>();
    this.masterAccountName = Output.createUnknown<String>();
    this.nonMasterAccounts =
        Output.createUnknown<List<OrganizationNonMasterAccount>>();
    this.returnOrganizationOnly = Output.createUnknown<bool?>();
    this.roots = Output.createUnknown<List<OrganizationRoot>>();
  }
}
