import 'package:pulumi/pulumi.dart' as pulumi;
import 'extension_association_args.dart';
import 'extension_association_state.dart';

/// Associates an AppConfig Extension with a Resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testTopic = new aws.sns.Topic("test", {name: "test"});
/// const test = aws.iam.getPolicyDocument({
///     statements: [{
///         actions: ["sts:AssumeRole"],
///         principals: [{
///             type: "Service",
///             identifiers: ["appconfig.amazonaws.com"],
///         }],
///     }],
/// });
/// const testRole = new aws.iam.Role("test", {
///     name: "test",
///     assumeRolePolicy: test.then(test => test.json),
/// });
/// const testExtension = new aws.appconfig.Extension("test", {
///     name: "test",
///     description: "test description",
///     actionPoints: [{
///         point: "ON_DEPLOYMENT_COMPLETE",
///         actions: [{
///             name: "test",
///             roleArn: testRole.arn,
///             uri: testTopic.arn,
///         }],
///     }],
///     tags: {
///         Type: "AppConfig Extension",
///     },
/// });
/// const testApplication = new aws.appconfig.Application("test", {name: "test"});
/// const testExtensionAssociation = new aws.appconfig.ExtensionAssociation("test", {
///     extensionArn: testExtension.arn,
///     resourceArn: testApplication.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_topic = aws.sns.Topic("test", name="test")
/// test = aws.iam.get_policy_document(statements=[{
///     "actions": ["sts:AssumeRole"],
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["appconfig.amazonaws.com"],
///     }],
/// }])
/// test_role = aws.iam.Role("test",
///     name="test",
///     assume_role_policy=test.json)
/// test_extension = aws.appconfig.Extension("test",
///     name="test",
///     description="test description",
///     action_points=[{
///         "point": "ON_DEPLOYMENT_COMPLETE",
///         "actions": [{
///             "name": "test",
///             "role_arn": test_role.arn,
///             "uri": test_topic.arn,
///         }],
///     }],
///     tags={
///         "Type": "AppConfig Extension",
///     })
/// test_application = aws.appconfig.Application("test", name="test")
/// test_extension_association = aws.appconfig.ExtensionAssociation("test",
///     extension_arn=test_extension.arn,
///     resource_arn=test_application.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testTopic = new Aws.Sns.Topic("test", new()
///     {
///         Name = "test",
///     });
///
///     var test = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
///                 },
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "appconfig.amazonaws.com",
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
///     var testRole = new Aws.Iam.Role("test", new()
///     {
///         Name = "test",
///         AssumeRolePolicy = test.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var testExtension = new Aws.AppConfig.Extension("test", new()
///     {
///         Name = "test",
///         Description = "test description",
///         ActionPoints = new[]
///         {
///             new Aws.AppConfig.Inputs.ExtensionActionPointArgs
///             {
///                 Point = "ON_DEPLOYMENT_COMPLETE",
///                 Actions = new[]
///                 {
///                     new Aws.AppConfig.Inputs.ExtensionActionPointActionArgs
///                     {
///                         Name = "test",
///                         RoleArn = testRole.Arn,
///                         Uri = testTopic.Arn,
///                     },
///                 },
///             },
///         },
///         Tags =
///         {
///             { "Type", "AppConfig Extension" },
///         },
///     });
///
///     var testApplication = new Aws.AppConfig.Application("test", new()
///     {
///         Name = "test",
///     });
///
///     var testExtensionAssociation = new Aws.AppConfig.ExtensionAssociation("test", new()
///     {
///         ExtensionArn = testExtension.Arn,
///         ResourceArn = testApplication.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appconfig"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		testTopic, err := sns.NewTopic(ctx, "test", &sns.TopicArgs{
/// 			Name: pulumi.String("test"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		test, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Actions: []string{
/// 						"sts:AssumeRole",
/// 					},
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"appconfig.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testRole, err := iam.NewRole(ctx, "test", &iam.RoleArgs{
/// 			Name:             pulumi.String("test"),
/// 			AssumeRolePolicy: pulumi.String(test.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testExtension, err := appconfig.NewExtension(ctx, "test", &appconfig.ExtensionArgs{
/// 			Name:        pulumi.String("test"),
/// 			Description: pulumi.String("test description"),
/// 			ActionPoints: appconfig.ExtensionActionPointArray{
/// 				&appconfig.ExtensionActionPointArgs{
/// 					Point: pulumi.String("ON_DEPLOYMENT_COMPLETE"),
/// 					Actions: appconfig.ExtensionActionPointActionArray{
/// 						&appconfig.ExtensionActionPointActionArgs{
/// 							Name:    pulumi.String("test"),
/// 							RoleArn: testRole.Arn,
/// 							Uri:     testTopic.Arn,
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Type": pulumi.String("AppConfig Extension"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testApplication, err := appconfig.NewApplication(ctx, "test", &appconfig.ApplicationArgs{
/// 			Name: pulumi.String("test"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appconfig.NewExtensionAssociation(ctx, "test", &appconfig.ExtensionAssociationArgs{
/// 			ExtensionArn: testExtension.Arn,
/// 			ResourceArn:  testApplication.Arn,
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
/// import com.pulumi.aws.sns.Topic;
/// import com.pulumi.aws.sns.TopicArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.appconfig.Extension;
/// import com.pulumi.aws.appconfig.ExtensionArgs;
/// import com.pulumi.aws.appconfig.inputs.ExtensionActionPointArgs;
/// import com.pulumi.aws.appconfig.Application;
/// import com.pulumi.aws.appconfig.ApplicationArgs;
/// import com.pulumi.aws.appconfig.ExtensionAssociation;
/// import com.pulumi.aws.appconfig.ExtensionAssociationArgs;
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
///         var testTopic = new Topic("testTopic", TopicArgs.builder()
///             .name("test")
///             .build());
///
///         final var test = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .actions("sts:AssumeRole")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("appconfig.amazonaws.com")
///                     .build())
///                 .build())
///             .build());
///
///         var testRole = new Role("testRole", RoleArgs.builder()
///             .name("test")
///             .assumeRolePolicy(test.json())
///             .build());
///
///         var testExtension = new Extension("testExtension", ExtensionArgs.builder()
///             .name("test")
///             .description("test description")
///             .actionPoints(ExtensionActionPointArgs.builder()
///                 .point("ON_DEPLOYMENT_COMPLETE")
///                 .actions(ExtensionActionPointActionArgs.builder()
///                     .name("test")
///                     .roleArn(testRole.arn())
///                     .uri(testTopic.arn())
///                     .build())
///                 .build())
///             .tags(Map.of("Type", "AppConfig Extension"))
///             .build());
///
///         var testApplication = new Application("testApplication", ApplicationArgs.builder()
///             .name("test")
///             .build());
///
///         var testExtensionAssociation = new ExtensionAssociation("testExtensionAssociation", ExtensionAssociationArgs.builder()
///             .extensionArn(testExtension.arn())
///             .resourceArn(testApplication.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testTopic:
///     type: aws:sns:Topic
///     name: test
///     properties:
///       name: test
///   testRole:
///     type: aws:iam:Role
///     name: test
///     properties:
///       name: test
///       assumeRolePolicy: ${test.json}
///   testExtension:
///     type: aws:appconfig:Extension
///     name: test
///     properties:
///       name: test
///       description: test description
///       actionPoints:
///         - point: ON_DEPLOYMENT_COMPLETE
///           actions:
///             - name: test
///               roleArn: ${testRole.arn}
///               uri: ${testTopic.arn}
///       tags:
///         Type: AppConfig Extension
///   testApplication:
///     type: aws:appconfig:Application
///     name: test
///     properties:
///       name: test
///   testExtensionAssociation:
///     type: aws:appconfig:ExtensionAssociation
///     name: test
///     properties:
///       extensionArn: ${testExtension.arn}
///       resourceArn: ${testApplication.arn}
/// variables:
///   test:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - actions:
///               - sts:AssumeRole
///             principals:
///               - type: Service
///                 identifiers:
///                   - appconfig.amazonaws.com
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import AppConfig Extension Associations using their extension association ID. For example:
///
/// ```sh
/// $ pulumi import aws:appconfig/extensionAssociation:ExtensionAssociation example 71rxuzt
/// ```
class ExtensionAssociation extends pulumi.CustomResource {
  /// ARN of the AppConfig Extension Association.
  late final pulumi.Output<String> arn;
  /// The ARN of the extension defined in the association.
  late final pulumi.Output<String> extensionArn;
  /// The version number for the extension defined in the association.
  late final pulumi.Output<int> extensionVersion;
  /// The parameter names and values defined for the association.
  late final pulumi.Output<Map<String, String>?> parameters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The ARN of the application, configuration profile, or environment to associate with the extension.
  late final pulumi.Output<String> resourceArn;

  /// Creates a new [ExtensionAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ExtensionAssociation]. {@macro pulumi_appconfig_extension_association_extension_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ExtensionAssociation(
    String name, {
    ExtensionAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appconfig/extensionAssociation:ExtensionAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    extensionArn = registerOutput<String>('extensionArn');
    extensionVersion = registerOutput<int>('extensionVersion');
    parameters = registerOutput<Map<String, String>?>('parameters');
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
  }

  /// Gets an existing [ExtensionAssociation] resource's state with the given [name] and [id].
  static ExtensionAssociation get(
    String name,
    pulumi.Input<String> id, {
    ExtensionAssociationState? state,
  }) {
    return ExtensionAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ExtensionAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appconfig/extensionAssociation:ExtensionAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    extensionArn = registerOutput<String>('extensionArn');
    extensionVersion = registerOutput<int>('extensionVersion');
    parameters = registerOutput<Map<String, String>?>('parameters');
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
  }
}
