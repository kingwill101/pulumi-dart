import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_custom_policy_rule_args.dart';

/// Manages a Config Organization Custom Policy Rule. More information about these rules can be found in the [Enabling AWS Config Rules Across all Accounts in Your Organization](https://docs.aws.amazon.com/config/latest/developerguide/config-rule-multi-account-deployment.html) and [AWS Config Managed Rules](https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html) documentation. For working with Organization Managed Rules (those invoking an AWS managed rule), see the `aws_config_organization_managed__rule` resource.
///
/// > **NOTE:** This resource must be created in the Organization master account and rules will include the master account unless its ID is added to the `excluded_accounts` argument.
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
/// const example = new aws.cfg.OrganizationCustomPolicyRule("example", {
///     name: "example_rule_name",
///     policyRuntime: "guard-2.x.x",
///     policyText: `let status = ['ACTIVE']
///
/// rule tableisactive when
///     resourceType == \\"AWS::DynamoDB::Table\\" {
///     configuration.tableStatus == %status
/// }
///
/// rule checkcompliance when
///     resourceType == \\"AWS::DynamoDB::Table\\"
///     tableisactive {
///         let pitr = supplementaryConfiguration.ContinuousBackupsDescription.pointInTimeRecoveryDescription.pointInTimeRecoveryStatus
///         %pitr == \\"ENABLED\\"
///     }
/// `,
///     resourceTypesScopes: ["AWS::DynamoDB::Table"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cfg.OrganizationCustomPolicyRule("example",
///     name="example_rule_name",
///     policy_runtime="guard-2.x.x",
///     policy_text="""let status = ['ACTIVE']
///
/// rule tableisactive when
///     resourceType == \"AWS::DynamoDB::Table\" {
///     configuration.tableStatus == %status
/// }
///
/// rule checkcompliance when
///     resourceType == \"AWS::DynamoDB::Table\"
///     tableisactive {
///         let pitr = supplementaryConfiguration.ContinuousBackupsDescription.pointInTimeRecoveryDescription.pointInTimeRecoveryStatus
///         %pitr == \"ENABLED\"
///     }
/// """,
///     resource_types_scopes=["AWS::DynamoDB::Table"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Cfg.OrganizationCustomPolicyRule("example", new()
///     {
///         Name = "example_rule_name",
///         PolicyRuntime = "guard-2.x.x",
///         PolicyText = @"let status = ['ACTIVE']
///
/// rule tableisactive when
///     resourceType == \""AWS::DynamoDB::Table\"" {
///     configuration.tableStatus == %status
/// }
///
/// rule checkcompliance when
///     resourceType == \""AWS::DynamoDB::Table\""
///     tableisactive {
///         let pitr = supplementaryConfiguration.ContinuousBackupsDescription.pointInTimeRecoveryDescription.pointInTimeRecoveryStatus
///         %pitr == \""ENABLED\""
///     }
/// ",
///         ResourceTypesScopes = new[]
///         {
///             "AWS::DynamoDB::Table",
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cfg.NewOrganizationCustomPolicyRule(ctx, "example", &cfg.OrganizationCustomPolicyRuleArgs{
/// 			Name:          pulumi.String("example_rule_name"),
/// 			PolicyRuntime: pulumi.String("guard-2.x.x"),
/// 			PolicyText: pulumi.String(`let status = ['ACTIVE']
///
/// rule tableisactive when
///     resourceType == \"AWS::DynamoDB::Table\" {
///     configuration.tableStatus == %status
/// }
///
/// rule checkcompliance when
///     resourceType == \"AWS::DynamoDB::Table\"
///     tableisactive {
///         let pitr = supplementaryConfiguration.ContinuousBackupsDescription.pointInTimeRecoveryDescription.pointInTimeRecoveryStatus
///         %pitr == \"ENABLED\"
///     }
/// `),
/// 			ResourceTypesScopes: pulumi.StringArray{
/// 				pulumi.String("AWS::DynamoDB::Table"),
/// 			},
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
/// import com.pulumi.aws.cfg.OrganizationCustomPolicyRule;
/// import com.pulumi.aws.cfg.OrganizationCustomPolicyRuleArgs;
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
///         var example = new OrganizationCustomPolicyRule("example", OrganizationCustomPolicyRuleArgs.builder()
///             .name("example_rule_name")
///             .policyRuntime("guard-2.x.x")
///             .policyText("""
/// let status = ['ACTIVE']
///
/// rule tableisactive when
///     resourceType == \"AWS::DynamoDB::Table\" {
///     configuration.tableStatus == %status
/// }
///
/// rule checkcompliance when
///     resourceType == \"AWS::DynamoDB::Table\"
///     tableisactive {
///         let pitr = supplementaryConfiguration.ContinuousBackupsDescription.pointInTimeRecoveryDescription.pointInTimeRecoveryStatus
///         %pitr == \"ENABLED\"
///     }
///             """)
///             .resourceTypesScopes("AWS::DynamoDB::Table")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cfg:OrganizationCustomPolicyRule
///     properties:
///       name: example_rule_name
///       policyRuntime: guard-2.x.x
///       policyText: |
///         let status = ['ACTIVE']
///
///         rule tableisactive when
///             resourceType == \"AWS::DynamoDB::Table\" {
///             configuration.tableStatus == %status
///         }
///
///         rule checkcompliance when
///             resourceType == \"AWS::DynamoDB::Table\"
///             tableisactive {
///                 let pitr = supplementaryConfiguration.ContinuousBackupsDescription.pointInTimeRecoveryDescription.pointInTimeRecoveryStatus
///                 %pitr == \"ENABLED\"
///             }
///       resourceTypesScopes:
///         - AWS::DynamoDB::Table
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import a Config Organization Custom Policy Rule using the `name` argument. For example:
///
/// ```sh
/// $ pulumi import aws:cfg/organizationCustomPolicyRule:OrganizationCustomPolicyRule example example_rule_name
/// ```
class OrganizationCustomPolicyRule extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the rule.
  late final pulumi.Output<String> arn;

  /// List of accounts that you can enable debug logging for. The list is null when debug logging is enabled for all accounts.
  late final pulumi.Output<List<String>?> debugLogDeliveryAccounts;

  /// Description of the rule.
  late final pulumi.Output<String?> description;

  /// List of AWS account identifiers to exclude from the rule.
  late final pulumi.Output<List<String>?> excludedAccounts;

  /// A string in JSON format that is passed to the AWS Config Rule Lambda Function.
  late final pulumi.Output<String?> inputParameters;

  /// Maximum frequency with which AWS Config runs evaluations for a rule, if the rule is triggered at a periodic frequency. Defaults to `TwentyFour_Hours` for periodic frequency triggered rules. Valid values: `One_Hour`, `Three_Hours`, `Six_Hours`, `Twelve_Hours`, or `TwentyFour_Hours`.
  late final pulumi.Output<String?> maximumExecutionFrequency;

  /// Name of the rule.
  late final pulumi.Output<String> name;

  /// Runtime system for policy rules.
  late final pulumi.Output<String> policyRuntime;

  /// Policy definition containing the rule logic.
  late final pulumi.Output<String> policyText;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Identifier of the AWS resource to evaluate.
  late final pulumi.Output<String?> resourceIdScope;

  /// List of types of AWS resources to evaluate.
  late final pulumi.Output<List<String>?> resourceTypesScopes;

  /// Tag key of AWS resources to evaluate.
  late final pulumi.Output<String?> tagKeyScope;

  /// Tag value of AWS resources to evaluate.
  late final pulumi.Output<String?> tagValueScope;

  /// List of notification types that trigger AWS Config to run an evaluation for the rule. Valid values: `ConfigurationItemChangeNotification`, `OversizedConfigurationItemChangeNotification`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<String>> triggerTypes;

  /// Creates a new [OrganizationCustomPolicyRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationCustomPolicyRule]. {@macro pulumi_cfg_organization_custom_policy_rule_organization_custom_policy_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationCustomPolicyRule(
    String name, {
    OrganizationCustomPolicyRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cfg/organizationCustomPolicyRule:OrganizationCustomPolicyRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.debugLogDeliveryAccounts =
        registerOutput<List<String>?>('debugLogDeliveryAccounts');
    this.description = registerOutput<String?>('description');
    this.excludedAccounts = registerOutput<List<String>?>('excludedAccounts');
    this.inputParameters = registerOutput<String?>('inputParameters');
    this.maximumExecutionFrequency =
        registerOutput<String?>('maximumExecutionFrequency');
    this.name = registerOutput<String>('name');
    this.policyRuntime = registerOutput<String>('policyRuntime');
    this.policyText = registerOutput<String>('policyText');
    this.region = registerOutput<String>('region');
    this.resourceIdScope = registerOutput<String?>('resourceIdScope');
    this.resourceTypesScopes =
        registerOutput<List<String>?>('resourceTypesScopes');
    this.tagKeyScope = registerOutput<String?>('tagKeyScope');
    this.tagValueScope = registerOutput<String?>('tagValueScope');
    this.triggerTypes = registerOutput<List<String>>('triggerTypes');
  }
}
