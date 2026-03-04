import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_args.dart';
import 'user_posix_profile.dart';
import 'user_state.dart';

/// Provides a AWS Transfer User resource. Managing SSH keys can be accomplished with the `aws.transfer.SshKey` resource.
///
/// &gt; **NOTE:** We suggest using `jsonencode()` or `aws.iam.getPolicyDocument` when assigning a value to `policy`. They seamlessly translate Terraform language into JSON, enabling you to maintain consistency within your configuration without the need for context switches. Also, you can sidestep potential complications arising from formatting discrepancies, whitespace inconsistencies, and other nuances inherent to JSON.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const fooServer = new aws.transfer.Server("foo", {
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
/// const fooRole = new aws.iam.Role("foo", {
///     name: "tf-test-transfer-user-iam-role",
///     assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const foo = aws.iam.getPolicyDocument({
///     statements: [{
///         sid: "AllowFullAccesstoS3",
///         effect: "Allow",
///         actions: ["s3:*"],
///         resources: ["*"],
///     }],
/// });
/// const fooRolePolicy = new aws.iam.RolePolicy("foo", {
///     name: "tf-test-transfer-user-iam-policy",
///     role: fooRole.id,
///     policy: foo.then(foo => foo.json),
/// });
/// const fooUser = new aws.transfer.User("foo", {
///     serverId: fooServer.id,
///     userName: "tftestuser",
///     role: fooRole.arn,
///     homeDirectoryType: "LOGICAL",
///     homeDirectoryMappings: [{
///         entry: "/test.pdf",
///         target: "/bucket3/test-path/tftestuser.pdf",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo_server = aws.transfer.Server("foo",
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
/// foo_role = aws.iam.Role("foo",
///     name="tf-test-transfer-user-iam-role",
///     assume_role_policy=assume_role.json)
/// foo = aws.iam.get_policy_document(statements=[{
///     "sid": "AllowFullAccesstoS3",
///     "effect": "Allow",
///     "actions": ["s3:*"],
///     "resources": ["*"],
/// }])
/// foo_role_policy = aws.iam.RolePolicy("foo",
///     name="tf-test-transfer-user-iam-policy",
///     role=foo_role.id,
///     policy=foo.json)
/// foo_user = aws.transfer.User("foo",
///     server_id=foo_server.id,
///     user_name="tftestuser",
///     role=foo_role.arn,
///     home_directory_type="LOGICAL",
///     home_directory_mappings=[{
///         "entry": "/test.pdf",
///         "target": "/bucket3/test-path/tftestuser.pdf",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fooServer = new Aws.Transfer.Server("foo", new()
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
///     var fooRole = new Aws.Iam.Role("foo", new()
///     {
///         Name = "tf-test-transfer-user-iam-role",
///         AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var foo = Aws.Iam.GetPolicyDocument.Invoke(new()
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
///     var fooRolePolicy = new Aws.Iam.RolePolicy("foo", new()
///     {
///         Name = "tf-test-transfer-user-iam-policy",
///         Role = fooRole.Id,
///         Policy = foo.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var fooUser = new Aws.Transfer.User("foo", new()
///     {
///         ServerId = fooServer.Id,
///         UserName = "tftestuser",
///         Role = fooRole.Arn,
///         HomeDirectoryType = "LOGICAL",
///         HomeDirectoryMappings = new[]
///         {
///             new Aws.Transfer.Inputs.UserHomeDirectoryMappingArgs
///             {
///                 Entry = "/test.pdf",
///                 Target = "/bucket3/test-path/tftestuser.pdf",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/transfer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		fooServer, err := transfer.NewServer(ctx, "foo", &transfer.ServerArgs{
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
/// 		fooRole, err := iam.NewRole(ctx, "foo", &iam.RoleArgs{
/// 			Name:             pulumi.String("tf-test-transfer-user-iam-role"),
/// 			AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		foo, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
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
/// 		_, err = iam.NewRolePolicy(ctx, "foo", &iam.RolePolicyArgs{
/// 			Name:   pulumi.String("tf-test-transfer-user-iam-policy"),
/// 			Role:   fooRole.ID(),
/// 			Policy: pulumi.String(foo.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = transfer.NewUser(ctx, "foo", &transfer.UserArgs{
/// 			ServerId:          fooServer.ID(),
/// 			UserName:          pulumi.String("tftestuser"),
/// 			Role:              fooRole.Arn,
/// 			HomeDirectoryType: pulumi.String("LOGICAL"),
/// 			HomeDirectoryMappings: transfer.UserHomeDirectoryMappingArray{
/// 				&transfer.UserHomeDirectoryMappingArgs{
/// 					Entry:  pulumi.String("/test.pdf"),
/// 					Target: pulumi.String("/bucket3/test-path/tftestuser.pdf"),
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
/// import com.pulumi.aws.transfer.Server;
/// import com.pulumi.aws.transfer.ServerArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.RolePolicy;
/// import com.pulumi.aws.iam.RolePolicyArgs;
/// import com.pulumi.aws.transfer.User;
/// import com.pulumi.aws.transfer.UserArgs;
/// import com.pulumi.aws.transfer.inputs.UserHomeDirectoryMappingArgs;
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
///         var fooServer = new Server("fooServer", ServerArgs.builder()
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
///         var fooRole = new Role("fooRole", RoleArgs.builder()
///             .name("tf-test-transfer-user-iam-role")
///             .assumeRolePolicy(assumeRole.json())
///             .build());
///
///         final var foo = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .sid("AllowFullAccesstoS3")
///                 .effect("Allow")
///                 .actions("s3:*")
///                 .resources("*")
///                 .build())
///             .build());
///
///         var fooRolePolicy = new RolePolicy("fooRolePolicy", RolePolicyArgs.builder()
///             .name("tf-test-transfer-user-iam-policy")
///             .role(fooRole.id())
///             .policy(foo.json())
///             .build());
///
///         var fooUser = new User("fooUser", UserArgs.builder()
///             .serverId(fooServer.id())
///             .userName("tftestuser")
///             .role(fooRole.arn())
///             .homeDirectoryType("LOGICAL")
///             .homeDirectoryMappings(UserHomeDirectoryMappingArgs.builder()
///                 .entry("/test.pdf")
///                 .target("/bucket3/test-path/tftestuser.pdf")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   fooServer:
///     type: aws:transfer:Server
///     name: foo
///     properties:
///       identityProviderType: SERVICE_MANAGED
///       tags:
///         NAME: tf-acc-test-transfer-server
///   fooRole:
///     type: aws:iam:Role
///     name: foo
///     properties:
///       name: tf-test-transfer-user-iam-role
///       assumeRolePolicy: ${assumeRole.json}
///   fooRolePolicy:
///     type: aws:iam:RolePolicy
///     name: foo
///     properties:
///       name: tf-test-transfer-user-iam-policy
///       role: ${fooRole.id}
///       policy: ${foo.json}
///   fooUser:
///     type: aws:transfer:User
///     name: foo
///     properties:
///       serverId: ${fooServer.id}
///       userName: tftestuser
///       role: ${fooRole.arn}
///       homeDirectoryType: LOGICAL
///       homeDirectoryMappings:
///         - entry: /test.pdf
///           target: /bucket3/test-path/tftestuser.pdf
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
///   foo:
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
/// Using `pulumi import`, import Transfer Users using the `server_id` and `user_name` separated by `/`. For example:
///
/// ```sh
/// $ pulumi import aws:transfer/user:User bar s-12345678/test-username
/// ```
class User extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of Transfer User
  late final pulumi.Output<String> arn;

  /// The landing directory (folder) for a user when they log in to the server using their SFTP client.  It should begin with a `/`.  The first item in the path is the name of the home bucket (accessible as `${Transfer:HomeBucket}` in the policy) and the rest is the home directory (accessible as `${Transfer:HomeDirectory}` in the policy). For example, `/example-bucket-1234/username` would set the home bucket to `example-bucket-1234` and the home directory to `username`.
  late final pulumi.Output<String?> homeDirectory;

  /// Logical directory mappings that specify what S3 paths and keys should be visible to your user and how you want to make them visible. See Home Directory Mappings below.
  late final pulumi.Output<List<Map<String, dynamic>>?> homeDirectoryMappings;

  /// The type of landing directory (folder) you mapped for your users' home directory. Valid values are `PATH` and `LOGICAL`.
  late final pulumi.Output<String?> homeDirectoryType;

  /// An IAM JSON policy document that scopes down user access to portions of their Amazon S3 bucket. IAM variables you can use inside this policy include `${Transfer:UserName}`, `${Transfer:HomeDirectory}`, and `${Transfer:HomeBucket}`. These are evaluated on-the-fly when navigating the bucket.
  late final pulumi.Output<String?> policy;

  /// Specifies the full POSIX identity, including user ID (Uid), group ID (Gid), and any secondary groups IDs (SecondaryGids), that controls your users' access to your Amazon EFS file systems. See Posix Profile below.
  late final pulumi.Output<UserPosixProfile?> posixProfile;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Amazon Resource Name (ARN) of an IAM role that allows the service to control your user’s access to your Amazon S3 bucket.
  late final pulumi.Output<String> role;

  /// The Server ID of the Transfer Server (e.g., `s-12345678`)
  late final pulumi.Output<String> serverId;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The name used for log in to your SFTP server.
  late final pulumi.Output<String> userName;

  /// Creates a new [User].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [User]. {@macro pulumi_transfer_user_user_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  User(String name, {UserArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'aws:transfer/user:User',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    arn = registerOutput<String>('arn');
    homeDirectory = registerOutput<String?>('homeDirectory');
    homeDirectoryMappings = registerOutput<List<Map<String, dynamic>>?>(
      'homeDirectoryMappings',
    );
    homeDirectoryType = registerOutput<String?>('homeDirectoryType');
    policy = registerOutput<String?>('policy');
    posixProfile = registerOutput<UserPosixProfile?>('posixProfile');
    region = registerOutput<String>('region');
    role = registerOutput<String>('role');
    serverId = registerOutput<String>('serverId');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    userName = registerOutput<String>('userName');
  }

  /// Gets an existing [User] resource's state with the given [name] and [id].
  static User get(String name, pulumi.Input<String> id, {UserState? state}) {
    return User._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  User._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:transfer/user:User',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    homeDirectory = registerOutput<String?>('homeDirectory');
    homeDirectoryMappings = registerOutput<List<Map<String, dynamic>>?>(
      'homeDirectoryMappings',
    );
    homeDirectoryType = registerOutput<String?>('homeDirectoryType');
    policy = registerOutput<String?>('policy');
    posixProfile = registerOutput<UserPosixProfile?>('posixProfile');
    region = registerOutput<String>('region');
    role = registerOutput<String>('role');
    serverId = registerOutput<String>('serverId');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    userName = registerOutput<String>('userName');
  }
}
