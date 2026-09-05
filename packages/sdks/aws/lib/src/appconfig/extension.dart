import 'package:pulumi/pulumi.dart' as pulumi;
import 'extension_action_point.dart';
import 'extension_args.dart';
import 'extension_parameter.dart';
import 'extension_state.dart';

/// Provides an AppConfig Extension resource.
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
///         principals: [{
///             type: "Service",
///             identifiers: ["appconfig.amazonaws.com"],
///         }],
///         actions: ["sts:AssumeRole"],
///     }],
/// });
/// const testRole = new aws.iam.Role("test", {
///     name: "test",
///     assumeRolePolicy: test.then(test => test.json),
/// });
/// const testExtension = new aws.appconfig.Extension("test", {
///     actionPoints: [{
///         actions: [{
///             name: "test",
///             roleArn: testRole.arn,
///             uri: testTopic.arn,
///         }],
///         point: "ON_DEPLOYMENT_COMPLETE",
///     }],
///     name: "test",
///     description: "test description",
///     tags: {
///         Type: "AppConfig Extension",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_topic = aws.sns.Topic("test", name="test")
/// test = aws.iam.get_policy_document(statements=[{
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["appconfig.amazonaws.com"],
///     }],
///     "actions": ["sts:AssumeRole"],
/// }])
/// test_role = aws.iam.Role("test",
///     name="test",
///     assume_role_policy=test.json)
/// test_extension = aws.appconfig.Extension("test",
///     action_points=[{
///         "actions": [{
///             "name": "test",
///             "role_arn": test_role.arn,
///             "uri": test_topic.arn,
///         }],
///         "point": "ON_DEPLOYMENT_COMPLETE",
///     }],
///     name="test",
///     description="test description",
///     tags={
///         "Type": "AppConfig Extension",
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
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
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
///         ActionPoints = new[]
///         {
///             new Aws.AppConfig.Inputs.ExtensionActionPointArgs
///             {
///                 Actions = new[]
///                 {
///                     new Aws.AppConfig.Inputs.ExtensionActionPointActionArgs
///                     {
///                         Name = "test",
///                         RoleArn = testRole.Arn,
///                         Uri = testTopic.Arn,
///                     },
///                 },
///                 Point = "ON_DEPLOYMENT_COMPLETE",
///             },
///         },
///         Name = "test",
///         Description = "test description",
///         Tags =
///         {
///             { "Type", "AppConfig Extension" },
///         },
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
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"appconfig.amazonaws.com",
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
/// 		testRole, err := iam.NewRole(ctx, "test", &iam.RoleArgs{
/// 			Name:             pulumi.String("test"),
/// 			AssumeRolePolicy: pulumi.String(test.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appconfig.NewExtension(ctx, "test", &appconfig.ExtensionArgs{
/// 			ActionPoints: appconfig.ExtensionActionPointArray{
/// 				&appconfig.ExtensionActionPointArgs{
/// 					Actions: appconfig.ExtensionActionPointActionArray{
/// 						&appconfig.ExtensionActionPointActionArgs{
/// 							Name:    pulumi.String("test"),
/// 							RoleArn: testRole.Arn,
/// 							Uri:     testTopic.Arn,
/// 						},
/// 					},
/// 					Point: pulumi.String("ON_DEPLOYMENT_COMPLETE"),
/// 				},
/// 			},
/// 			Name:        pulumi.String("test"),
/// 			Description: pulumi.String("test description"),
/// 			Tags: pulumi.StringMap{
/// 				"Type": pulumi.String("AppConfig Extension"),
/// 			},
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
/// data "aws_iam_getpolicydocument" "test" {
///   statements {
///     principals {
///       type        = "Service"
///       identifiers = ["appconfig.amazonaws.com"]
///     }
///     actions = ["sts:AssumeRole"]
///   }
/// }
///
/// resource "aws_sns_topic" "test" {
///   name = "test"
/// }
/// resource "aws_iam_role" "test" {
///   name               = "test"
///   assume_role_policy = data.aws_iam_getpolicydocument.test.json
/// }
/// resource "aws_appconfig_extension" "test" {
///   action_points {
///     actions {
///       name     = "test"
///       role_arn = aws_iam_role.test.arn
///       uri      = aws_sns_topic.test.arn
///     }
///     point = "ON_DEPLOYMENT_COMPLETE"
///   }
///   name        = "test"
///   description = "test description"
///   tags = {
///     "Type" = "AppConfig Extension"
///   }
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
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.appconfig.Extension;
/// import com.pulumi.aws.appconfig.ExtensionArgs;
/// import com.pulumi.aws.appconfig.inputs.ExtensionActionPointArgs;
/// import com.pulumi.aws.appconfig.inputs.ExtensionActionPointActionArgs;
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
///         var testTopic = new Topic("testTopic", TopicArgs.builder()
///             .name("test")
///             .build());
///
///         final var test = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("appconfig.amazonaws.com")
///                     .build())
///                 .actions("sts:AssumeRole")
///                 .build())
///             .build());
///
///         var testRole = new Role("testRole", RoleArgs.builder()
///             .name("test")
///             .assumeRolePolicy(test.json())
///             .build());
///
///         var testExtension = new Extension("testExtension", ExtensionArgs.builder()
///             .actionPoints(ExtensionActionPointArgs.builder()
///                 .actions(ExtensionActionPointActionArgs.builder()
///                     .name("test")
///                     .roleArn(testRole.arn())
///                     .uri(testTopic.arn())
///                     .build())
///                 .point("ON_DEPLOYMENT_COMPLETE")
///                 .build())
///             .name("test")
///             .description("test description")
///             .tags(Map.of("Type", "AppConfig Extension"))
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
///       actionPoints:
///         - actions:
///             - name: test
///               roleArn: ${testRole.arn}
///               uri: ${testTopic.arn}
///           point: ON_DEPLOYMENT_COMPLETE
///       name: test
///       description: test description
///       tags:
///         Type: AppConfig Extension
/// variables:
///   test:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - type: Service
///                 identifiers:
///                   - appconfig.amazonaws.com
///             actions:
///               - sts:AssumeRole
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import AppConfig Extensions using their extension ID. For example:
///
/// ```sh
/// $ pulumi import aws:appconfig/extension:Extension example 71rxuzt
/// ```
class Extension extends pulumi.CustomResource {
  /// Action points defined in the extension. Detailed below.
  late final pulumi.Output<List<ExtensionActionPoint>> actionPoints;
  /// ARN of the AppConfig Extension.
  late final pulumi.Output<String> arn;
  /// Information about the extension.
  late final pulumi.Output<String> description;
  /// Name for the extension. Each extension name in your account must be unique. Extension versions use the same name.
  late final pulumi.Output<String> name;
  /// Parameters accepted by the extension. You specify parameter values when you associate the extension to an AppConfig resource by using the CreateExtensionAssociation API action. For Lambda extension actions, these parameters are included in the Lambda request object. Detailed below.
  late final pulumi.Output<List<ExtensionParameter>> parameters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Version number for the extension.
  late final pulumi.Output<int> version;

