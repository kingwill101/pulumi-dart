import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_configuration_args.dart';
import 'organization_configuration_organization_configuration.dart';
import 'organization_configuration_state.dart';

/// Manages the Security Hub Organization Configuration.
///
/// &gt; **NOTE:** This resource requires an `aws.securityhub.OrganizationAdminAccount` to be configured (not necessarily with Pulumi). More information about managing Security Hub in an organization can be found in the [Managing administrator and member accounts](https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-accounts.html) documentation.
///
/// &gt; **NOTE:** In order to set the `configurationType` to `CENTRAL`, the delegated admin must be a member account of the organization and not the management account. Central configuration also requires an `aws.securityhub.FindingAggregator` to be configured.
///
/// &gt; **NOTE:** This is an advanced AWS resource. Pulumi will automatically assume management of the Security Hub Organization Configuration without import and perform no actions on removal from the Pulumi program.
///
/// &gt; **NOTE:** Deleting this resource resets security hub to a local organization configuration with auto enable false.
///
/// ## Example Usage
///
/// ### Local Configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.organizations.Organization("example", {
///     awsServiceAccessPrincipals: ["securityhub.amazonaws.com"],
///     featureSet: "ALL",
/// });
/// const exampleOrganizationAdminAccount = new aws.securityhub.OrganizationAdminAccount("example", {adminAccountId: "123456789012"}, {
///     dependsOn: [example],
/// });
/// const exampleOrganizationConfiguration = new aws.securityhub.OrganizationConfiguration("example", {autoEnable: true});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.organizations.Organization("example",
///     aws_service_access_principals=["securityhub.amazonaws.com"],
///     feature_set="ALL")
/// example_organization_admin_account = aws.securityhub.OrganizationAdminAccount("example", admin_account_id="123456789012",
/// opts = pulumi.ResourceOptions(depends_on=[example]))
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
///     var example = new Aws.Organizations.Organization("example", new()
///     {
///         AwsServiceAccessPrincipals = new[]
///         {
///             "securityhub.amazonaws.com",
///         },
///         FeatureSet = "ALL",
///     });
///
///     var exampleOrganizationAdminAccount = new Aws.SecurityHub.OrganizationAdminAccount("example", new()
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
///     var exampleOrganizationConfiguration = new Aws.SecurityHub.OrganizationConfiguration("example", new()
///     {
///         AutoEnable = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/securityhub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := organizations.NewOrganization(ctx, "example", &organizations.OrganizationArgs{
/// 			AwsServiceAccessPrincipals: pulumi.StringArray{
/// 				pulumi.String("securityhub.amazonaws.com"),
/// 			},
/// 			FeatureSet: pulumi.String("ALL"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securityhub.NewOrganizationAdminAccount(ctx, "example", &securityhub.OrganizationAdminAccountArgs{
/// 			AdminAccountId: pulumi.String("123456789012"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			example,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securityhub.NewOrganizationConfiguration(ctx, "example", &securityhub.OrganizationConfigurationArgs{
/// 			AutoEnable: pulumi.Bool(true),
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
/// resource "aws_organizations_organization" "example" {
///   aws_service_access_principals = ["securityhub.amazonaws.com"]
///   feature_set                   = "ALL"
/// }
/// resource "aws_securityhub_organizationadminaccount" "example" {
///   depends_on       = [aws_organizations_organization.example]
///   admin_account_id = "123456789012"
/// }
/// resource "aws_securityhub_organizationconfiguration" "example" {
///   auto_enable = true
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
/// import com.pulumi.aws.securityhub.OrganizationAdminAccount;
/// import com.pulumi.aws.securityhub.OrganizationAdminAccountArgs;
/// import com.pulumi.aws.securityhub.OrganizationConfiguration;
/// import com.pulumi.aws.securityhub.OrganizationConfigurationArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new Organization("example", OrganizationArgs.builder()
///             .awsServiceAccessPrincipals("securityhub.amazonaws.com")
///             .featureSet("ALL")
///             .build());
///
///         var exampleOrganizationAdminAccount = new OrganizationAdminAccount("exampleOrganizationAdminAccount", OrganizationAdminAccountArgs.builder()
///             .adminAccountId("123456789012")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(example)
///                 .build());
///
///         var exampleOrganizationConfiguration = new OrganizationConfiguration("exampleOrganizationConfiguration", OrganizationConfigurationArgs.builder()
///             .autoEnable(true)
///             .build());
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
///         - securityhub.amazonaws.com
///       featureSet: ALL
///   exampleOrganizationAdminAccount:
///     type: aws:securityhub:OrganizationAdminAccount
///     name: example
///     properties:
///       adminAccountId: '123456789012'
///     options:
///       dependsOn:
///         - ${example}
///   exampleOrganizationConfiguration:
///     type: aws:securityhub:OrganizationConfiguration
///     name: example
///     properties:
///       autoEnable: true
/// ```
///
///
/// ### Central Configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.securityhub.OrganizationAdminAccount("example", {adminAccountId: "123456789012"}, {
///     dependsOn: [exampleAwsOrganizationsOrganization],
/// });
/// const exampleFindingAggregator = new aws.securityhub.FindingAggregator("example", {linkingMode: "ALL_REGIONS"}, {
///     dependsOn: [example],
/// });
/// const exampleOrganizationConfiguration = new aws.securityhub.OrganizationConfiguration("example", {
///     organizationConfiguration: {
///         configurationType: "CENTRAL",
///     },
///     autoEnable: false,
///     autoEnableStandards: "NONE",
/// }, {
///     dependsOn: [exampleFindingAggregator],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.securityhub.OrganizationAdminAccount("example", admin_account_id="123456789012",
/// opts = pulumi.ResourceOptions(depends_on=[example_aws_organizations_organization]))
/// example_finding_aggregator = aws.securityhub.FindingAggregator("example", linking_mode="ALL_REGIONS",
/// opts = pulumi.ResourceOptions(depends_on=[example]))
/// example_organization_configuration = aws.securityhub.OrganizationConfiguration("example",
///     organization_configuration={
///         "configuration_type": "CENTRAL",
///     },
///     auto_enable=False,
///     auto_enable_standards="NONE",
///     opts = pulumi.ResourceOptions(depends_on=[example_finding_aggregator]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SecurityHub.OrganizationAdminAccount("example", new()
///     {
///         AdminAccountId = "123456789012",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleAwsOrganizationsOrganization,
///         },
///     });
///
///     var exampleFindingAggregator = new Aws.SecurityHub.FindingAggregator("example", new()
///     {
///         LinkingMode = "ALL_REGIONS",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             example,
///         },
///     });
///
///     var exampleOrganizationConfiguration = new Aws.SecurityHub.OrganizationConfiguration("example", new()
///     {
///         OrganizationConfigurationDetails = new Aws.SecurityHub.Inputs.OrganizationConfigurationOrganizationConfigurationArgs
///         {
///             ConfigurationType = "CENTRAL",
///         },
///         AutoEnable = false,
///         AutoEnableStandards = "NONE",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleFindingAggregator,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/securityhub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := securityhub.NewOrganizationAdminAccount(ctx, "example", &securityhub.OrganizationAdminAccountArgs{
/// 			AdminAccountId: pulumi.String("123456789012"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleAwsOrganizationsOrganization,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFindingAggregator, err := securityhub.NewFindingAggregator(ctx, "example", &securityhub.FindingAggregatorArgs{
/// 			LinkingMode: pulumi.String("ALL_REGIONS"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			example,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securityhub.NewOrganizationConfiguration(ctx, "example", &securityhub.OrganizationConfigurationArgs{
/// 			OrganizationConfiguration: &securityhub.OrganizationConfigurationOrganizationConfigurationArgs{
/// 				ConfigurationType: pulumi.String("CENTRAL"),
/// 			},
/// 			AutoEnable:          pulumi.Bool(false),
/// 			AutoEnableStandards: pulumi.String("NONE"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleFindingAggregator,
/// 		}))
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
/// resource "aws_securityhub_organizationadminaccount" "example" {
///   depends_on       = [exampleAwsOrganizationsOrganization]
///   admin_account_id = "123456789012"
/// }
/// resource "aws_securityhub_findingaggregator" "example" {
///   depends_on   = [aws_securityhub_organizationadminaccount.example]
///   linking_mode = "ALL_REGIONS"
/// }
/// resource "aws_securityhub_organizationconfiguration" "example" {
///   depends_on = [aws_securityhub_findingaggregator.example]
///   organization_configuration = {
///     configuration_type = "CENTRAL"
///   }
///   auto_enable           = false
///   auto_enable_standards = "NONE"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.securityhub.OrganizationAdminAccount;
/// import com.pulumi.aws.securityhub.OrganizationAdminAccountArgs;
/// import com.pulumi.aws.securityhub.FindingAggregator;
/// import com.pulumi.aws.securityhub.FindingAggregatorArgs;
/// import com.pulumi.aws.securityhub.OrganizationConfiguration;
/// import com.pulumi.aws.securityhub.OrganizationConfigurationArgs;
/// import com.pulumi.aws.securityhub.inputs.OrganizationConfigurationOrganizationConfigurationArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new OrganizationAdminAccount("example", OrganizationAdminAccountArgs.builder()
///             .adminAccountId("123456789012")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleAwsOrganizationsOrganization)
///                 .build());
///
///         var exampleFindingAggregator = new FindingAggregator("exampleFindingAggregator", FindingAggregatorArgs.builder()
///             .linkingMode("ALL_REGIONS")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(example)
///                 .build());
///
///         var exampleOrganizationConfiguration = new OrganizationConfiguration("exampleOrganizationConfiguration", OrganizationConfigurationArgs.builder()
///             .organizationConfiguration(OrganizationConfigurationOrganizationConfigurationArgs.builder()
///                 .configurationType("CENTRAL")
///                 .build())
///             .autoEnable(false)
///             .autoEnableStandards("NONE")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleFindingAggregator)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:securityhub:OrganizationAdminAccount
///     properties:
///       adminAccountId: '123456789012'
///     options:
///       dependsOn:
///         - ${exampleAwsOrganizationsOrganization}
///   exampleFindingAggregator:
///     type: aws:securityhub:FindingAggregator
///     name: example
///     properties:
///       linkingMode: ALL_REGIONS
///     options:
///       dependsOn:
///         - ${example}
///   exampleOrganizationConfiguration:
///     type: aws:securityhub:OrganizationConfiguration
///     name: example
///     properties:
///       organizationConfiguration:
///         configurationType: CENTRAL
///       autoEnable: false
///       autoEnableStandards: NONE
///     options:
///       dependsOn:
///         - ${exampleFindingAggregator}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import an existing Security Hub enabled account using the AWS account ID. For example:
///
/// ```sh
/// $ pulumi import aws:securityhub/organizationConfiguration:OrganizationConfiguration example 123456789012
/// ```
class OrganizationConfiguration extends pulumi.CustomResource {
  /// Whether to automatically enable Security Hub for new accounts in the organization.
  late final pulumi.Output<bool> autoEnable;
  /// Whether to automatically enable Security Hub default standards for new member accounts in the organization. By default, this parameter is equal to `DEFAULT`, and new member accounts are automatically enabled with default Security Hub standards. To opt out of enabling default standards for new member accounts, set this parameter equal to `NONE`.
  late final pulumi.Output<String> autoEnableStandards;
  /// Provides information about the way an organization is configured in Security Hub.
  late final pulumi.Output<OrganizationConfigurationOrganizationConfiguration> organizationConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [OrganizationConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationConfiguration]. {@macro pulumi_securityhub_organization_configuration_organization_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationConfiguration(
    String name, {
    OrganizationConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:securityhub/organizationConfiguration:OrganizationConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    autoEnable = registerOutput<bool>('autoEnable');
    autoEnableStandards = registerOutput<String>('autoEnableStandards');
    organizationConfiguration = registerOutput<OrganizationConfigurationOrganizationConfiguration>('organizationConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrganizationConfigurationOrganizationConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
  }

  /// Gets an existing [OrganizationConfiguration] resource's state with the given [name] and [id].
  static OrganizationConfiguration get(
    String name,
    pulumi.Input<String> id, {
    OrganizationConfigurationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return OrganizationConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  OrganizationConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:securityhub/organizationConfiguration:OrganizationConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoEnable = registerOutput<bool>('autoEnable');
    autoEnableStandards = registerOutput<String>('autoEnableStandards');
    organizationConfiguration = registerOutput<OrganizationConfigurationOrganizationConfiguration>('organizationConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrganizationConfigurationOrganizationConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [OrganizationConfiguration] resource.
  OrganizationConfiguration.reference(String urn)
    : super(
        'aws:securityhub/organizationConfiguration:OrganizationConfiguration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    autoEnable = registerOutput<bool>('autoEnable');
    autoEnableStandards = registerOutput<String>('autoEnableStandards');
    organizationConfiguration = registerOutput<OrganizationConfigurationOrganizationConfiguration>('organizationConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrganizationConfigurationOrganizationConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
  }
}
