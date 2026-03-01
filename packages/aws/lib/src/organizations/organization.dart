import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_account.dart';
import 'organization_args.dart';
import 'organization_non_master_account.dart';
import 'organization_root.dart';

/// Provides a resource to create an organization.
///
/// !> **WARNING:** When migrating from a `feature_set` of `CONSOLIDATED_BILLING` to `ALL`, the Organization account owner will received an email stating the following: "You started the process to enable all features for your AWS organization. As part of that process, all member accounts that joined your organization by invitation must approve the change. You don’t need approval from member accounts that you directly created from within your AWS organization." After all member accounts have accepted the invitation, the Organization account owner must then finalize the changes via the [AWS Console](https://console.aws.amazon.com/organizations/home#/organization/settings/migration-progress). Until these steps are performed, the provider will perpetually show a difference, and the `DescribeOrganization` API will continue to show the `FeatureSet` as `CONSOLIDATED_BILLING`. See the [AWS Organizations documentation](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html) for more information.
///
/// !> **WARNING:** [Warning from the AWS Docs](https://docs.aws.amazon.com/organizations/latest/APIReference/API_EnableAWSServiceAccess.html): "We recommend that you enable integration between AWS Organizations and the specified AWS service by using the console or commands that are provided by the specified service. Doing so ensures that the service is aware that it can create the resources that are required for the integration. How the service creates those resources in the organization's accounts depends on that service. For more information, see the documentation for the other AWS service."
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const org = new aws.organizations.Organization("org", {
///     awsServiceAccessPrincipals: [
///         "cloudtrail.amazonaws.com",
///         "config.amazonaws.com",
///     ],
///     featureSet: "ALL",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// org = aws.organizations.Organization("org",
///     aws_service_access_principals=[
///         "cloudtrail.amazonaws.com",
///         "config.amazonaws.com",
///     ],
///     feature_set="ALL")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var org = new Aws.Organizations.Organization("org", new()
///     {
///         AwsServiceAccessPrincipals = new[]
///         {
///             "cloudtrail.amazonaws.com",
///             "config.amazonaws.com",
///         },
///         FeatureSet = "ALL",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := organizations.NewOrganization(ctx, "org", &organizations.OrganizationArgs{
/// 			AwsServiceAccessPrincipals: pulumi.StringArray{
/// 				pulumi.String("cloudtrail.amazonaws.com"),
/// 				pulumi.String("config.amazonaws.com"),
/// 			},
/// 			FeatureSet: pulumi.String("ALL"),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var org = new Organization("org", OrganizationArgs.builder()
///             .awsServiceAccessPrincipals(
///                 "cloudtrail.amazonaws.com",
///                 "config.amazonaws.com")
///             .featureSet("ALL")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   org:
///     type: aws:organizations:Organization
///     properties:
///       awsServiceAccessPrincipals:
///         - cloudtrail.amazonaws.com
///         - config.amazonaws.com
///       featureSet: ALL
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` (String) ID of the AWS Organizations organization.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
///
///
/// Using `pulumi import`, import the AWS organization using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:organizations/organization:Organization example o-1234567
/// ```
class Organization extends pulumi.CustomResource {
  /// List of organization accounts including the master account. For a list excluding the master account, see the `non_master_accounts` attribute. All elements have these attributes:
  late final pulumi.Output<List<OrganizationAccount>> accounts;

  /// ARN of the root.
  late final pulumi.Output<String> arn;

  /// List of AWS service principal names for which you want to enable integration with your organization. This is typically in the form of a URL, such as service-abbreviation.amazonaws.com. Organization must have `feature_set` set to `ALL`. Some services do not support enablement via this endpoint, see [warning in aws docs](https://docs.aws.amazon.com/organizations/latest/APIReference/API_EnableAWSServiceAccess.html).
  late final pulumi.Output<List<String>?> awsServiceAccessPrincipals;

  /// List of Organizations policy types to enable in the Organization Root. Organization must have `feature_set` set to `ALL`. For additional information about valid policy types (e.g., `AISERVICES_OPT_OUT_POLICY`, `BACKUP_POLICY`, `BEDROCK_POLICY`, `CHATBOT_POLICY`, `DECLARATIVE_POLICY_EC2`, `INSPECTOR_POLICY`, `RESOURCE_CONTROL_POLICY`, `S3_POLICY`, `SECURITYHUB_POLICY`, `SERVICE_CONTROL_POLICY`, `TAG_POLICY` and `UPGRADE_ROLLOUT_POLICY`), see the [AWS Organizations API Reference](https://docs.aws.amazon.com/organizations/latest/APIReference/API_EnablePolicyType.html). To enable `INSPECTOR_POLICY`, `aws_service_access_principals` must include `inspector2.amazonaws.com`. To enable `SECURITYHUB_POLICY`, `aws_service_access_principals` must include `securityhub.amazonaws.com`.
  late final pulumi.Output<List<String>?> enabledPolicyTypes;

  /// Specify `ALL` (default) or `CONSOLIDATED_BILLING`.
  late final pulumi.Output<String?> featureSet;

  /// ARN of the master account.
  late final pulumi.Output<String> masterAccountArn;

  /// Email address of the master account.
  late final pulumi.Output<String> masterAccountEmail;

  /// Identifier of the master account.
  late final pulumi.Output<String> masterAccountId;

  /// Name of the master account.
  late final pulumi.Output<String> masterAccountName;

  /// List of organization accounts excluding the master account. For a list including the master account, see the `accounts` attribute. All elements have these attributes:
  late final pulumi.Output<List<OrganizationNonMasterAccount>>
  nonMasterAccounts;

  /// Return (as attributes) only the results of the [`DescribeOrganization`](https://docs.aws.amazon.com/organizations/latest/APIReference/API_DescribeOrganization.html) API to avoid [API limits](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_limits.html#throttling-limits). When configured to `true` only the `arn`, `feature_set`, `master_account_arn`, `master_account_email` and `master_account_id` attributes will be returned. All others will be empty. Default: `false`.
  late final pulumi.Output<bool?> returnOrganizationOnly;

  /// List of organization roots. All elements have these attributes:
  late final pulumi.Output<List<OrganizationRoot>> roots;

  /// Creates a new [Organization].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Organization]. {@macro pulumi_organizations_organization_organization_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Organization(
    String name, {
    OrganizationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:organizations/organization:Organization',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.accounts = registerOutput<List<OrganizationAccount>>('accounts');
    this.arn = registerOutput<String>('arn');
    this.awsServiceAccessPrincipals = registerOutput<List<String>?>(
      'awsServiceAccessPrincipals',
    );
    this.enabledPolicyTypes = registerOutput<List<String>?>(
      'enabledPolicyTypes',
    );
    this.featureSet = registerOutput<String?>('featureSet');
    this.masterAccountArn = registerOutput<String>('masterAccountArn');
    this.masterAccountEmail = registerOutput<String>('masterAccountEmail');
    this.masterAccountId = registerOutput<String>('masterAccountId');
    this.masterAccountName = registerOutput<String>('masterAccountName');
    this.nonMasterAccounts = registerOutput<List<OrganizationNonMasterAccount>>(
      'nonMasterAccounts',
    );
    this.returnOrganizationOnly = registerOutput<bool?>(
      'returnOrganizationOnly',
    );
    this.roots = registerOutput<List<OrganizationRoot>>('roots');
  }
}
