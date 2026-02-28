import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_custom_rule_args.dart';

/// Manages a Config Organization Custom Rule. More information about these rules can be found in the [Enabling AWS Config Rules Across all Accounts in Your Organization](https://docs.aws.amazon.com/config/latest/developerguide/config-rule-multi-account-deployment.html) and [AWS Config Managed Rules](https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html) documentation. For working with Organization Managed Rules (those invoking an AWS managed rule), see the `aws_config_organization_managed__rule` resource.
///
/// > **NOTE:** This resource must be created in the Organization master account and rules will include the master account unless its ID is added to the `excluded_accounts` argument.
///
/// > **NOTE:** The proper Lambda permission to allow the AWS Config service invoke the Lambda Function must be in place before the rule will successfully create or update. See also the `aws.lambda.Permission` resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambda.Permission("example", {
///     action: "lambda:InvokeFunction",
///     "function": exampleAwsLambdaFunction.arn,
///     principal: "config.amazonaws.com",
///     statementId: "AllowExecutionFromConfig",
/// });
/// const exampleOrganization = new aws.organizations.Organization("example", {
///     awsServiceAccessPrincipals: ["config-multiaccountsetup.amazonaws.com"],
///     featureSet: "ALL",
/// });
/// const exampleOrganizationCustomRule = new aws.cfg.OrganizationCustomRule("example", {
///     lambdaFunctionArn: exampleAwsLambdaFunction.arn,
///     name: "example",
///     triggerTypes: ["ConfigurationItemChangeNotification"],
/// }, {
///     dependsOn: [
///         example,
///         exampleOrganization,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda_.Permission("example",
///     action="lambda:InvokeFunction",
///     function=example_aws_lambda_function["arn"],
///     principal="config.amazonaws.com",
///     statement_id="AllowExecutionFromConfig")
/// example_organization = aws.organizations.Organization("example",
///     aws_service_access_principals=["config-multiaccountsetup.amazonaws.com"],
///     feature_set="ALL")
/// example_organization_custom_rule = aws.cfg.OrganizationCustomRule("example",
///     lambda_function_arn=example_aws_lambda_function["arn"],
///     name="example",
///     trigger_types=["ConfigurationItemChangeNotification"],
///     opts = pulumi.ResourceOptions(depends_on=[
///             example,
///             example_organization,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Lambda.Permission("example", new()
///     {
///         Action = "lambda:InvokeFunction",
///         Function = exampleAwsLambdaFunction.Arn,
///         Principal = "config.amazonaws.com",
///         StatementId = "AllowExecutionFromConfig",
///     });
///
///     var exampleOrganization = new Aws.Organizations.Organization("example", new()
///     {
///         AwsServiceAccessPrincipals = new[]
///         {
///             "config-multiaccountsetup.amazonaws.com",
///         },
///         FeatureSet = "ALL",
///     });
///
///     var exampleOrganizationCustomRule = new Aws.Cfg.OrganizationCustomRule("example", new()
///     {
///         LambdaFunctionArn = exampleAwsLambdaFunction.Arn,
///         Name = "example",
///         TriggerTypes = new[]
///         {
///             "ConfigurationItemChangeNotification",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             example,
///             exampleOrganization,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := lambda.NewPermission(ctx, "example", &lambda.PermissionArgs{
/// 			Action:      pulumi.String("lambda:InvokeFunction"),
/// 			Function:    pulumi.Any(exampleAwsLambdaFunction.Arn),
/// 			Principal:   pulumi.String("config.amazonaws.com"),
/// 			StatementId: pulumi.String("AllowExecutionFromConfig"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleOrganization, err := organizations.NewOrganization(ctx, "example", &organizations.OrganizationArgs{
/// 			AwsServiceAccessPrincipals: pulumi.StringArray{
/// 				pulumi.String("config-multiaccountsetup.amazonaws.com"),
/// 			},
/// 			FeatureSet: pulumi.String("ALL"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cfg.NewOrganizationCustomRule(ctx, "example", &cfg.OrganizationCustomRuleArgs{
/// 			LambdaFunctionArn: pulumi.Any(exampleAwsLambdaFunction.Arn),
/// 			Name:              pulumi.String("example"),
/// 			TriggerTypes: pulumi.StringArray{
/// 				pulumi.String("ConfigurationItemChangeNotification"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			example,
/// 			exampleOrganization,
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
/// import com.pulumi.aws.lambda.Permission;
/// import com.pulumi.aws.lambda.PermissionArgs;
/// import com.pulumi.aws.organizations.Organization;
/// import com.pulumi.aws.organizations.OrganizationArgs;
/// import com.pulumi.aws.cfg.OrganizationCustomRule;
/// import com.pulumi.aws.cfg.OrganizationCustomRuleArgs;
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
///         var example = new Permission("example", PermissionArgs.builder()
///             .action("lambda:InvokeFunction")
///             .function(exampleAwsLambdaFunction.arn())
///             .principal("config.amazonaws.com")
///             .statementId("AllowExecutionFromConfig")
///             .build());
///
///         var exampleOrganization = new Organization("exampleOrganization", OrganizationArgs.builder()
///             .awsServiceAccessPrincipals("config-multiaccountsetup.amazonaws.com")
///             .featureSet("ALL")
///             .build());
///
///         var exampleOrganizationCustomRule = new OrganizationCustomRule("exampleOrganizationCustomRule", OrganizationCustomRuleArgs.builder()
///             .lambdaFunctionArn(exampleAwsLambdaFunction.arn())
///             .name("example")
///             .triggerTypes("ConfigurationItemChangeNotification")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     example,
///                     exampleOrganization)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lambda:Permission
///     properties:
///       action: lambda:InvokeFunction
///       function: ${exampleAwsLambdaFunction.arn}
///       principal: config.amazonaws.com
///       statementId: AllowExecutionFromConfig
///   exampleOrganization:
///     type: aws:organizations:Organization
///     name: example
///     properties:
///       awsServiceAccessPrincipals:
///         - config-multiaccountsetup.amazonaws.com
///       featureSet: ALL
///   exampleOrganizationCustomRule:
///     type: aws:cfg:OrganizationCustomRule
///     name: example
///     properties:
///       lambdaFunctionArn: ${exampleAwsLambdaFunction.arn}
///       name: example
///       triggerTypes:
///         - ConfigurationItemChangeNotification
///     options:
///       dependsOn:
///         - ${example}
///         - ${exampleOrganization}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Config Organization Custom Rules using the name. For example:
///
/// ```sh
/// $ pulumi import aws:cfg/organizationCustomRule:OrganizationCustomRule example example
/// ```
class OrganizationCustomRule extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the rule
  late final pulumi.Output<String> arn;

  /// Description of the rule
  late final pulumi.Output<String?> description;

  /// List of AWS account identifiers to exclude from the rule
  late final pulumi.Output<List<String>?> excludedAccounts;

  /// A string in JSON format that is passed to the AWS Config Rule Lambda Function
  late final pulumi.Output<String?> inputParameters;

  /// Amazon Resource Name (ARN) of the rule Lambda Function
  late final pulumi.Output<String> lambdaFunctionArn;

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

  /// Tag key of AWS resources to evaluate
  late final pulumi.Output<String?> tagKeyScope;

  /// Tag value of AWS resources to evaluate
  late final pulumi.Output<String?> tagValueScope;

  /// List of notification types that trigger AWS Config to run an evaluation for the rule. Valid values: `ConfigurationItemChangeNotification`, `OversizedConfigurationItemChangeNotification`, and `ScheduledNotification`
  late final pulumi.Output<List<String>> triggerTypes;

  /// Creates a new [OrganizationCustomRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationCustomRule]. {@macro pulumi_cfg_organization_custom_rule_organization_custom_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationCustomRule(
    String name, {
    OrganizationCustomRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cfg/organizationCustomRule:OrganizationCustomRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.excludedAccounts = registerOutput<List<String>?>('excludedAccounts');
    this.inputParameters = registerOutput<String?>('inputParameters');
    this.lambdaFunctionArn = registerOutput<String>('lambdaFunctionArn');
    this.maximumExecutionFrequency =
        registerOutput<String?>('maximumExecutionFrequency');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.resourceIdScope = registerOutput<String?>('resourceIdScope');
    this.resourceTypesScopes =
        registerOutput<List<String>?>('resourceTypesScopes');
    this.tagKeyScope = registerOutput<String?>('tagKeyScope');
    this.tagValueScope = registerOutput<String?>('tagValueScope');
    this.triggerTypes = registerOutput<List<String>>('triggerTypes');
  }
}
