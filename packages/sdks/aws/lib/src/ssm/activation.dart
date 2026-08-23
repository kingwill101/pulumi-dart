import 'package:pulumi/pulumi.dart' as pulumi;
import 'activation_args.dart';
import 'activation_state.dart';

/// Registers an on-premises server or virtual machine with Amazon EC2 so that it can be managed using Run Command.
///
/// ## Example Usage
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
///             identifiers: ["ssm.amazonaws.com"],
///         }],
///         actions: ["sts:AssumeRole"],
///     }],
/// });
/// const testRole = new aws.iam.Role("test_role", {
///     name: "test_role",
///     assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const testAttach = new aws.iam.RolePolicyAttachment("test_attach", {
///     role: testRole.name,
///     policyArn: "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore",
/// });
/// const foo = new aws.ssm.Activation("foo", {
///     name: "test_ssm_activation",
///     description: "Test",
///     iamRole: testRole.id,
///     registrationLimit: 5,
/// }, {
///     dependsOn: [testAttach],
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
///         "identifiers": ["ssm.amazonaws.com"],
///     }],
///     "actions": ["sts:AssumeRole"],
/// }])
/// test_role = aws.iam.Role("test_role",
///     name="test_role",
///     assume_role_policy=assume_role.json)
/// test_attach = aws.iam.RolePolicyAttachment("test_attach",
///     role=test_role.name,
///     policy_arn="arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore")
/// foo = aws.ssm.Activation("foo",
///     name="test_ssm_activation",
///     description="Test",
///     iam_role=test_role.id,
///     registration_limit=5,
///     opts = pulumi.ResourceOptions(depends_on=[test_attach]))
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
///                             "ssm.amazonaws.com",
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
///     var testRole = new Aws.Iam.Role("test_role", new()
///     {
///         Name = "test_role",
///         AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var testAttach = new Aws.Iam.RolePolicyAttachment("test_attach", new()
///     {
///         Role = testRole.Name,
///         PolicyArn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore",
///     });
///
///     var foo = new Aws.Ssm.Activation("foo", new()
///     {
///         Name = "test_ssm_activation",
///         Description = "Test",
///         IamRole = testRole.Id,
///         RegistrationLimit = 5,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             testAttach,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
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
/// 								"ssm.amazonaws.com",
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
/// 		testRole, err := iam.NewRole(ctx, "test_role", &iam.RoleArgs{
/// 			Name:             pulumi.String("test_role"),
/// 			AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testAttach, err := iam.NewRolePolicyAttachment(ctx, "test_attach", &iam.RolePolicyAttachmentArgs{
/// 			Role:      testRole.Name,
/// 			PolicyArn: pulumi.String("arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ssm.NewActivation(ctx, "foo", &ssm.ActivationArgs{
/// 			Name:              pulumi.String("test_ssm_activation"),
/// 			Description:       pulumi.String("Test"),
/// 			IamRole:           testRole.ID().ToIDOutput().ToStringOutput(),
/// 			RegistrationLimit: pulumi.Int(5),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			testAttach,
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
/// data "aws_iam_getpolicydocument" "assumeRole" {
///   statements {
///     effect = "Allow"
///     principals {
///       type        = "Service"
///       identifiers = ["ssm.amazonaws.com"]
///     }
///     actions = ["sts:AssumeRole"]
///   }
/// }
///
/// resource "aws_iam_role" "test_role" {
///   name               = "test_role"
///   assume_role_policy = data.aws_iam_getpolicydocument.assumeRole.json
/// }
/// resource "aws_iam_rolepolicyattachment" "test_attach" {
///   role       = aws_iam_role.test_role.name
///   policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
/// }
/// resource "aws_ssm_activation" "foo" {
///   depends_on         = [aws_iam_rolepolicyattachment.test_attach]
///   name               = "test_ssm_activation"
///   description        = "Test"
///   iam_role           = aws_iam_role.test_role.id
///   registration_limit = "5"
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
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.RolePolicyAttachment;
/// import com.pulumi.aws.iam.RolePolicyAttachmentArgs;
/// import com.pulumi.aws.ssm.Activation;
/// import com.pulumi.aws.ssm.ActivationArgs;
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
///         final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("ssm.amazonaws.com")
///                     .build())
///                 .actions("sts:AssumeRole")
///                 .build())
///             .build());
///
///         var testRole = new Role("testRole", RoleArgs.builder()
///             .name("test_role")
///             .assumeRolePolicy(assumeRole.json())
///             .build());
///
///         var testAttach = new RolePolicyAttachment("testAttach", RolePolicyAttachmentArgs.builder()
///             .role(testRole.name())
///             .policyArn("arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore")
///             .build());
///
///         var foo = new Activation("foo", ActivationArgs.builder()
///             .name("test_ssm_activation")
///             .description("Test")
///             .iamRole(testRole.id())
///             .registrationLimit(5)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(testAttach)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testRole:
///     type: aws:iam:Role
///     name: test_role
///     properties:
///       name: test_role
///       assumeRolePolicy: ${assumeRole.json}
///   testAttach:
///     type: aws:iam:RolePolicyAttachment
///     name: test_attach
///     properties:
///       role: ${testRole.name}
///       policyArn: arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore
///   foo:
///     type: aws:ssm:Activation
///     properties:
///       name: test_ssm_activation
///       description: Test
///       iamRole: ${testRole.id}
///       registrationLimit: '5'
///     options:
///       dependsOn:
///         - ${testAttach}
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
///                   - ssm.amazonaws.com
///             actions:
///               - sts:AssumeRole
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import AWS SSM Activation using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ssm/activation:Activation example e488f2f6-e686-4afb-8a04-ef6dfEXAMPLE
/// ```
///
/// &gt; **Note:** The `activationCode` attribute cannot be imported.
class Activation extends pulumi.CustomResource {
  /// The code the system generates when it processes the activation.
  late final pulumi.Output<String> activationCode;
  /// The description of the resource that you want to register.
  late final pulumi.Output<String?> description;
  /// UTC timestamp in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) by which this activation request should expire. The default value is 24 hours from resource creation time. This provider will only perform drift detection of its value when present in a configuration.
  late final pulumi.Output<String> expirationDate;
  /// If the current activation has expired.
  late final pulumi.Output<bool> expired;
  /// The IAM Role to attach to the managed instance.
  late final pulumi.Output<String> iamRole;
  /// The default name of the registered managed instance.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The number of managed instances that are currently registered using this activation.
  late final pulumi.Output<int> registrationCount;
  /// The maximum number of managed instances you want to register. The default value is 1 instance.
  late final pulumi.Output<int?> registrationLimit;
  /// A map of tags to assign to the object. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Activation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Activation]. {@macro pulumi_ssm_activation_activation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Activation(
    String name, {
    ActivationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssm/activation:Activation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    activationCode = registerOutput<String>('activationCode');
    description = registerOutput<String?>('description');
    expirationDate = registerOutput<String>('expirationDate');
    expired = registerOutput<bool>('expired');
    iamRole = registerOutput<String>('iamRole');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    registrationCount = registerOutput<int>('registrationCount');
    registrationLimit = registerOutput<int?>('registrationLimit');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [Activation] resource's state with the given [name] and [id].
  static Activation get(
    String name,
    pulumi.Input<String> id, {
    ActivationState? state,
  }) {
    return Activation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Activation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssm/activation:Activation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    activationCode = registerOutput<String>('activationCode');
    description = registerOutput<String?>('description');
    expirationDate = registerOutput<String>('expirationDate');
    expired = registerOutput<bool>('expired');
    iamRole = registerOutput<String>('iamRole');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    registrationCount = registerOutput<int>('registrationCount');
    registrationLimit = registerOutput<int?>('registrationLimit');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
