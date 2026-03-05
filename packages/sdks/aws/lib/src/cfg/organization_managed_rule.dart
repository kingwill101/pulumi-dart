import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_managed_rule_args.dart';
import 'organization_managed_rule_state.dart';

/// Manages a Config Organization Managed Rule. More information about these rules can be found in the [Enabling AWS Config Rules Across all Accounts in Your Organization](https://docs.aws.amazon.com/config/latest/developerguide/config-rule-multi-account-deployment.html) and [AWS Config Managed Rules](https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html) documentation. For working with Organization Custom Rules (those invoking a custom Lambda Function), see the `aws.cfg.OrganizationCustomRule` resource.
///
/// &gt; **NOTE:** This resource must be created in the Organization master account and rules will include the master account unless its ID is added to the `excluded_accounts` argument.
///
/// &gt; **NOTE:** Every Organization account except those configured in the `excluded_accounts` argument must have a Configuration Recorder with proper IAM permissions before the rule will successfully create or update. See also the `aws.cfg.Recorder` resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.organizations.Organization("example", {
///     awsServiceAccessPrincipals: ["config-multiaccountsetup.amazonaws.com"],
///     featureSet: "ALL",
/// });
/// const exampleOrganizationManagedRule = new aws.cfg.OrganizationManagedRule("example", {
///     name: "example",
///     ruleIdentifier: "IAM_PASSWORD_POLICY",
/// }, {
///     dependsOn: [example],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.organizations.Organization("example",
///     aws_service_access_principals=["config-multiaccountsetup.amazonaws.com"],
///     feature_set="ALL")
/// example_organization_managed_rule = aws.cfg.OrganizationManagedRule("example",
///     name="example",
///     rule_identifier="IAM_PASSWORD_POLICY",
///     opts = pulumi.ResourceOptions(depends_on=[example]))
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
///             "config-multiaccountsetup.amazonaws.com",
///         },
///         FeatureSet = "ALL",
///     });
///
///     var exampleOrganizationManagedRule = new Aws.Cfg.OrganizationManagedRule("example", new()
///     {
///         Name = "example",
///         RuleIdentifier = "IAM_PASSWORD_POLICY",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cfg"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := organizations.NewOrganization(ctx, "example", &organizations.OrganizationArgs{
/// 			AwsServiceAccessPrincipals: pulumi.StringArray{
/// 				pulumi.String("config-multiaccountsetup.amazonaws.com"),
/// 			},
/// 			FeatureSet: pulumi.String("ALL"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cfg.NewOrganizationManagedRule(ctx, "example", &cfg.OrganizationManagedRuleArgs{
/// 			Name:           pulumi.String("example"),
/// 			RuleIdentifier: pulumi.String("IAM_PASSWORD_POLICY"),
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
/// import com.pulumi.aws.cfg.OrganizationManagedRule;
/// import com.pulumi.aws.cfg.OrganizationManagedRuleArgs;
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
///             .awsServiceAccessPrincipals("config-multiaccountsetup.amazonaws.com")
///             .featureSet("ALL")
///             .build());
///
///         var exampleOrganizationManagedRule = new OrganizationManagedRule("exampleOrganizationManagedRule", OrganizationManagedRuleArgs.builder()
///             .name("example")
///             .ruleIdentifier("IAM_PASSWORD_POLICY")
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
///         - config-multiaccountsetup.amazonaws.com
///       featureSet: ALL
///   exampleOrganizationManagedRule:
///     type: aws:cfg:OrganizationManagedRule
///     name: example
///     properties:
///       name: example
///       ruleIdentifier: IAM_PASSWORD_POLICY
///     options:
///       dependsOn:
///         - ${example}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Config Organization Managed Rules using the name. For example:
///
/// ```sh
/// $ pulumi import aws:cfg/organizationManagedRule:OrganizationManagedRule example example
/// ```
class OrganizationManagedRule extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the rule
  late final pulumi.Output<String> arn;
  /// Description of the rule
  late final pulumi.Output<String?> description;
  /// List of AWS account identifiers to exclude from the rule
  late final pulumi.Output<List<String>?> excludedAccounts;
  /// A string in JSON format that is passed to the AWS Config Rule Lambda Function
  late final pulumi.Output<String?> inputParameters;
  /// The maximum frequency with which AWS Config runs evaluations for a rule, if the rule is triggered at a periodic frequency. Defaults to `TwentyFour_Hours` for periodic frequency triggered rules. Valid values: `One_Hour`, `Three_Hours`, `Six_Hours`, `Twelve_Hours`, or `TwentyFour_Hours`.
  late final pulumi.Output<String?> maximumExecutionFrequency;
  /// The name of the rule
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Identifier of the AWS resource to evaluate
  late final pulumi.Output<String?> resourceIdScope;
  /// List of types of AWS resources to evaluate
  late final pulumi.Output<List<String>?> resourceTypesScopes;
  /// Identifier of an available AWS Config Managed Rule to call. For available values, see the [List of AWS Config Managed Rules](https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html) documentation
  late final pulumi.Output<String> ruleIdentifier;
  /// Tag key of AWS resources to evaluate
  late final pulumi.Output<String?> tagKeyScope;
  /// Tag value of AWS resources to evaluate
  late final pulumi.Output<String?> tagValueScope;

  /// Creates a new [OrganizationManagedRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationManagedRule]. {@macro pulumi_cfg_organization_managed_rule_organization_managed_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationManagedRule(
    String name, {
    OrganizationManagedRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cfg/organizationManagedRule:OrganizationManagedRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    excludedAccounts = registerOutput<List<String>?>('excludedAccounts');
    inputParameters = registerOutput<String?>('inputParameters');
    maximumExecutionFrequency = registerOutput<String?>('maximumExecutionFrequency');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    resourceIdScope = registerOutput<String?>('resourceIdScope');
    resourceTypesScopes = registerOutput<List<String>?>('resourceTypesScopes');
    ruleIdentifier = registerOutput<String>('ruleIdentifier');
    tagKeyScope = registerOutput<String?>('tagKeyScope');
    tagValueScope = registerOutput<String?>('tagValueScope');
  }

  /// Gets an existing [OrganizationManagedRule] resource's state with the given [name] and [id].
  static OrganizationManagedRule get(
    String name,
    pulumi.Input<String> id, {
    OrganizationManagedRuleState? state,
  }) {
    return OrganizationManagedRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  OrganizationManagedRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cfg/organizationManagedRule:OrganizationManagedRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    excludedAccounts = registerOutput<List<String>?>('excludedAccounts');
    inputParameters = registerOutput<String?>('inputParameters');
    maximumExecutionFrequency = registerOutput<String?>('maximumExecutionFrequency');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    resourceIdScope = registerOutput<String?>('resourceIdScope');
    resourceTypesScopes = registerOutput<List<String>?>('resourceTypesScopes');
    ruleIdentifier = registerOutput<String>('ruleIdentifier');
    tagKeyScope = registerOutput<String?>('tagKeyScope');
    tagValueScope = registerOutput<String?>('tagValueScope');
  }
}
