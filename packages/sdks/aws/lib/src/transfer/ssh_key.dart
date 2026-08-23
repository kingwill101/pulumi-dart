import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssh_key_args.dart';
import 'ssh_key_state.dart';

/// Provides a AWS Transfer User SSH Key resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
/// import * as tls from "@pulumi/tls";
///
/// const examplePrivateKey = new tls.PrivateKey("example", {
///     algorithm: "RSA",
///     rsaBits: 4096,
/// });
/// const exampleServer = new aws.transfer.Server("example", {
///     identityProviderType: "SERVICE_MANAGED",
///     tags: {
///         NAME: "tf-acc-test-transfer-server",
///     },
/// });
/// const assumeRole = aws.iam.getPolicyDocument({
///     statements: [{
///         effect: "Allow",
///         principals: [{
///             type: "Service",
///             identifiers: ["transfer.amazonaws.com"],
///         }],
///         actions: ["sts:AssumeRole"],
///     }],
/// });
/// const exampleRole = new aws.iam.Role("example", {
///     name: "tf-test-transfer-user-iam-role",
///     assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const exampleUser = new aws.transfer.User("example", {
///     serverId: exampleServer.id,
///     userName: "tftestuser",
///     role: exampleRole.arn,
///     tags: {
///         NAME: "tftestuser",
///     },
/// });
/// const exampleSshKey = new aws.transfer.SshKey("example", {
///     serverId: exampleServer.id,
///     userName: exampleUser.userName,
///     body: std.trimspaceOutput({
///         input: examplePrivateKey.publicKeyOpenssh,
///     }).result,
/// });
/// const example = aws.iam.getPolicyDocument({
///     statements: [{
///         sid: "AllowFullAccesstoS3",
///         effect: "Allow",
///         actions: ["s3:*"],
///         resources: ["*"],
///     }],
/// });
/// const exampleRolePolicy = new aws.iam.RolePolicy("example", {
///     name: "tf-test-transfer-user-iam-policy",
///     role: exampleRole.id,
///     policy: example.then(example => example.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
/// import pulumi_tls as tls
///
/// example_private_key = tls.PrivateKey("example",
///     algorithm="RSA",
///     rsa_bits=4096)
/// example_server = aws.transfer.Server("example",
///     identity_provider_type="SERVICE_MANAGED",
///     tags={
///         "NAME": "tf-acc-test-transfer-server",
///     })
/// assume_role = aws.iam.get_policy_document(statements=[{
///     "effect": "Allow",
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["transfer.amazonaws.com"],
///     }],
///     "actions": ["sts:AssumeRole"],
/// }])
/// example_role = aws.iam.Role("example",
///     name="tf-test-transfer-user-iam-role",
///     assume_role_policy=assume_role.json)
/// example_user = aws.transfer.User("example",
///     server_id=example_server.id,
///     user_name="tftestuser",
///     role=example_role.arn,
///     tags={
///         "NAME": "tftestuser",
///     })
/// example_ssh_key = aws.transfer.SshKey("example",
///     server_id=example_server.id,
///     user_name=example_user.user_name,
///     body=std.trimspace_output(input=example_private_key.public_key_openssh).result)
/// example = aws.iam.get_policy_document(statements=[{
///     "sid": "AllowFullAccesstoS3",
///     "effect": "Allow",
///     "actions": ["s3:*"],
///     "resources": ["*"],
/// }])
/// example_role_policy = aws.iam.RolePolicy("example",
///     name="tf-test-transfer-user-iam-policy",
///     role=example_role.id,
///     policy=example.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
/// using Tls = Pulumi.Tls;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var examplePrivateKey = new Tls.PrivateKey("example", new()
///     {
///         Algorithm = "RSA",
///         RsaBits = 4096,
///     });
///
///     var exampleServer = new Aws.Transfer.Server("example", new()
///     {
///         IdentityProviderType = "SERVICE_MANAGED",
///         Tags =
///         {
///             { "NAME", "tf-acc-test-transfer-server" },
///         },
///     });
///
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
///                             "transfer.amazonaws.com",
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
///     var exampleRole = new Aws.Iam.Role("example", new()
///     {
///         Name = "tf-test-transfer-user-iam-role",
///         AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var exampleUser = new Aws.Transfer.User("example", new()
///     {
///         ServerId = exampleServer.Id,
///         UserName = "tftestuser",
///         Role = exampleRole.Arn,
///         Tags =
///         {
///             { "NAME", "tftestuser" },
///         },
///     });
///
///     var exampleSshKey = new Aws.Transfer.SshKey("example", new()
///     {
///         ServerId = exampleServer.Id,
///         UserName = exampleUser.UserName,
///         Body = Std.Trimspace.Invoke(new()
///         {
///             Input = examplePrivateKey.PublicKeyOpenssh,
///         }).Apply(invoke => invoke.Result),
///     });
///
///     var example = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Sid = "AllowFullAccesstoS3",
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "s3:*",
///                 },
///                 Resources = new[]
///                 {
///                     "*",
///                 },
///             },
///         },
///     });
///
///     var exampleRolePolicy = new Aws.Iam.RolePolicy("example", new()
///     {
///         Name = "tf-test-transfer-user-iam-policy",
///         Role = exampleRole.Id,
///         Policy = example.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/transfer"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi-tls/sdk/v5/go/tls"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		examplePrivateKey, err := tls.NewPrivateKey(ctx, "example", &tls.PrivateKeyArgs{
/// 			Algorithm: pulumi.String("RSA"),
/// 			RsaBits:   pulumi.Int(4096),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleServer, err := transfer.NewServer(ctx, "example", &transfer.ServerArgs{
/// 			IdentityProviderType: pulumi.String("SERVICE_MANAGED"),
/// 			Tags: pulumi.StringMap{
/// 				"NAME": pulumi.String("tf-acc-test-transfer-server"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		assumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"transfer.amazonaws.com",
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
/// 		exampleRole, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// 			Name:             pulumi.String("tf-test-transfer-user-iam-role"),
/// 			AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleUser, err := transfer.NewUser(ctx, "example", &transfer.UserArgs{
/// 			ServerId: exampleServer.ID().ToIDOutput().ToStringOutput(),
/// 			UserName: pulumi.String("tftestuser"),
/// 			Role:     exampleRole.Arn,
/// 			Tags: pulumi.StringMap{
/// 				"NAME": pulumi.String("tftestuser"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = transfer.NewSshKey(ctx, "example", &transfer.SshKeyArgs{
/// 			ServerId: exampleServer.ID().ToIDOutput().ToStringOutput(),
/// 			UserName: exampleUser.UserName,
/// 			Body: std.TrimspaceOutput(ctx, std.TrimspaceOutputArgs{
/// 				Input: examplePrivateKey.PublicKeyOpenssh,
/// 			}, nil).Result(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Sid:    pulumi.StringRef("AllowFullAccesstoS3"),
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"s3:*",
/// 					},
/// 					Resources: []string{
/// 						"*",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewRolePolicy(ctx, "example", &iam.RolePolicyArgs{
/// 			Name:   pulumi.String("tf-test-transfer-user-iam-policy"),
/// 			Role:   exampleRole.ID().ToIDOutput().ToStringOutput(),
/// 			Policy: pulumi.String(example.Json),
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
///     std = {
///       source = "pulumi/std"
///     }
///     tls = {
///       source = "pulumi/tls"
///     }
///   }
/// }
///
/// data "aws_iam_getpolicydocument" "assumeRole" {
///   statements {
///     effect = "Allow"
///     principals {
///       type        = "Service"
///       identifiers = ["transfer.amazonaws.com"]
///     }
///     actions = ["sts:AssumeRole"]
///   }
/// }
/// data "aws_iam_getpolicydocument" "example" {
///   statements {
///     sid       = "AllowFullAccesstoS3"
///     effect    = "Allow"
///     actions   = ["s3:*"]
///     resources = ["*"]
///   }
/// }
///
/// resource "tls_privatekey" "example" {
///   algorithm = "RSA"
///   rsa_bits  = 4096
/// }
/// resource "aws_transfer_sshkey" "example" {
///   server_id = aws_transfer_server.example.id
///   user_name = aws_transfer_user.example.user_name
///   body      = trimspace(tls_privatekey.example.public_key_openssh)
/// }
/// resource "aws_transfer_server" "example" {
///   identity_provider_type = "SERVICE_MANAGED"
///   tags = {
///     "NAME" = "tf-acc-test-transfer-server"
///   }
/// }
/// resource "aws_transfer_user" "example" {
///   server_id = aws_transfer_server.example.id
///   user_name = "tftestuser"
///   role      = aws_iam_role.example.arn
///   tags = {
///     "NAME" = "tftestuser"
///   }
/// }
/// resource "aws_iam_role" "example" {
///   name               = "tf-test-transfer-user-iam-role"
///   assume_role_policy = data.aws_iam_getpolicydocument.assumeRole.json
/// }
/// resource "aws_iam_rolepolicy" "example" {
///   name   = "tf-test-transfer-user-iam-policy"
///   role   = aws_iam_role.example.id
///   policy = data.aws_iam_getpolicydocument.example.json
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.tls.PrivateKey;
/// import com.pulumi.tls.PrivateKeyArgs;
/// import com.pulumi.aws.transfer.Server;
/// import com.pulumi.aws.transfer.ServerArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.transfer.User;
/// import com.pulumi.aws.transfer.UserArgs;
/// import com.pulumi.aws.transfer.SshKey;
/// import com.pulumi.aws.transfer.SshKeyArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.TrimspaceArgs;
/// import com.pulumi.aws.iam.RolePolicy;
/// import com.pulumi.aws.iam.RolePolicyArgs;
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
///         var examplePrivateKey = new PrivateKey("examplePrivateKey", PrivateKeyArgs.builder()
///             .algorithm("RSA")
///             .rsaBits(4096)
///             .build());
///
///         var exampleServer = new Server("exampleServer", ServerArgs.builder()
///             .identityProviderType("SERVICE_MANAGED")
///             .tags(Map.of("NAME", "tf-acc-test-transfer-server"))
///             .build());
///
///         final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("transfer.amazonaws.com")
///                     .build())
///                 .actions("sts:AssumeRole")
///                 .build())
///             .build());
///
///         var exampleRole = new Role("exampleRole", RoleArgs.builder()
///             .name("tf-test-transfer-user-iam-role")
///             .assumeRolePolicy(assumeRole.json())
///             .build());
///
///         var exampleUser = new User("exampleUser", UserArgs.builder()
///             .serverId(exampleServer.id())
///             .userName("tftestuser")
///             .role(exampleRole.arn())
///             .tags(Map.of("NAME", "tftestuser"))
///             .build());
///
///         var exampleSshKey = new SshKey("exampleSshKey", SshKeyArgs.builder()
///             .serverId(exampleServer.id())
///             .userName(exampleUser.userName())
///             .body(StdFunctions.trimspace(TrimspaceArgs.builder()
///                 .input(examplePrivateKey.publicKeyOpenssh())
///                 .build()).applyValue(_invoke -> _invoke.result()))
///             .build());
///
///         final var example = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .sid("AllowFullAccesstoS3")
///                 .effect("Allow")
///                 .actions("s3:*")
///                 .resources("*")
///                 .build())
///             .build());
///
///         var exampleRolePolicy = new RolePolicy("exampleRolePolicy", RolePolicyArgs.builder()
///             .name("tf-test-transfer-user-iam-policy")
///             .role(exampleRole.id())
///             .policy(example.json())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   examplePrivateKey:
///     type: tls:PrivateKey
///     name: example
///     properties:
///       algorithm: RSA
///       rsaBits: 4096
///   exampleSshKey:
///     type: aws:transfer:SshKey
///     name: example
///     properties:
///       serverId: ${exampleServer.id}
///       userName: ${exampleUser.userName}
///       body:
///         fn::invoke:
///           function: std:trimspace
///           arguments:
///             input: ${examplePrivateKey.publicKeyOpenssh}
///           return: result
///   exampleServer:
///     type: aws:transfer:Server
///     name: example
///     properties:
///       identityProviderType: SERVICE_MANAGED
///       tags:
///         NAME: tf-acc-test-transfer-server
///   exampleUser:
///     type: aws:transfer:User
///     name: example
///     properties:
///       serverId: ${exampleServer.id}
///       userName: tftestuser
///       role: ${exampleRole.arn}
///       tags:
///         NAME: tftestuser
///   exampleRole:
///     type: aws:iam:Role
///     name: example
///     properties:
///       name: tf-test-transfer-user-iam-role
///       assumeRolePolicy: ${assumeRole.json}
///   exampleRolePolicy:
///     type: aws:iam:RolePolicy
///     name: example
///     properties:
///       name: tf-test-transfer-user-iam-policy
///       role: ${exampleRole.id}
///       policy: ${example.json}
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
///                   - transfer.amazonaws.com
///             actions:
///               - sts:AssumeRole
///   example:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - sid: AllowFullAccesstoS3
///             effect: Allow
///             actions:
///               - s3:*
///             resources:
///               - '*'
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Transfer SSH Public Key using the `serverId` and `userName` and `sshPublicKeyId` separated by `/`. For example:
///
/// ```sh
/// $ pulumi import aws:transfer/sshKey:SshKey bar s-12345678/test-username/key-12345
/// ```
class SshKey extends pulumi.CustomResource {
  /// Public key portion of an SSH key pair.
  late final pulumi.Output<String> body;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Server ID of the Transfer Server (e.g., `s-12345678`)
  late final pulumi.Output<String> serverId;
  /// ID of the SSH public key.
  late final pulumi.Output<String> sshKeyId;
  /// Name of the user account that is assigned to one or more servers.
  late final pulumi.Output<String> userName;

  /// Creates a new [SshKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SshKey]. {@macro pulumi_transfer_ssh_key_ssh_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SshKey(
    String name, {
    SshKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:transfer/sshKey:SshKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    body = registerOutput<String>('body');
    region = registerOutput<String>('region');
    serverId = registerOutput<String>('serverId');
    sshKeyId = registerOutput<String>('sshKeyId');
    userName = registerOutput<String>('userName');
  }

  /// Gets an existing [SshKey] resource's state with the given [name] and [id].
  static SshKey get(
    String name,
    pulumi.Input<String> id, {
    SshKeyState? state,
  }) {
    return SshKey._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SshKey._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:transfer/sshKey:SshKey',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    body = registerOutput<String>('body');
    region = registerOutput<String>('region');
    serverId = registerOutput<String>('serverId');
    sshKeyId = registerOutput<String>('sshKeyId');
    userName = registerOutput<String>('userName');
  }
}
