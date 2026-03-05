import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_aggregator_account_aggregation_source.dart';
import 'configuration_aggregator_args.dart';
import 'configuration_aggregator_organization_aggregation_source.dart';
import 'configuration_aggregator_state.dart';

/// Manages an AWS Config Configuration Aggregator
///
/// ## Example Usage
///
/// ### Account Based Aggregation
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const account = new aws.cfg.ConfigurationAggregator("account", {
///     name: "example",
///     accountAggregationSource: {
///         accountIds: ["123456789012"],
///         regions: ["us-west-2"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// account = aws.cfg.ConfigurationAggregator("account",
///     name="example",
///     account_aggregation_source={
///         "account_ids": ["123456789012"],
///         "regions": ["us-west-2"],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var account = new Aws.Cfg.ConfigurationAggregator("account", new()
///     {
///         Name = "example",
///         AccountAggregationSource = new Aws.Cfg.Inputs.ConfigurationAggregatorAccountAggregationSourceArgs
///         {
///             AccountIds = new[]
///             {
///                 "123456789012",
///             },
///             Regions = new[]
///             {
///                 "us-west-2",
///             },
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
/// 		_, err := cfg.NewConfigurationAggregator(ctx, "account", &cfg.ConfigurationAggregatorArgs{
/// 			Name: pulumi.String("example"),
/// 			AccountAggregationSource: &cfg.ConfigurationAggregatorAccountAggregationSourceArgs{
/// 				AccountIds: pulumi.StringArray{
/// 					pulumi.String("123456789012"),
/// 				},
/// 				Regions: pulumi.StringArray{
/// 					pulumi.String("us-west-2"),
/// 				},
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
/// import com.pulumi.aws.cfg.ConfigurationAggregator;
/// import com.pulumi.aws.cfg.ConfigurationAggregatorArgs;
/// import com.pulumi.aws.cfg.inputs.ConfigurationAggregatorAccountAggregationSourceArgs;
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
///         var account = new ConfigurationAggregator("account", ConfigurationAggregatorArgs.builder()
///             .name("example")
///             .accountAggregationSource(ConfigurationAggregatorAccountAggregationSourceArgs.builder()
///                 .accountIds("123456789012")
///                 .regions("us-west-2")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   account:
///     type: aws:cfg:ConfigurationAggregator
///     properties:
///       name: example
///       accountAggregationSource:
///         accountIds:
///           - '123456789012'
///         regions:
///           - us-west-2
/// ```
///
///
/// ### Organization Based Aggregation
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const assumeRole = aws.iam.getPolicyDocument({
///     statements: [{
///         effect: "Allow",
///         principals: [{
///             type: "Service",
///             identifiers: ["config.amazonaws.com"],
///         }],
///         actions: ["sts:AssumeRole"],
///     }],
/// });
/// const organizationRole = new aws.iam.Role("organization", {
///     name: "example",
///     assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const organizationRolePolicyAttachment = new aws.iam.RolePolicyAttachment("organization", {
///     role: organizationRole.name,
///     policyArn: "arn:aws:iam::aws:policy/service-role/AWSConfigRoleForOrganizations",
/// });
/// const organization = new aws.cfg.ConfigurationAggregator("organization", {
///     name: "example",
///     organizationAggregationSource: {
///         allRegions: true,
///         roleArn: organizationRole.arn,
///     },
/// }, {
///     dependsOn: [organizationRolePolicyAttachment],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// assume_role = aws.iam.get_policy_document(statements=[{
///     "effect": "Allow",
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["config.amazonaws.com"],
///     }],
///     "actions": ["sts:AssumeRole"],
/// }])
/// organization_role = aws.iam.Role("organization",
///     name="example",
///     assume_role_policy=assume_role.json)
/// organization_role_policy_attachment = aws.iam.RolePolicyAttachment("organization",
///     role=organization_role.name,
///     policy_arn="arn:aws:iam::aws:policy/service-role/AWSConfigRoleForOrganizations")
/// organization = aws.cfg.ConfigurationAggregator("organization",
///     name="example",
///     organization_aggregation_source={
///         "all_regions": True,
///         "role_arn": organization_role.arn,
///     },
///     opts = pulumi.ResourceOptions(depends_on=[organization_role_policy_attachment]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var assumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "config.amazonaws.com",
///                         },
///                     },
///                 },
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
///                 },
///             },
///         },
///     });
///
///     var organizationRole = new Aws.Iam.Role("organization", new()
///     {
///         Name = "example",
///         AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var organizationRolePolicyAttachment = new Aws.Iam.RolePolicyAttachment("organization", new()
///     {
///         Role = organizationRole.Name,
///         PolicyArn = "arn:aws:iam::aws:policy/service-role/AWSConfigRoleForOrganizations",
///     });
///
///     var organization = new Aws.Cfg.ConfigurationAggregator("organization", new()
///     {
///         Name = "example",
///         OrganizationAggregationSource = new Aws.Cfg.Inputs.ConfigurationAggregatorOrganizationAggregationSourceArgs
///         {
///             AllRegions = true,
///             RoleArn = organizationRole.Arn,
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             organizationRolePolicyAttachment,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		assumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"config.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 					Actions: []string{
/// 						"sts:AssumeRole",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		organizationRole, err := iam.NewRole(ctx, "organization", &iam.RoleArgs{
/// 			Name:             pulumi.String("example"),
/// 			AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		organizationRolePolicyAttachment, err := iam.NewRolePolicyAttachment(ctx, "organization", &iam.RolePolicyAttachmentArgs{
/// 			Role:      organizationRole.Name,
/// 			PolicyArn: pulumi.String("arn:aws:iam::aws:policy/service-role/AWSConfigRoleForOrganizations"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cfg.NewConfigurationAggregator(ctx, "organization", &cfg.ConfigurationAggregatorArgs{
/// 			Name: pulumi.String("example"),
/// 			OrganizationAggregationSource: &cfg.ConfigurationAggregatorOrganizationAggregationSourceArgs{
/// 				AllRegions: pulumi.Bool(true),
/// 				RoleArn:    organizationRole.Arn,
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			organizationRolePolicyAttachment,
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
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.RolePolicyAttachment;
/// import com.pulumi.aws.iam.RolePolicyAttachmentArgs;
/// import com.pulumi.aws.cfg.ConfigurationAggregator;
/// import com.pulumi.aws.cfg.ConfigurationAggregatorArgs;
/// import com.pulumi.aws.cfg.inputs.ConfigurationAggregatorOrganizationAggregationSourceArgs;
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
///         final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("config.amazonaws.com")
///                     .build())
///                 .actions("sts:AssumeRole")
///                 .build())
///             .build());
///
///         var organizationRole = new Role("organizationRole", RoleArgs.builder()
///             .name("example")
///             .assumeRolePolicy(assumeRole.json())
///             .build());
///
///         var organizationRolePolicyAttachment = new RolePolicyAttachment("organizationRolePolicyAttachment", RolePolicyAttachmentArgs.builder()
///             .role(organizationRole.name())
///             .policyArn("arn:aws:iam::aws:policy/service-role/AWSConfigRoleForOrganizations")
///             .build());
///
///         var organization = new ConfigurationAggregator("organization", ConfigurationAggregatorArgs.builder()
///             .name("example")
///             .organizationAggregationSource(ConfigurationAggregatorOrganizationAggregationSourceArgs.builder()
///                 .allRegions(true)
///                 .roleArn(organizationRole.arn())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(organizationRolePolicyAttachment)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   organization:
///     type: aws:cfg:ConfigurationAggregator
///     properties:
///       name: example
///       organizationAggregationSource:
///         allRegions: true
///         roleArn: ${organizationRole.arn}
///     options:
///       dependsOn:
///         - ${organizationRolePolicyAttachment}
///   organizationRole:
///     type: aws:iam:Role
///     name: organization
///     properties:
///       name: example
///       assumeRolePolicy: ${assumeRole.json}
///   organizationRolePolicyAttachment:
///     type: aws:iam:RolePolicyAttachment
///     name: organization
///     properties:
///       role: ${organizationRole.name}
///       policyArn: arn:aws:iam::aws:policy/service-role/AWSConfigRoleForOrganizations
/// variables:
///   assumeRole:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             principals:
///               - type: Service
///                 identifiers:
///                   - config.amazonaws.com
///             actions:
///               - sts:AssumeRole
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Configuration Aggregators using the name. For example:
///
/// ```sh
/// $ pulumi import aws:cfg/configurationAggregator:ConfigurationAggregator example foo
/// ```
class ConfigurationAggregator extends pulumi.CustomResource {
  /// The account(s) to aggregate config data from as documented below.
  late final pulumi.Output<ConfigurationAggregatorAccountAggregationSource?>
  accountAggregationSource;

  /// The ARN of the aggregator
  late final pulumi.Output<String> arn;

  /// The name of the configuration aggregator.
  late final pulumi.Output<String> name;

  /// The organization to aggregate config data from as documented below.
  late final pulumi.Output<
    ConfigurationAggregatorOrganizationAggregationSource?
  >
  organizationAggregationSource;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// Either `account_aggregation_source` or `organization_aggregation_source` must be specified.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [ConfigurationAggregator].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConfigurationAggregator]. {@macro pulumi_cfg_configuration_aggregator_configuration_aggregator_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConfigurationAggregator(
    String name, {
    ConfigurationAggregatorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:cfg/configurationAggregator:ConfigurationAggregator',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountAggregationSource =
        registerOutput<ConfigurationAggregatorAccountAggregationSource?>(
          'accountAggregationSource',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ConfigurationAggregatorAccountAggregationSource.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    organizationAggregationSource =
        registerOutput<ConfigurationAggregatorOrganizationAggregationSource?>(
          'organizationAggregationSource',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ConfigurationAggregatorOrganizationAggregationSource.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [ConfigurationAggregator] resource's state with the given [name] and [id].
  static ConfigurationAggregator get(
    String name,
    pulumi.Input<String> id, {
    ConfigurationAggregatorState? state,
  }) {
    return ConfigurationAggregator._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ConfigurationAggregator._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:cfg/configurationAggregator:ConfigurationAggregator',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountAggregationSource =
        registerOutput<ConfigurationAggregatorAccountAggregationSource?>(
          'accountAggregationSource',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ConfigurationAggregatorAccountAggregationSource.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    organizationAggregationSource =
        registerOutput<ConfigurationAggregatorOrganizationAggregationSource?>(
          'organizationAggregationSource',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ConfigurationAggregatorOrganizationAggregationSource.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