  /// Creates a new [Extension].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Extension]. {@macro pulumi_appconfig_extension_extension_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Extension(
    String name, {
    ExtensionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appconfig/extension:Extension',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    actionPoints = registerOutput<List<ExtensionActionPoint>>('actionPoints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ExtensionActionPoint>(guardedValue, (value) => ExtensionActionPoint.fromMap((value as Map).cast<String, dynamic>())); });
    arn = registerOutput<String>('arn');
    description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<List<ExtensionParameter>>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ExtensionParameter>(guardedValue, (value) => ExtensionParameter.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    version = registerOutput<int>('version');
  }

  /// Gets an existing [Extension] resource's state with the given [name] and [id].
  static Extension get(
    String name,
    pulumi.Input<String> id, {
    ExtensionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Extension._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Extension._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appconfig/extension:Extension',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    actionPoints = registerOutput<List<ExtensionActionPoint>>('actionPoints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ExtensionActionPoint>(guardedValue, (value) => ExtensionActionPoint.fromMap((value as Map).cast<String, dynamic>())); });
    arn = registerOutput<String>('arn');
    description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<List<ExtensionParameter>>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ExtensionParameter>(guardedValue, (value) => ExtensionParameter.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    version = registerOutput<int>('version');
  }

  /// Creates a typed reference to an existing [Extension] resource.
  Extension.reference(String urn)
    : super(
        'aws:appconfig/extension:Extension',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    actionPoints = registerOutput<List<ExtensionActionPoint>>('actionPoints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ExtensionActionPoint>(guardedValue, (value) => ExtensionActionPoint.fromMap((value as Map).cast<String, dynamic>())); });
    arn = registerOutput<String>('arn');
    description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<List<ExtensionParameter>>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ExtensionParameter>(guardedValue, (value) => ExtensionParameter.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    version = registerOutput<int>('version');
  }
}
