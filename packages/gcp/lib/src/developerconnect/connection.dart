import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_args.dart';
import 'connection_bitbucket_cloud_config.dart';
import 'connection_bitbucket_data_center_config.dart';
import 'connection_crypto_key_config.dart';
import 'connection_github_config.dart';
import 'connection_github_enterprise_config.dart';
import 'connection_gitlab_config.dart';
import 'connection_gitlab_enterprise_config.dart';
import 'connection_installation_state.dart';

/// A connection for GitHub, GitHub Enterprise, GitLab, and GitLab Enterprise.
///
///
/// To get more information about Connection, see:
///
/// * [API documentation](https://cloud.google.com/developer-connect/docs/api/reference/rest/v1/projects.locations.connections)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/developer-connect/docs/overview)
///
/// ## Example Usage
///
/// ### Developer Connect Connection New
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// // Setup permissions. Only needed once per project
/// const devconnect_p4sa = new gcp.projects.ServiceIdentity("devconnect-p4sa", {service: "developerconnect.googleapis.com"});
/// const devconnect_secret = new gcp.projects.IAMMember("devconnect-secret", {
///     project: "my-project-name",
///     role: "roles/secretmanager.admin",
///     member: devconnect_p4sa.member,
/// });
/// const my_connection = new gcp.developerconnect.Connection("my-connection", {
///     location: "us-central1",
///     connectionId: "tf-test-connection-new",
///     githubConfig: {
///         githubApp: "FIREBASE",
///     },
/// }, {
///     dependsOn: [devconnect_secret],
/// });
/// export const nextSteps = my_connection.installationStates;
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// # Setup permissions. Only needed once per project
/// devconnect_p4sa = gcp.projects.ServiceIdentity("devconnect-p4sa", service="developerconnect.googleapis.com")
/// devconnect_secret = gcp.projects.IAMMember("devconnect-secret",
///     project="my-project-name",
///     role="roles/secretmanager.admin",
///     member=devconnect_p4sa.member)
/// my_connection = gcp.developerconnect.Connection("my-connection",
///     location="us-central1",
///     connection_id="tf-test-connection-new",
///     github_config={
///         "github_app": "FIREBASE",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[devconnect_secret]))
/// pulumi.export("nextSteps", my_connection.installation_states)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Setup permissions. Only needed once per project
///     var devconnect_p4sa = new Gcp.Projects.ServiceIdentity("devconnect-p4sa", new()
///     {
///         Service = "developerconnect.googleapis.com",
///     });
///
///     var devconnect_secret = new Gcp.Projects.IAMMember("devconnect-secret", new()
///     {
///         Project = "my-project-name",
///         Role = "roles/secretmanager.admin",
///         Member = devconnect_p4sa.Member,
///     });
///
///     var my_connection = new Gcp.DeveloperConnect.Connection("my-connection", new()
///     {
///         Location = "us-central1",
///         ConnectionId = "tf-test-connection-new",
///         GithubConfig = new Gcp.DeveloperConnect.Inputs.ConnectionGithubConfigArgs
///         {
///             GithubApp = "FIREBASE",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             devconnect_secret,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["nextSteps"] = my_connection.InstallationStates,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/developerconnect"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Setup permissions. Only needed once per project
/// 		devconnect_p4sa, err := projects.NewServiceIdentity(ctx, "devconnect-p4sa", &projects.ServiceIdentityArgs{
/// 			Service: pulumi.String("developerconnect.googleapis.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		devconnect_secret, err := projects.NewIAMMember(ctx, "devconnect-secret", &projects.IAMMemberArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			Role:    pulumi.String("roles/secretmanager.admin"),
/// 			Member:  devconnect_p4sa.Member,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		my_connection, err := developerconnect.NewConnection(ctx, "my-connection", &developerconnect.ConnectionArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			ConnectionId: pulumi.String("tf-test-connection-new"),
/// 			GithubConfig: &developerconnect.ConnectionGithubConfigArgs{
/// 				GithubApp: pulumi.String("FIREBASE"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			devconnect_secret,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("nextSteps", my_connection.InstallationStates)
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
/// import com.pulumi.gcp.projects.ServiceIdentity;
/// import com.pulumi.gcp.projects.ServiceIdentityArgs;
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
/// import com.pulumi.gcp.developerconnect.Connection;
/// import com.pulumi.gcp.developerconnect.ConnectionArgs;
/// import com.pulumi.gcp.developerconnect.inputs.ConnectionGithubConfigArgs;
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
///         // Setup permissions. Only needed once per project
///         var devconnect_p4sa = new ServiceIdentity("devconnect-p4sa", ServiceIdentityArgs.builder()
///             .service("developerconnect.googleapis.com")
///             .build());
///
///         var devconnect_secret = new IAMMember("devconnect-secret", IAMMemberArgs.builder()
///             .project("my-project-name")
///             .role("roles/secretmanager.admin")
///             .member(devconnect_p4sa.member())
///             .build());
///
///         var my_connection = new Connection("my-connection", ConnectionArgs.builder()
///             .location("us-central1")
///             .connectionId("tf-test-connection-new")
///             .githubConfig(ConnectionGithubConfigArgs.builder()
///                 .githubApp("FIREBASE")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(devconnect_secret)
///                 .build());
///
///         ctx.export("nextSteps", my_connection.installationStates());
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-connection:
///     type: gcp:developerconnect:Connection
///     properties:
///       location: us-central1
///       connectionId: tf-test-connection-new
///       githubConfig:
///         githubApp: FIREBASE
///     options:
///       dependsOn:
///         - ${["devconnect-secret"]}
///   # Setup permissions. Only needed once per project
///   devconnect-p4sa:
///     type: gcp:projects:ServiceIdentity
///     properties:
///       service: developerconnect.googleapis.com
///   devconnect-secret:
///     type: gcp:projects:IAMMember
///     properties:
///       project: my-project-name
///       role: roles/secretmanager.admin
///       member: ${["devconnect-p4sa"].member}
/// outputs:
///   nextSteps: ${["my-connection"].installationStates}
/// ```
///
/// ### Developer Connect Connection Existing Credentials
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_connection = new gcp.developerconnect.Connection("my-connection", {
///     location: "us-central1",
///     connectionId: "tf-test-connection-cred",
///     githubConfig: {
///         githubApp: "DEVELOPER_CONNECT",
///         authorizerCredential: {
///             oauthTokenSecretVersion: "projects/your-project/secrets/your-secret-id/versions/latest",
///         },
///     },
/// });
/// export const nextSteps = my_connection.installationStates;
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_connection = gcp.developerconnect.Connection("my-connection",
///     location="us-central1",
///     connection_id="tf-test-connection-cred",
///     github_config={
///         "github_app": "DEVELOPER_CONNECT",
///         "authorizer_credential": {
///             "oauth_token_secret_version": "projects/your-project/secrets/your-secret-id/versions/latest",
///         },
///     })
/// pulumi.export("nextSteps", my_connection.installation_states)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_connection = new Gcp.DeveloperConnect.Connection("my-connection", new()
///     {
///         Location = "us-central1",
///         ConnectionId = "tf-test-connection-cred",
///         GithubConfig = new Gcp.DeveloperConnect.Inputs.ConnectionGithubConfigArgs
///         {
///             GithubApp = "DEVELOPER_CONNECT",
///             AuthorizerCredential = new Gcp.DeveloperConnect.Inputs.ConnectionGithubConfigAuthorizerCredentialArgs
///             {
///                 OauthTokenSecretVersion = "projects/your-project/secrets/your-secret-id/versions/latest",
///             },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["nextSteps"] = my_connection.InstallationStates,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/developerconnect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		my_connection, err := developerconnect.NewConnection(ctx, "my-connection", &developerconnect.ConnectionArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			ConnectionId: pulumi.String("tf-test-connection-cred"),
/// 			GithubConfig: &developerconnect.ConnectionGithubConfigArgs{
/// 				GithubApp: pulumi.String("DEVELOPER_CONNECT"),
/// 				AuthorizerCredential: &developerconnect.ConnectionGithubConfigAuthorizerCredentialArgs{
/// 					OauthTokenSecretVersion: pulumi.String("projects/your-project/secrets/your-secret-id/versions/latest"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("nextSteps", my_connection.InstallationStates)
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
/// import com.pulumi.gcp.developerconnect.Connection;
/// import com.pulumi.gcp.developerconnect.ConnectionArgs;
/// import com.pulumi.gcp.developerconnect.inputs.ConnectionGithubConfigArgs;
/// import com.pulumi.gcp.developerconnect.inputs.ConnectionGithubConfigAuthorizerCredentialArgs;
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
///         var my_connection = new Connection("my-connection", ConnectionArgs.builder()
///             .location("us-central1")
///             .connectionId("tf-test-connection-cred")
///             .githubConfig(ConnectionGithubConfigArgs.builder()
///                 .githubApp("DEVELOPER_CONNECT")
///                 .authorizerCredential(ConnectionGithubConfigAuthorizerCredentialArgs.builder()
///                     .oauthTokenSecretVersion("projects/your-project/secrets/your-secret-id/versions/latest")
///                     .build())
///                 .build())
///             .build());
///
///         ctx.export("nextSteps", my_connection.installationStates());
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-connection:
///     type: gcp:developerconnect:Connection
///     properties:
///       location: us-central1
///       connectionId: tf-test-connection-cred
///       githubConfig:
///         githubApp: DEVELOPER_CONNECT
///         authorizerCredential:
///           oauthTokenSecretVersion: projects/your-project/secrets/your-secret-id/versions/latest
/// outputs:
///   nextSteps: ${["my-connection"].installationStates}
/// ```
///
/// ### Developer Connect Connection Existing Installation
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const github_token_secret = new gcp.secretmanager.Secret("github-token-secret", {
///     secretId: "github-token-secret",
///     replication: {
///         auto: {},
///     },
/// });
/// const github_token_secret_version = new gcp.secretmanager.SecretVersion("github-token-secret-version", {
///     secret: github_token_secret.id,
///     secretData: std.file({
///         input: "my-github-token.txt",
///     }).then(invoke => invoke.result),
/// });
/// const devconnect_p4sa = new gcp.projects.ServiceIdentity("devconnect-p4sa", {service: "developerconnect.googleapis.com"});
/// const p4sa_secretAccessor = gcp.organizations.getIAMPolicyOutput({
///     bindings: [{
///         role: "roles/secretmanager.secretAccessor",
///         members: [devconnect_p4sa.member],
///     }],
/// });
/// const policy = new gcp.secretmanager.SecretIamPolicy("policy", {
///     secretId: github_token_secret.secretId,
///     policyData: p4sa_secretAccessor.apply(p4sa_secretAccessor => p4sa_secretAccessor.policyData),
/// });
/// const my_connection = new gcp.developerconnect.Connection("my-connection", {
///     location: "us-central1",
///     connectionId: "my-connection",
///     githubConfig: {
///         githubApp: "DEVELOPER_CONNECT",
///         appInstallationId: "123123",
///         authorizerCredential: {
///             oauthTokenSecretVersion: github_token_secret_version.id,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// github_token_secret = gcp.secretmanager.Secret("github-token-secret",
///     secret_id="github-token-secret",
///     replication={
///         "auto": {},
///     })
/// github_token_secret_version = gcp.secretmanager.SecretVersion("github-token-secret-version",
///     secret=github_token_secret.id,
///     secret_data=std.file(input="my-github-token.txt").result)
/// devconnect_p4sa = gcp.projects.ServiceIdentity("devconnect-p4sa", service="developerconnect.googleapis.com")
/// p4sa_secret_accessor = gcp.organizations.get_iam_policy_output(bindings=[{
///     "role": "roles/secretmanager.secretAccessor",
///     "members": [devconnect_p4sa.member],
/// }])
/// policy = gcp.secretmanager.SecretIamPolicy("policy",
///     secret_id=github_token_secret.secret_id,
///     policy_data=p4sa_secret_accessor.policy_data)
/// my_connection = gcp.developerconnect.Connection("my-connection",
///     location="us-central1",
///     connection_id="my-connection",
///     github_config={
///         "github_app": "DEVELOPER_CONNECT",
///         "app_installation_id": "123123",
///         "authorizer_credential": {
///             "oauth_token_secret_version": github_token_secret_version.id,
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var github_token_secret = new Gcp.SecretManager.Secret("github-token-secret", new()
///     {
///         SecretId = "github-token-secret",
///         Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
///         {
///             Auto = null,
///         },
///     });
///
///     var github_token_secret_version = new Gcp.SecretManager.SecretVersion("github-token-secret-version", new()
///     {
///         Secret = github_token_secret.Id,
///         SecretData = Std.File.Invoke(new()
///         {
///             Input = "my-github-token.txt",
///         }).Apply(invoke => invoke.Result),
///     });
///
///     var devconnect_p4sa = new Gcp.Projects.ServiceIdentity("devconnect-p4sa", new()
///     {
///         Service = "developerconnect.googleapis.com",
///     });
///
///     var p4sa_secretAccessor = Gcp.Organizations.GetIAMPolicy.Invoke(new()
///     {
///         Bindings = new[]
///         {
///             new Gcp.Organizations.Inputs.GetIAMPolicyBindingInputArgs
///             {
///                 Role = "roles/secretmanager.secretAccessor",
///                 Members = new[]
///                 {
///                     devconnect_p4sa.Member,
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.SecretManager.SecretIamPolicy("policy", new()
///     {
///         SecretId = github_token_secret.SecretId,
///         PolicyData = p4sa_secretAccessor.Apply(p4sa_secretAccessor => p4sa_secretAccessor.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData)),
///     });
///
///     var my_connection = new Gcp.DeveloperConnect.Connection("my-connection", new()
///     {
///         Location = "us-central1",
///         ConnectionId = "my-connection",
///         GithubConfig = new Gcp.DeveloperConnect.Inputs.ConnectionGithubConfigArgs
///         {
///             GithubApp = "DEVELOPER_CONNECT",
///             AppInstallationId = "123123",
///             AuthorizerCredential = new Gcp.DeveloperConnect.Inputs.ConnectionGithubConfigAuthorizerCredentialArgs
///             {
///                 OauthTokenSecretVersion = github_token_secret_version.Id,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/developerconnect"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		github_token_secret, err := secretmanager.NewSecret(ctx, "github-token-secret", &secretmanager.SecretArgs{
/// 			SecretId: pulumi.String("github-token-secret"),
/// 			Replication: &secretmanager.SecretReplicationArgs{
/// 				Auto: &secretmanager.SecretReplicationAutoArgs{},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "my-github-token.txt",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		github_token_secret_version, err := secretmanager.NewSecretVersion(ctx, "github-token-secret-version", &secretmanager.SecretVersionArgs{
/// 			Secret:     github_token_secret.ID(),
/// 			SecretData: pulumi.String(invokeFile.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		devconnect_p4sa, err := projects.NewServiceIdentity(ctx, "devconnect-p4sa", &projects.ServiceIdentityArgs{
/// 			Service: pulumi.String("developerconnect.googleapis.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		p4sa_secretAccessor := organizations.LookupIAMPolicyOutput(ctx, organizations.GetIAMPolicyOutputArgs{
/// 			Bindings: organizations.GetIAMPolicyBindingArray{
/// 				&organizations.GetIAMPolicyBindingArgs{
/// 					Role: pulumi.String("roles/secretmanager.secretAccessor"),
/// 					Members: pulumi.StringArray{
/// 						devconnect_p4sa.Member,
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		_, err = secretmanager.NewSecretIamPolicy(ctx, "policy", &secretmanager.SecretIamPolicyArgs{
/// 			SecretId: github_token_secret.SecretId,
/// 			PolicyData: pulumi.String(p4sa_secretAccessor.ApplyT(func(p4sa_secretAccessor organizations.GetIAMPolicyResult) (*string, error) {
/// 				return &p4sa_secretAccessor.PolicyData, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = developerconnect.NewConnection(ctx, "my-connection", &developerconnect.ConnectionArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			ConnectionId: pulumi.String("my-connection"),
/// 			GithubConfig: &developerconnect.ConnectionGithubConfigArgs{
/// 				GithubApp:         pulumi.String("DEVELOPER_CONNECT"),
/// 				AppInstallationId: pulumi.String("123123"),
/// 				AuthorizerCredential: &developerconnect.ConnectionGithubConfigAuthorizerCredentialArgs{
/// 					OauthTokenSecretVersion: github_token_secret_version.ID(),
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
/// import com.pulumi.gcp.secretmanager.Secret;
/// import com.pulumi.gcp.secretmanager.SecretArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationAutoArgs;
/// import com.pulumi.gcp.secretmanager.SecretVersion;
/// import com.pulumi.gcp.secretmanager.SecretVersionArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import com.pulumi.gcp.projects.ServiceIdentity;
/// import com.pulumi.gcp.projects.ServiceIdentityArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyArgs;
/// import com.pulumi.gcp.secretmanager.SecretIamPolicy;
/// import com.pulumi.gcp.secretmanager.SecretIamPolicyArgs;
/// import com.pulumi.gcp.developerconnect.Connection;
/// import com.pulumi.gcp.developerconnect.ConnectionArgs;
/// import com.pulumi.gcp.developerconnect.inputs.ConnectionGithubConfigArgs;
/// import com.pulumi.gcp.developerconnect.inputs.ConnectionGithubConfigAuthorizerCredentialArgs;
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
///         var github_token_secret = new Secret("github-token-secret", SecretArgs.builder()
///             .secretId("github-token-secret")
///             .replication(SecretReplicationArgs.builder()
///                 .auto(SecretReplicationAutoArgs.builder()
///                     .build())
///                 .build())
///             .build());
///
///         var github_token_secret_version = new SecretVersion("github-token-secret-version", SecretVersionArgs.builder()
///             .secret(github_token_secret.id())
///             .secretData(StdFunctions.file(FileArgs.builder()
///                 .input("my-github-token.txt")
///                 .build()).result())
///             .build());
///
///         var devconnect_p4sa = new ServiceIdentity("devconnect-p4sa", ServiceIdentityArgs.builder()
///             .service("developerconnect.googleapis.com")
///             .build());
///
///         final var p4sa-secretAccessor = OrganizationsFunctions.getIAMPolicy(GetIAMPolicyArgs.builder()
///             .bindings(GetIAMPolicyBindingArgs.builder()
///                 .role("roles/secretmanager.secretAccessor")
///                 .members(devconnect_p4sa.member())
///                 .build())
///             .build());
///
///         var policy = new SecretIamPolicy("policy", SecretIamPolicyArgs.builder()
///             .secretId(github_token_secret.secretId())
///             .policyData(p4sa_secretAccessor.applyValue(_p4sa_secretAccessor -> _p4sa_secretAccessor.policyData()))
///             .build());
///
///         var my_connection = new Connection("my-connection", ConnectionArgs.builder()
///             .location("us-central1")
///             .connectionId("my-connection")
///             .githubConfig(ConnectionGithubConfigArgs.builder()
///                 .githubApp("DEVELOPER_CONNECT")
///                 .appInstallationId("123123")
///                 .authorizerCredential(ConnectionGithubConfigAuthorizerCredentialArgs.builder()
///                     .oauthTokenSecretVersion(github_token_secret_version.id())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   github-token-secret:
///     type: gcp:secretmanager:Secret
///     properties:
///       secretId: github-token-secret
///       replication:
///         auto: {}
///   github-token-secret-version:
///     type: gcp:secretmanager:SecretVersion
///     properties:
///       secret: ${["github-token-secret"].id}
///       secretData:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: my-github-token.txt
///           return: result
///   devconnect-p4sa:
///     type: gcp:projects:ServiceIdentity
///     properties:
///       service: developerconnect.googleapis.com
///   policy:
///     type: gcp:secretmanager:SecretIamPolicy
///     properties:
///       secretId: ${["github-token-secret"].secretId}
///       policyData: ${["p4sa-secretAccessor"].policyData}
///   my-connection:
///     type: gcp:developerconnect:Connection
///     properties:
///       location: us-central1
///       connectionId: my-connection
///       githubConfig:
///         githubApp: DEVELOPER_CONNECT
///         appInstallationId: 123123
///         authorizerCredential:
///           oauthTokenSecretVersion: ${["github-token-secret-version"].id}
/// variables:
///   p4sa-secretAccessor:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/secretmanager.secretAccessor
///             members:
///               - ${["devconnect-p4sa"].member}
/// ```
///
/// ### Developer Connect Connection Github
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_connection = new gcp.developerconnect.Connection("my-connection", {
///     location: "us-central1",
///     connectionId: "tf-test-connection",
///     githubConfig: {
///         githubApp: "DEVELOPER_CONNECT",
///         authorizerCredential: {
///             oauthTokenSecretVersion: "projects/devconnect-terraform-creds/secrets/tf-test-do-not-change-github-oauthtoken-e0b9e7/versions/1",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_connection = gcp.developerconnect.Connection("my-connection",
///     location="us-central1",
///     connection_id="tf-test-connection",
///     github_config={
///         "github_app": "DEVELOPER_CONNECT",
///         "authorizer_credential": {
///             "oauth_token_secret_version": "projects/devconnect-terraform-creds/secrets/tf-test-do-not-change-github-oauthtoken-e0b9e7/versions/1",
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_connection = new Gcp.DeveloperConnect.Connection("my-connection", new()
///     {
///         Location = "us-central1",
///         ConnectionId = "tf-test-connection",
///         GithubConfig = new Gcp.DeveloperConnect.Inputs.ConnectionGithubConfigArgs
///         {
///             GithubApp = "DEVELOPER_CONNECT",
///             AuthorizerCredential = new Gcp.DeveloperConnect.Inputs.ConnectionGithubConfigAuthorizerCredentialArgs
///             {
///                 OauthTokenSecretVersion = "projects/devconnect-terraform-creds/secrets/tf-test-do-not-change-github-oauthtoken-e0b9e7/versions/1",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/developerconnect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := developerconnect.NewConnection(ctx, "my-connection", &developerconnect.ConnectionArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			ConnectionId: pulumi.String("tf-test-connection"),
/// 			GithubConfig: &developerconnect.ConnectionGithubConfigArgs{
/// 				GithubApp: pulumi.String("DEVELOPER_CONNECT"),
/// 				AuthorizerCredential: &developerconnect.ConnectionGithubConfigAuthorizerCredentialArgs{
/// 					OauthTokenSecretVersion: pulumi.String("projects/devconnect-terraform-creds/secrets/tf-test-do-not-change-github-oauthtoken-e0b9e7/versions/1"),
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
/// import com.pulumi.gcp.developerconnect.Connection;
/// import com.pulumi.gcp.developerconnect.ConnectionArgs;
/// import com.pulumi.gcp.developerconnect.inputs.ConnectionGithubConfigArgs;
/// import com.pulumi.gcp.developerconnect.inputs.ConnectionGithubConfigAuthorizerCredentialArgs;
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
///         var my_connection = new Connection("my-connection", ConnectionArgs.builder()
///             .location("us-central1")
///             .connectionId("tf-test-connection")
///             .githubConfig(ConnectionGithubConfigArgs.builder()
///                 .githubApp("DEVELOPER_CONNECT")
///                 .authorizerCredential(ConnectionGithubConfigAuthorizerCredentialArgs.builder()
///                     .oauthTokenSecretVersion("projects/devconnect-terraform-creds/secrets/tf-test-do-not-change-github-oauthtoken-e0b9e7/versions/1")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-connection:
///     type: gcp:developerconnect:Connection
///     properties:
///       location: us-central1
///       connectionId: tf-test-connection
///       githubConfig:
///         githubApp: DEVELOPER_CONNECT
///         authorizerCredential:
///           oauthTokenSecretVersion: projects/devconnect-terraform-creds/secrets/tf-test-do-not-change-github-oauthtoken-e0b9e7/versions/1
/// ```
///
/// ### Developer Connect Connection Github Doc
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const github_token_secret = new gcp.secretmanager.Secret("github-token-secret", {
///     secretId: "github-token-secret",
///     replication: {
///         auto: {},
///     },
/// });
/// const github_token_secret_version = new gcp.secretmanager.SecretVersion("github-token-secret-version", {
///     secret: github_token_secret.id,
///     secretData: std.file({
///         input: "my-github-token.txt",
///     }).then(invoke => invoke.result),
/// });
/// const p4sa_secretAccessor = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/secretmanager.secretAccessor",
///         members: ["serviceAccount:service-123456789@gcp-sa-devconnect.iam.gserviceaccount.com"],
///     }],
/// });
/// const policy = new gcp.secretmanager.SecretIamPolicy("policy", {
///     secretId: github_token_secret.secretId,
///     policyData: p4sa_secretAccessor.then(p4sa_secretAccessor => p4sa_secretAccessor.policyData),
/// });
/// const my_connection = new gcp.developerconnect.Connection("my-connection", {
///     location: "us-central1",
///     connectionId: "my-connection",
///     githubConfig: {
///         githubApp: "DEVELOPER_CONNECT",
///         appInstallationId: "123123",
///         authorizerCredential: {
///             oauthTokenSecretVersion: github_token_secret_version.id,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// github_token_secret = gcp.secretmanager.Secret("github-token-secret",
///     secret_id="github-token-secret",
///     replication={
///         "auto": {},
///     })
/// github_token_secret_version = gcp.secretmanager.SecretVersion("github-token-secret-version",
///     secret=github_token_secret.id,
///     secret_data=std.file(input="my-github-token.txt").result)
/// p4sa_secret_accessor = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/secretmanager.secretAccessor",
///     "members": ["serviceAccount:service-123456789@gcp-sa-devconnect.iam.gserviceaccount.com"],
/// }])
/// policy = gcp.secretmanager.SecretIamPolicy("policy",
///     secret_id=github_token_secret.secret_id,
///     policy_data=p4sa_secret_accessor.policy_data)
/// my_connection = gcp.developerconnect.Connection("my-connection",
///     location="us-central1",
///     connection_id="my-connection",
///     github_config={
///         "github_app": "DEVELOPER_CONNECT",
///         "app_installation_id": "123123",
///         "authorizer_credential": {
///             "oauth_token_secret_version": github_token_secret_version.id,
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var github_token_secret = new Gcp.SecretManager.Secret("github-token-secret", new()
///     {
///         SecretId = "github-token-secret",
///         Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
///         {
///             Auto = null,
///         },
///     });
///
///     var github_token_secret_version = new Gcp.SecretManager.SecretVersion("github-token-secret-version", new()
///     {
///         Secret = github_token_secret.Id,
///         SecretData = Std.File.Invoke(new()
///         {
///             Input = "my-github-token.txt",
///         }).Apply(invoke => invoke.Result),
///     });
///
///     var p4sa_secretAccessor = Gcp.Organizations.GetIAMPolicy.Invoke(new()
///     {
///         Bindings = new[]
///         {
///             new Gcp.Organizations.Inputs.GetIAMPolicyBindingInputArgs
///             {
///                 Role = "roles/secretmanager.secretAccessor",
///                 Members = new[]
///                 {
///                     "serviceAccount:service-123456789@gcp-sa-devconnect.iam.gserviceaccount.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.SecretManager.SecretIamPolicy("policy", new()
///     {
///         SecretId = github_token_secret.SecretId,
///         PolicyData = p4sa_secretAccessor.Apply(p4sa_secretAccessor => p4sa_secretAccessor.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData)),
///     });
///
///     var my_connection = new Gcp.DeveloperConnect.Connection("my-connection", new()
///     {
///         Location = "us-central1",
///         ConnectionId = "my-connection",
///         GithubConfig = new Gcp.DeveloperConnect.Inputs.ConnectionGithubConfigArgs
///         {
///             GithubApp = "DEVELOPER_CONNECT",
///             AppInstallationId = "123123",
///             AuthorizerCredential = new Gcp.DeveloperConnect.Inputs.ConnectionGithubConfigAuthorizerCredentialArgs
///             {
///                 OauthTokenSecretVersion = github_token_secret_version.Id,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/developerconnect"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		github_token_secret, err := secretmanager.NewSecret(ctx, "github-token-secret", &secretmanager.SecretArgs{
/// 			SecretId: pulumi.String("github-token-secret"),
/// 			Replication: &secretmanager.SecretReplicationArgs{
/// 				Auto: &secretmanager.SecretReplicationAutoArgs{},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "my-github-token.txt",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		github_token_secret_version, err := secretmanager.NewSecretVersion(ctx, "github-token-secret-version", &secretmanager.SecretVersionArgs{
/// 			Secret:     github_token_secret.ID(),
/// 			SecretData: pulumi.String(invokeFile.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		p4sa_secretAccessor, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/secretmanager.secretAccessor",
/// 					Members: []string{
/// 						"serviceAccount:service-123456789@gcp-sa-devconnect.iam.gserviceaccount.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = secretmanager.NewSecretIamPolicy(ctx, "policy", &secretmanager.SecretIamPolicyArgs{
/// 			SecretId:   github_token_secret.SecretId,
/// 			PolicyData: pulumi.String(p4sa_secretAccessor.PolicyData),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = developerconnect.NewConnection(ctx, "my-connection", &developerconnect.ConnectionArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			ConnectionId: pulumi.String("my-connection"),
/// 			GithubConfig: &developerconnect.ConnectionGithubConfigArgs{
/// 				GithubApp:         pulumi.String("DEVELOPER_CONNECT"),
/// 				AppInstallationId: pulumi.String("123123"),
/// 				AuthorizerCredential: &developerconnect.ConnectionGithubConfigAuthorizerCredentialArgs{
/// 					OauthTokenSecretVersion: github_token_secret_version.ID(),
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
/// import com.pulumi.gcp.secretmanager.Secret;
/// import com.pulumi.gcp.secretmanager.SecretArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationAutoArgs;
/// import com.pulumi.gcp.secretmanager.SecretVersion;
/// import com.pulumi.gcp.secretmanager.SecretVersionArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyArgs;
/// import com.pulumi.gcp.secretmanager.SecretIamPolicy;
/// import com.pulumi.gcp.secretmanager.SecretIamPolicyArgs;
/// import com.pulumi.gcp.developerconnect.Connection;
/// import com.pulumi.gcp.developerconnect.ConnectionArgs;
/// import com.pulumi.gcp.developerconnect.inputs.ConnectionGithubConfigArgs;
/// import com.pulumi.gcp.developerconnect.inputs.ConnectionGithubConfigAuthorizerCredentialArgs;
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
///         var github_token_secret = new Secret("github-token-secret", SecretArgs.builder()
///             .secretId("github-token-secret")
///             .replication(SecretReplicationArgs.builder()
///                 .auto(SecretReplicationAutoArgs.builder()
///                     .build())
///                 .build())
///             .build());
///
///         var github_token_secret_version = new SecretVersion("github-token-secret-version", SecretVersionArgs.builder()
///             .secret(github_token_secret.id())
///             .secretData(StdFunctions.file(FileArgs.builder()
///                 .input("my-github-token.txt")
///                 .build()).result())
///             .build());
///
///         final var p4sa-secretAccessor = OrganizationsFunctions.getIAMPolicy(GetIAMPolicyArgs.builder()
///             .bindings(GetIAMPolicyBindingArgs.builder()
///                 .role("roles/secretmanager.secretAccessor")
///                 .members("serviceAccount:service-123456789@gcp-sa-devconnect.iam.gserviceaccount.com")
///                 .build())
///             .build());
///
///         var policy = new SecretIamPolicy("policy", SecretIamPolicyArgs.builder()
///             .secretId(github_token_secret.secretId())
///             .policyData(p4sa_secretAccessor.policyData())
///             .build());
///
///         var my_connection = new Connection("my-connection", ConnectionArgs.builder()
///             .location("us-central1")
///             .connectionId("my-connection")
///             .githubConfig(ConnectionGithubConfigArgs.builder()
///                 .githubApp("DEVELOPER_CONNECT")
///                 .appInstallationId("123123")
///                 .authorizerCredential(ConnectionGithubConfigAuthorizerCredentialArgs.builder()
///                     .oauthTokenSecretVersion(github_token_secret_version.id())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   github-token-secret:
///     type: gcp:secretmanager:Secret
///     properties:
///       secretId: github-token-secret
///       replication:
///         auto: {}
///   github-token-secret-version:
///     type: gcp:secretmanager:SecretVersion
///     properties:
///       secret: ${["github-token-secret"].id}
///       secretData:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: my-github-token.txt
///           return: result
///   policy:
///     type: gcp:secretmanager:SecretIamPolicy
///     properties:
///       secretId: ${["github-token-secret"].secretId}
///       policyData: ${["p4sa-secretAccessor"].policyData}
///   my-connection:
///     type: gcp:developerconnect:Connection
///     properties:
///       location: us-central1
///       connectionId: my-connection
///       githubConfig:
///         githubApp: DEVELOPER_CONNECT
///         appInstallationId: 123123
///         authorizerCredential:
///           oauthTokenSecretVersion: ${["github-token-secret-version"].id}
/// variables:
///   p4sa-secretAccessor:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/secretmanager.secretAccessor
///             members:
///               - serviceAccount:service-123456789@gcp-sa-devconnect.iam.gserviceaccount.com
/// ```
///
/// ### Developer Connect Connection Github Enterprise
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_connection = new gcp.developerconnect.Connection("my-connection", {
///     location: "us-central1",
///     connectionId: "tf-test-connection",
///     githubEnterpriseConfig: {
///         hostUri: "https://ghe.proctor-staging-test.com",
///         appId: "864434",
///         privateKeySecretVersion: "projects/devconnect-terraform-creds/secrets/tf-test-ghe-do-not-change-ghe-private-key-f522d2/versions/latest",
///         webhookSecretSecretVersion: "projects/devconnect-terraform-creds/secrets/tf-test-ghe-do-not-change-ghe-webhook-secret-3c806f/versions/latest",
///         appInstallationId: "837537",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_connection = gcp.developerconnect.Connection("my-connection",
///     location="us-central1",
///     connection_id="tf-test-connection",
///     github_enterprise_config={
///         "host_uri": "https://ghe.proctor-staging-test.com",
///         "app_id": "864434",
///         "private_key_secret_version": "projects/devconnect-terraform-creds/secrets/tf-test-ghe-do-not-change-ghe-private-key-f522d2/versions/latest",
///         "webhook_secret_secret_version": "projects/devconnect-terraform-creds/secrets/tf-test-ghe-do-not-change-ghe-webhook-secret-3c806f/versions/latest",
///         "app_installation_id": "837537",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_connection = new Gcp.DeveloperConnect.Connection("my-connection", new()
///     {
///         Location = "us-central1",
///         ConnectionId = "tf-test-connection",
///         GithubEnterpriseConfig = new Gcp.DeveloperConnect.Inputs.ConnectionGithubEnterpriseConfigArgs
///         {
///             HostUri = "https://ghe.proctor-staging-test.com",
///             AppId = "864434",
///             PrivateKeySecretVersion = "projects/devconnect-terraform-creds/secrets/tf-test-ghe-do-not-change-ghe-private-key-f522d2/versions/latest",
///             WebhookSecretSecretVersion = "projects/devconnect-terraform-creds/secrets/tf-test-ghe-do-not-change-ghe-webhook-secret-3c806f/versions/latest",
///             AppInstallationId = "837537",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/developerconnect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := developerconnect.NewConnection(ctx, "my-connection", &developerconnect.ConnectionArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			ConnectionId: pulumi.String("tf-test-connection"),
/// 			GithubEnterpriseConfig: &developerconnect.ConnectionGithubEnterpriseConfigArgs{
/// 				HostUri:                    pulumi.String("https://ghe.proctor-staging-test.com"),
/// 				AppId:                      pulumi.String("864434"),
/// 				PrivateKeySecretVersion:    pulumi.String("projects/devconnect-terraform-creds/secrets/tf-test-ghe-do-not-change-ghe-private-key-f522d2/versions/latest"),
/// 				WebhookSecretSecretVersion: pulumi.String("projects/devconnect-terraform-creds/secrets/tf-test-ghe-do-not-change-ghe-webhook-secret-3c806f/versions/latest"),
/// 				AppInstallationId:          pulumi.String("837537"),
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
/// import com.pulumi.gcp.developerconnect.Connection;
/// import com.pulumi.gcp.developerconnect.ConnectionArgs;
/// import com.pulumi.gcp.developerconnect.inputs.ConnectionGithubEnterpriseConfigArgs;
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
///         var my_connection = new Connection("my-connection", ConnectionArgs.builder()
///             .location("us-central1")
///             .connectionId("tf-test-connection")
///             .githubEnterpriseConfig(ConnectionGithubEnterpriseConfigArgs.builder()
///                 .hostUri("https://ghe.proctor-staging-test.com")
///                 .appId("864434")
///                 .privateKeySecretVersion("projects/devconnect-terraform-creds/secrets/tf-test-ghe-do-not-change-ghe-private-key-f522d2/versions/latest")
///                 .webhookSecretSecretVersion("projects/devconnect-terraform-creds/secrets/tf-test-ghe-do-not-change-ghe-webhook-secret-3c806f/versions/latest")
///                 .appInstallationId("837537")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-connection:
///     type: gcp:developerconnect:Connection
///     properties:
///       location: us-central1
///       connectionId: tf-test-connection
///       githubEnterpriseConfig:
///         hostUri: https://ghe.proctor-staging-test.com
///         appId: 864434
///         privateKeySecretVersion: projects/devconnect-terraform-creds/secrets/tf-test-ghe-do-not-change-ghe-private-key-f522d2/versions/latest
///         webhookSecretSecretVersion: projects/devconnect-terraform-creds/secrets/tf-test-ghe-do-not-change-ghe-webhook-secret-3c806f/versions/latest
///         appInstallationId: 837537
/// ```
///
/// ### Developer Connect Connection Github Enterprise Doc
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const private_key_secret = new gcp.secretmanager.Secret("private-key-secret", {
///     secretId: "ghe-pk-secret",
///     replication: {
///         auto: {},
///     },
/// });
/// const private_key_secret_version = new gcp.secretmanager.SecretVersion("private-key-secret-version", {
///     secret: private_key_secret.id,
///     secretData: std.file({
///         input: "private-key.pem",
///     }).then(invoke => invoke.result),
/// });
/// const webhook_secret_secret = new gcp.secretmanager.Secret("webhook-secret-secret", {
///     secretId: "ghe-token-secret",
///     replication: {
///         auto: {},
///     },
/// });
/// const webhook_secret_secret_version = new gcp.secretmanager.SecretVersion("webhook-secret-secret-version", {
///     secret: webhook_secret_secret.id,
///     secretData: "<webhook-secret-data>",
/// });
/// const p4sa_secretAccessor = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/secretmanager.secretAccessor",
///         members: ["serviceAccount:service-123456789@gcp-sa-devconnect.iam.gserviceaccount.com"],
///     }],
/// });
/// const policy_pk = new gcp.secretmanager.SecretIamPolicy("policy-pk", {
///     secretId: private_key_secret.secretId,
///     policyData: p4sa_secretAccessor.then(p4sa_secretAccessor => p4sa_secretAccessor.policyData),
/// });
/// const policy_whs = new gcp.secretmanager.SecretIamPolicy("policy-whs", {
///     secretId: webhook_secret_secret.secretId,
///     policyData: p4sa_secretAccessor.then(p4sa_secretAccessor => p4sa_secretAccessor.policyData),
/// });
/// const my_connection = new gcp.developerconnect.Connection("my-connection", {
///     location: "us-central1",
///     connectionId: "my-connection",
///     githubEnterpriseConfig: {
///         hostUri: "https://ghe.com",
///         privateKeySecretVersion: private_key_secret_version.id,
///         webhookSecretSecretVersion: webhook_secret_secret_version.id,
///         appId: "100",
///         appInstallationId: "123123",
///     },
/// }, {
///     dependsOn: [
///         policy_pk,
///         policy_whs,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// private_key_secret = gcp.secretmanager.Secret("private-key-secret",
///     secret_id="ghe-pk-secret",
///     replication={
///         "auto": {},
///     })
/// private_key_secret_version = gcp.secretmanager.SecretVersion("private-key-secret-version",
///     secret=private_key_secret.id,
///     secret_data=std.file(input="private-key.pem").result)
/// webhook_secret_secret = gcp.secretmanager.Secret("webhook-secret-secret",
///     secret_id="ghe-token-secret",
///     replication={
///         "auto": {},
///     })
/// webhook_secret_secret_version = gcp.secretmanager.SecretVersion("webhook-secret-secret-version",
///     secret=webhook_secret_secret.id,
///     secret_data="<webhook-secret-data>")
/// p4sa_secret_accessor = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/secretmanager.secretAccessor",
///     "members": ["serviceAccount:service-123456789@gcp-sa-devconnect.iam.gserviceaccount.com"],
/// }])
/// policy_pk = gcp.secretmanager.SecretIamPolicy("policy-pk",
///     secret_id=private_key_secret.secret_id,
///     policy_data=p4sa_secret_accessor.policy_data)
/// policy_whs = gcp.secretmanager.SecretIamPolicy("policy-whs",
///     secret_id=webhook_secret_secret.secret_id,
///     policy_data=p4sa_secret_accessor.policy_data)
/// my_connection = gcp.developerconnect.Connection("my-connection",
///     location="us-central1",
///     connection_id="my-connection",
///     github_enterprise_config={
///         "host_uri": "https://ghe.com",
///         "private_key_secret_version": private_key_secret_version.id,
///         "webhook_secret_secret_version": webhook_secret_secret_version.id,
///         "app_id": "100",
///         "app_installation_id": "123123",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[
///             policy_pk,
///             policy_whs,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var private_key_secret = new Gcp.SecretManager.Secret("private-key-secret", new()
///     {
///         SecretId = "ghe-pk-secret",
///         Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
///         {
///             Auto = null,
///         },
///     });
///
///     var private_key_secret_version = new Gcp.SecretManager.SecretVersion("private-key-secret-version", new()
///     {
///         Secret = private_key_secret.Id,
///         SecretData = Std.File.Invoke(new()
///         {
///             Input = "private-key.pem",
///         }).Apply(invoke => invoke.Result),
///     });
///
///     var webhook_secret_secret = new Gcp.SecretManager.Secret("webhook-secret-secret", new()
///     {
///         SecretId = "ghe-token-secret",
///         Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
///         {
///             Auto = null,
///         },
///     });
///
///     var webhook_secret_secret_version = new Gcp.SecretManager.SecretVersion("webhook-secret-secret-version", new()
///     {
///         Secret = webhook_secret_secret.Id,
///         SecretData = "<webhook-secret-data>",
///     });
///
///     var p4sa_secretAccessor = Gcp.Organizations.GetIAMPolicy.Invoke(new()
///     {
///         Bindings = new[]
///         {
///             new Gcp.Organizations.Inputs.GetIAMPolicyBindingInputArgs
///             {
///                 Role = "roles/secretmanager.secretAccessor",
///                 Members = new[]
///                 {
///                     "serviceAccount:service-123456789@gcp-sa-devconnect.iam.gserviceaccount.com",
///                 },
///             },
///         },
///     });
///
///     var policy_pk = new Gcp.SecretManager.SecretIamPolicy("policy-pk", new()
///     {
///         SecretId = private_key_secret.SecretId,
///         PolicyData = p4sa_secretAccessor.Apply(p4sa_secretAccessor => p4sa_secretAccessor.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData)),
///     });
///
///     var policy_whs = new Gcp.SecretManager.SecretIamPolicy("policy-whs", new()
///     {
///         SecretId = webhook_secret_secret.SecretId,
///         PolicyData = p4sa_secretAccessor.Apply(p4sa_secretAccessor => p4sa_secretAccessor.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData)),
///     });
///
///     var my_connection = new Gcp.DeveloperConnect.Connection("my-connection", new()
///     {
///         Location = "us-central1",
///         ConnectionId = "my-connection",
///         GithubEnterpriseConfig = new Gcp.DeveloperConnect.Inputs.ConnectionGithubEnterpriseConfigArgs
///         {
///             HostUri = "https://ghe.com",
///             PrivateKeySecretVersion = private_key_secret_version.Id,
///             WebhookSecretSecretVersion = webhook_secret_secret_version.Id,
///             AppId = "100",
///             AppInstallationId = "123123",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             policy_pk,
///             policy_whs,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/developerconnect"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		private_key_secret, err := secretmanager.NewSecret(ctx, "private-key-secret", &secretmanager.SecretArgs{
/// 			SecretId: pulumi.String("ghe-pk-secret"),
/// 			Replication: &secretmanager.SecretReplicationArgs{
/// 				Auto: &secretmanager.SecretReplicationAutoArgs{},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "private-key.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		private_key_secret_version, err := secretmanager.NewSecretVersion(ctx, "private-key-secret-version", &secretmanager.SecretVersionArgs{
/// 			Secret:     private_key_secret.ID(),
/// 			SecretData: pulumi.String(invokeFile.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		webhook_secret_secret, err := secretmanager.NewSecret(ctx, "webhook-secret-secret", &secretmanager.SecretArgs{
/// 			SecretId: pulumi.String("ghe-token-secret"),
/// 			Replication: &secretmanager.SecretReplicationArgs{
/// 				Auto: &secretmanager.SecretReplicationAutoArgs{},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		webhook_secret_secret_version, err := secretmanager.NewSecretVersion(ctx, "webhook-secret-secret-version", &secretmanager.SecretVersionArgs{
/// 			Secret:     webhook_secret_secret.ID(),
/// 			SecretData: pulumi.String("<webhook-secret-data>"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		p4sa_secretAccessor, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/secretmanager.secretAccessor",
/// 					Members: []string{
/// 						"serviceAccount:service-123456789@gcp-sa-devconnect.iam.gserviceaccount.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		policy_pk, err := secretmanager.NewSecretIamPolicy(ctx, "policy-pk", &secretmanager.SecretIamPolicyArgs{
/// 			SecretId:   private_key_secret.SecretId,
/// 			PolicyData: pulumi.String(p4sa_secretAccessor.PolicyData),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		policy_whs, err := secretmanager.NewSecretIamPolicy(ctx, "policy-whs", &secretmanager.SecretIamPolicyArgs{
/// 			SecretId:   webhook_secret_secret.SecretId,
/// 			PolicyData: pulumi.String(p4sa_secretAccessor.PolicyData),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = developerconnect.NewConnection(ctx, "my-connection", &developerconnect.ConnectionArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			ConnectionId: pulumi.String("my-connection"),
/// 			GithubEnterpriseConfig: &developerconnect.ConnectionGithubEnterpriseConfigArgs{
/// 				HostUri:                    pulumi.String("https://ghe.com"),
/// 				PrivateKeySecretVersion:    private_key_secret_version.ID(),
/// 				WebhookSecretSecretVersion: webhook_secret_secret_version.ID(),
/// 				AppId:                      pulumi.String("100"),
/// 				AppInstallationId:          pulumi.String("123123"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			policy_pk,
/// 			policy_whs,
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
/// import com.pulumi.gcp.secretmanager.Secret;
/// import com.pulumi.gcp.secretmanager.SecretArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationAutoArgs;
/// import com.pulumi.gcp.secretmanager.SecretVersion;
/// import com.pulumi.gcp.secretmanager.SecretVersionArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyArgs;
/// import com.pulumi.gcp.secretmanager.SecretIamPolicy;
/// import com.pulumi.gcp.secretmanager.SecretIamPolicyArgs;
/// import com.pulumi.gcp.developerconnect.Connection;
/// import com.pulumi.gcp.developerconnect.ConnectionArgs;
/// import com.pulumi.gcp.developerconnect.inputs.ConnectionGithubEnterpriseConfigArgs;
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
///         var private_key_secret = new Secret("private-key-secret", SecretArgs.builder()
///             .secretId("ghe-pk-secret")
///             .replication(SecretReplicationArgs.builder()
///                 .auto(SecretReplicationAutoArgs.builder()
///                     .build())
///                 .build())
///             .build());
///
///         var private_key_secret_version = new SecretVersion("private-key-secret-version", SecretVersionArgs.builder()
///             .secret(private_key_secret.id())
///             .secretData(StdFunctions.file(FileArgs.builder()
///                 .input("private-key.pem")
///                 .build()).result())
///             .build());
///
///         var webhook_secret_secret = new Secret("webhook-secret-secret", SecretArgs.builder()
///             .secretId("ghe-token-secret")
///             .replication(SecretReplicationArgs.builder()
///                 .auto(SecretReplicationAutoArgs.builder()
///                     .build())
///                 .build())
///             .build());
///
///         var webhook_secret_secret_version = new SecretVersion("webhook-secret-secret-version", SecretVersionArgs.builder()
///             .secret(webhook_secret_secret.id())
///             .secretData("<webhook-secret-data>")
///             .build());
///
///         final var p4sa-secretAccessor = OrganizationsFunctions.getIAMPolicy(GetIAMPolicyArgs.builder()
///             .bindings(GetIAMPolicyBindingArgs.builder()
///                 .role("roles/secretmanager.secretAccessor")
///                 .members("serviceAccount:service-123456789@gcp-sa-devconnect.iam.gserviceaccount.com")
///                 .build())
///             .build());
///
///         var policy_pk = new SecretIamPolicy("policy-pk", SecretIamPolicyArgs.builder()
///             .secretId(private_key_secret.secretId())
///             .policyData(p4sa_secretAccessor.policyData())
///             .build());
///
///         var policy_whs = new SecretIamPolicy("policy-whs", SecretIamPolicyArgs.builder()
///             .secretId(webhook_secret_secret.secretId())
///             .policyData(p4sa_secretAccessor.policyData())
///             .build());
///
///         var my_connection = new Connection("my-connection", ConnectionArgs.builder()
///             .location("us-central1")
///             .connectionId("my-connection")
///             .githubEnterpriseConfig(ConnectionGithubEnterpriseConfigArgs.builder()
///                 .hostUri("https://ghe.com")
///                 .privateKeySecretVersion(private_key_secret_version.id())
///                 .webhookSecretSecretVersion(webhook_secret_secret_version.id())
///                 .appId("100")
///                 .appInstallationId("123123")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     policy_pk,
///                     policy_whs)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   private-key-secret:
///     type: gcp:secretmanager:Secret
///     properties:
///       secretId: ghe-pk-secret
///       replication:
///         auto: {}
///   private-key-secret-version:
///     type: gcp:secretmanager:SecretVersion
///     properties:
///       secret: ${["private-key-secret"].id}
///       secretData:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: private-key.pem
///           return: result
///   webhook-secret-secret:
///     type: gcp:secretmanager:Secret
///     properties:
///       secretId: ghe-token-secret
///       replication:
///         auto: {}
///   webhook-secret-secret-version:
///     type: gcp:secretmanager:SecretVersion
///     properties:
///       secret: ${["webhook-secret-secret"].id}
///       secretData: <webhook-secret-data>
///   policy-pk:
///     type: gcp:secretmanager:SecretIamPolicy
///     properties:
///       secretId: ${["private-key-secret"].secretId}
///       policyData: ${["p4sa-secretAccessor"].policyData}
///   policy-whs:
///     type: gcp:secretmanager:SecretIamPolicy
///     properties:
///       secretId: ${["webhook-secret-secret"].secretId}
///       policyData: ${["p4sa-secretAccessor"].policyData}
///   my-connection:
///     type: gcp:developerconnect:Connection
///     properties:
///       location: us-central1
///       connectionId: my-connection
///       githubEnterpriseConfig:
///         hostUri: https://ghe.com
///         privateKeySecretVersion: ${["private-key-secret-version"].id}
///         webhookSecretSecretVersion: ${["webhook-secret-secret-version"].id}
///         appId: 100
///         appInstallationId: 123123
///     options:
///       dependsOn:
///         - ${["policy-pk"]}
///         - ${["policy-whs"]}
/// variables:
///   p4sa-secretAccessor:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/secretmanager.secretAccessor
///             members:
///               - serviceAccount:service-123456789@gcp-sa-devconnect.iam.gserviceaccount.com
/// ```
///
/// ### Developer Connect Connection Gitlab
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_connection = new gcp.developerconnect.Connection("my-connection", {
///     location: "us-central1",
///     connectionId: "tf-test-connection",
///     gitlabConfig: {
///         webhookSecretSecretVersion: "projects/devconnect-terraform-creds/secrets/gitlab-webhook/versions/latest",
///         readAuthorizerCredential: {
///             userTokenSecretVersion: "projects/devconnect-terraform-creds/secrets/gitlab-read-cred/versions/latest",
///         },
///         authorizerCredential: {
///             userTokenSecretVersion: "projects/devconnect-terraform-creds/secrets/gitlab-auth-cred/versions/latest",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_connection = gcp.developerconnect.Connection("my-connection",
///     location="us-central1",
///     connection_id="tf-test-connection",
///     gitlab_config={
///         "webhook_secret_secret_version": "projects/devconnect-terraform-creds/secrets/gitlab-webhook/versions/latest",
///         "read_authorizer_credential": {
///             "user_token_secret_version": "projects/devconnect-terraform-creds/secrets/gitlab-read-cred/versions/latest",
///         },
///         "authorizer_credential": {
///             "user_token_secret_version": "projects/devconnect-terraform-creds/secrets/gitlab-auth-cred/versions/latest",
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_connection = new Gcp.DeveloperConnect.Connection("my-connection", new()
///     {
///         Location = "us-central1",
///         ConnectionId = "tf-test-connection",
///         GitlabConfig = new Gcp.DeveloperConnect.Inputs.ConnectionGitlabConfigArgs
///         {
///             WebhookSecretSecretVersion = "projects/devconnect-terraform-creds/secrets/gitlab-webhook/versions/latest",
///             ReadAuthorizerCredential = new Gcp.DeveloperConnect.Inputs.ConnectionGitlabConfigReadAuthorizerCredentialArgs
///             {
///                 UserTokenSecretVersion = "projects/devconnect-terraform-creds/secrets/gitlab-read-cred/versions/latest",
///             },
///             AuthorizerCredential = new Gcp.DeveloperConnect.Inputs.ConnectionGitlabConfigAuthorizerCredentialArgs
///             {
///                 UserTokenSecretVersion = "projects/devconnect-terraform-creds/secrets/gitlab-auth-cred/versions/latest",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/developerconnect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := developerconnect.NewConnection(ctx, "my-connection", &developerconnect.ConnectionArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			ConnectionId: pulumi.String("tf-test-connection"),
/// 			GitlabConfig: &developerconnect.ConnectionGitlabConfigArgs{
/// 				WebhookSecretSecretVersion: pulumi.String("projects/devconnect-terraform-creds/secrets/gitlab-webhook/versions/latest"),
/// 				ReadAuthorizerCredential: &developerconnect.ConnectionGitlabConfigReadAuthorizerCredentialArgs{
/// 					UserTokenSecretVersion: pulumi.String("projects/devconnect-terraform-creds/secrets/gitlab-read-cred/versions/latest"),
/// 				},
/// 				AuthorizerCredential: &developerconnect.ConnectionGitlabConfigAuthorizerCredentialArgs{
/// 					UserTokenSecretVersion: pulumi.String("projects/devconnect-terraform-creds/secrets/gitlab-auth-cred/versions/latest"),
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
/// import com.pulumi.gcp.developerconnect.Connection;
/// import com.pulumi.gcp.developerconnect.ConnectionArgs;
/// import com.pulumi.gcp.developerconnect.inputs.ConnectionGitlabConfigArgs;
/// import com.pulumi.gcp.developerconnect.inputs.ConnectionGitlabConfigReadAuthorizerCredentialArgs;
/// import com.pulumi.gcp.developerconnect.inputs.ConnectionGitlabConfigAuthorizerCredentialArgs;
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
///         var my_connection = new Connection("my-connection", ConnectionArgs.builder()
///             .location("us-central1")
///             .connectionId("tf-test-connection")
///             .gitlabConfig(ConnectionGitlabConfigArgs.builder()
///                 .webhookSecretSecretVersion("projects/devconnect-terraform-creds/secrets/gitlab-webhook/versions/latest")
///                 .readAuthorizerCredential(ConnectionGitlabConfigReadAuthorizerCredentialArgs.builder()
///                     .userTokenSecretVersion("projects/devconnect-terraform-creds/secrets/gitlab-read-cred/versions/latest")
///                     .build())
///                 .authorizerCredential(ConnectionGitlabConfigAuthorizerCredentialArgs.builder()
///                     .userTokenSecretVersion("projects/devconnect-terraform-creds/secrets/gitlab-auth-cred/versions/latest")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-connection:
///     type: gcp:developerconnect:Connection
///     properties:
///       location: us-central1
///       connectionId: tf-test-connection
///       gitlabConfig:
///         webhookSecretSecretVersion: projects/devconnect-terraform-creds/secrets/gitlab-webhook/versions/latest
///         readAuthorizerCredential:
///           userTokenSecretVersion: projects/devconnect-terraform-creds/secrets/gitlab-read-cred/versions/latest
///         authorizerCredential:
///           userTokenSecretVersion: projects/devconnect-terraform-creds/secrets/gitlab-auth-cred/versions/latest
/// ```
///
/// ### Developer Connect Connection Gitlab Enterprise
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_connection = new gcp.developerconnect.Connection("my-connection", {
///     location: "us-central1",
///     connectionId: "tf-test-connection",
///     gitlabEnterpriseConfig: {
///         hostUri: "https://gle-us-central1.gcb-test.com",
///         webhookSecretSecretVersion: "projects/devconnect-terraform-creds/secrets/gitlab-enterprise-webhook/versions/latest",
///         readAuthorizerCredential: {
///             userTokenSecretVersion: "projects/devconnect-terraform-creds/secrets/gitlab-enterprise-read-cred/versions/latest",
///         },
///         authorizerCredential: {
///             userTokenSecretVersion: "projects/devconnect-terraform-creds/secrets/gitlab-enterprise-auth-cred/versions/latest",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_connection = gcp.developerconnect.Connection("my-connection",
///     location="us-central1",
///     connection_id="tf-test-connection",
///     gitlab_enterprise_config={
///         "host_uri": "https://gle-us-central1.gcb-test.com",
///         "webhook_secret_secret_version": "projects/devconnect-terraform-creds/secrets/gitlab-enterprise-webhook/versions/latest",
///         "read_authorizer_credential": {
///             "user_token_secret_version": "projects/devconnect-terraform-creds/secrets/gitlab-enterprise-read-cred/versions/latest",
///         },
///         "authorizer_credential": {
///             "user_token_secret_version": "projects/devconnect-terraform-creds/secrets/gitlab-enterprise-auth-cred/versions/latest",
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_connection = new Gcp.DeveloperConnect.Connection("my-connection", new()
///     {
///         Location = "us-central1",
///         ConnectionId = "tf-test-connection",
///         GitlabEnterpriseConfig = new Gcp.DeveloperConnect.Inputs.ConnectionGitlabEnterpriseConfigArgs
///         {
///             HostUri = "https://gle-us-central1.gcb-test.com",
///             WebhookSecretSecretVersion = "projects/devconnect-terraform-creds/secrets/gitlab-enterprise-webhook/versions/latest",
///             ReadAuthorizerCredential = new Gcp.DeveloperConnect.Inputs.ConnectionGitlabEnterpriseConfigReadAuthorizerCredentialArgs
///             {
///                 UserTokenSecretVersion = "projects/devconnect-terraform-creds/secrets/gitlab-enterprise-read-cred/versions/latest",
///             },
///             AuthorizerCredential = new Gcp.DeveloperConnect.Inputs.ConnectionGitlabEnterpriseConfigAuthorizerCredentialArgs
///             {
///                 UserTokenSecretVersion = "projects/devconnect-terraform-creds/secrets/gitlab-enterprise-auth-cred/versions/latest",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/developerconnect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := developerconnect.NewConnection(ctx, "my-connection", &developerconnect.ConnectionArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			ConnectionId: pulumi.String("tf-test-connection"),
/// 			GitlabEnterpriseConfig: &developerconnect.ConnectionGitlabEnterpriseConfigArgs{
/// 				HostUri:                    pulumi.String("https://gle-us-central1.gcb-test.com"),
/// 				WebhookSecretSecretVersion: pulumi.String("projects/devconnect-terraform-creds/secrets/gitlab-enterprise-webhook/versions/latest"),
/// 				ReadAuthorizerCredential: &developerconnect.ConnectionGitlabEnterpriseConfigReadAuthorizerCredentialArgs{
/// 					UserTokenSecretVersion: pulumi.String("projects/devconnect-terraform-creds/secrets/gitlab-enterprise-read-cred/versions/latest"),
/// 				},
/// 				AuthorizerCredential: &developerconnect.ConnectionGitlabEnterpriseConfigAuthorizerCredentialArgs{
/// 					UserTokenSecretVersion: pulumi.String("projects/devconnect-terraform-creds/secrets/gitlab-enterprise-auth-cred/versions/latest"),
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
/// import com.pulumi.gcp.developerconnect.Connection;
/// import com.pulumi.gcp.developerconnect.ConnectionArgs;
/// import com.pulumi.gcp.developerconnect.inputs.ConnectionGitlabEnterpriseConfigArgs;
/// import com.pulumi.gcp.developerconnect.inputs.ConnectionGitlabEnterpriseConfigReadAuthorizerCredentialArgs;
/// import com.pulumi.gcp.developerconnect.inputs.ConnectionGitlabEnterpriseConfigAuthorizerCredentialArgs;
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
///         var my_connection = new Connection("my-connection", ConnectionArgs.builder()
///             .location("us-central1")
///             .connectionId("tf-test-connection")
///             .gitlabEnterpriseConfig(ConnectionGitlabEnterpriseConfigArgs.builder()
///                 .hostUri("https://gle-us-central1.gcb-test.com")
///                 .webhookSecretSecretVersion("projects/devconnect-terraform-creds/secrets/gitlab-enterprise-webhook/versions/latest")
///                 .readAuthorizerCredential(ConnectionGitlabEnterpriseConfigReadAuthorizerCredentialArgs.builder()
///                     .userTokenSecretVersion("projects/devconnect-terraform-creds/secrets/gitlab-enterprise-read-cred/versions/latest")
///                     .build())
///                 .authorizerCredential(ConnectionGitlabEnterpriseConfigAuthorizerCredentialArgs.builder()
///                     .userTokenSecretVersion("projects/devconnect-terraform-creds/secrets/gitlab-enterprise-auth-cred/versions/latest")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-connection:
///     type: gcp:developerconnect:Connection
///     properties:
///       location: us-central1
///       connectionId: tf-test-connection
///       gitlabEnterpriseConfig:
///         hostUri: https://gle-us-central1.gcb-test.com
///         webhookSecretSecretVersion: projects/devconnect-terraform-creds/secrets/gitlab-enterprise-webhook/versions/latest
///         readAuthorizerCredential:
///           userTokenSecretVersion: projects/devconnect-terraform-creds/secrets/gitlab-enterprise-read-cred/versions/latest
///         authorizerCredential:
///           userTokenSecretVersion: projects/devconnect-terraform-creds/secrets/gitlab-enterprise-auth-cred/versions/latest
/// ```
///
/// ### Developer Connect Connection Bbc
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_connection = new gcp.developerconnect.Connection("my-connection", {
///     location: "us-central1",
///     connectionId: "tf-test-connection",
///     bitbucketCloudConfig: {
///         workspace: "proctor-test",
///         webhookSecretSecretVersion: "projects/devconnect-terraform-creds/secrets/bbc-webhook/versions/latest",
///         readAuthorizerCredential: {
///             userTokenSecretVersion: "projects/devconnect-terraform-creds/secrets/bbc-read-token/versions/latest",
///         },
///         authorizerCredential: {
///             userTokenSecretVersion: "projects/devconnect-terraform-creds/secrets/bbc-auth-token/versions/latest",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_connection = gcp.developerconnect.Connection("my-connection",
///     location="us-central1",
///     connection_id="tf-test-connection",
///     bitbucket_cloud_config={
///         "workspace": "proctor-test",
///         "webhook_secret_secret_version": "projects/devconnect-terraform-creds/secrets/bbc-webhook/versions/latest",
///         "read_authorizer_credential": {
///             "user_token_secret_version": "projects/devconnect-terraform-creds/secrets/bbc-read-token/versions/latest",
///         },
///         "authorizer_credential": {
///             "user_token_secret_version": "projects/devconnect-terraform-creds/secrets/bbc-auth-token/versions/latest",
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_connection = new Gcp.DeveloperConnect.Connection("my-connection", new()
///     {
///         Location = "us-central1",
///         ConnectionId = "tf-test-connection",
///         BitbucketCloudConfig = new Gcp.DeveloperConnect.Inputs.ConnectionBitbucketCloudConfigArgs
///         {
///             Workspace = "proctor-test",
///             WebhookSecretSecretVersion = "projects/devconnect-terraform-creds/secrets/bbc-webhook/versions/latest",
///             ReadAuthorizerCredential = new Gcp.DeveloperConnect.Inputs.ConnectionBitbucketCloudConfigReadAuthorizerCredentialArgs
///             {
///                 UserTokenSecretVersion = "projects/devconnect-terraform-creds/secrets/bbc-read-token/versions/latest",
///             },
///             AuthorizerCredential = new Gcp.DeveloperConnect.Inputs.ConnectionBitbucketCloudConfigAuthorizerCredentialArgs
///             {
///                 UserTokenSecretVersion = "projects/devconnect-terraform-creds/secrets/bbc-auth-token/versions/latest",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/developerconnect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := developerconnect.NewConnection(ctx, "my-connection", &developerconnect.ConnectionArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			ConnectionId: pulumi.String("tf-test-connection"),
/// 			BitbucketCloudConfig: &developerconnect.ConnectionBitbucketCloudConfigArgs{
/// 				Workspace:                  pulumi.String("proctor-test"),
/// 				WebhookSecretSecretVersion: pulumi.String("projects/devconnect-terraform-creds/secrets/bbc-webhook/versions/latest"),
/// 				ReadAuthorizerCredential: &developerconnect.ConnectionBitbucketCloudConfigReadAuthorizerCredentialArgs{
/// 					UserTokenSecretVersion: pulumi.String("projects/devconnect-terraform-creds/secrets/bbc-read-token/versions/latest"),
/// 				},
/// 				AuthorizerCredential: &developerconnect.ConnectionBitbucketCloudConfigAuthorizerCredentialArgs{
/// 					UserTokenSecretVersion: pulumi.String("projects/devconnect-terraform-creds/secrets/bbc-auth-token/versions/latest"),
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
/// import com.pulumi.gcp.developerconnect.Connection;
/// import com.pulumi.gcp.developerconnect.ConnectionArgs;
/// import com.pulumi.gcp.developerconnect.inputs.ConnectionBitbucketCloudConfigArgs;
/// import com.pulumi.gcp.developerconnect.inputs.ConnectionBitbucketCloudConfigReadAuthorizerCredentialArgs;
/// import com.pulumi.gcp.developerconnect.inputs.ConnectionBitbucketCloudConfigAuthorizerCredentialArgs;
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
///         var my_connection = new Connection("my-connection", ConnectionArgs.builder()
///             .location("us-central1")
///             .connectionId("tf-test-connection")
///             .bitbucketCloudConfig(ConnectionBitbucketCloudConfigArgs.builder()
///                 .workspace("proctor-test")
///                 .webhookSecretSecretVersion("projects/devconnect-terraform-creds/secrets/bbc-webhook/versions/latest")
///                 .readAuthorizerCredential(ConnectionBitbucketCloudConfigReadAuthorizerCredentialArgs.builder()
///                     .userTokenSecretVersion("projects/devconnect-terraform-creds/secrets/bbc-read-token/versions/latest")
///                     .build())
///                 .authorizerCredential(ConnectionBitbucketCloudConfigAuthorizerCredentialArgs.builder()
///                     .userTokenSecretVersion("projects/devconnect-terraform-creds/secrets/bbc-auth-token/versions/latest")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-connection:
///     type: gcp:developerconnect:Connection
///     properties:
///       location: us-central1
///       connectionId: tf-test-connection
///       bitbucketCloudConfig:
///         workspace: proctor-test
///         webhookSecretSecretVersion: projects/devconnect-terraform-creds/secrets/bbc-webhook/versions/latest
///         readAuthorizerCredential:
///           userTokenSecretVersion: projects/devconnect-terraform-creds/secrets/bbc-read-token/versions/latest
///         authorizerCredential:
///           userTokenSecretVersion: projects/devconnect-terraform-creds/secrets/bbc-auth-token/versions/latest
/// ```
///
/// ### Developer Connect Connection Bbdc
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_connection = new gcp.developerconnect.Connection("my-connection", {
///     location: "us-central1",
///     connectionId: "tf-test-connection",
///     bitbucketDataCenterConfig: {
///         hostUri: "https://bitbucket-us-central.gcb-test.com",
///         webhookSecretSecretVersion: "projects/devconnect-terraform-creds/secrets/bbdc-webhook/versions/latest",
///         readAuthorizerCredential: {
///             userTokenSecretVersion: "projects/devconnect-terraform-creds/secrets/bbdc-read-token/versions/latest",
///         },
///         authorizerCredential: {
///             userTokenSecretVersion: "projects/devconnect-terraform-creds/secrets/bbdc-auth-token/versions/latest",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_connection = gcp.developerconnect.Connection("my-connection",
///     location="us-central1",
///     connection_id="tf-test-connection",
///     bitbucket_data_center_config={
///         "host_uri": "https://bitbucket-us-central.gcb-test.com",
///         "webhook_secret_secret_version": "projects/devconnect-terraform-creds/secrets/bbdc-webhook/versions/latest",
///         "read_authorizer_credential": {
///             "user_token_secret_version": "projects/devconnect-terraform-creds/secrets/bbdc-read-token/versions/latest",
///         },
///         "authorizer_credential": {
///             "user_token_secret_version": "projects/devconnect-terraform-creds/secrets/bbdc-auth-token/versions/latest",
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_connection = new Gcp.DeveloperConnect.Connection("my-connection", new()
///     {
///         Location = "us-central1",
///         ConnectionId = "tf-test-connection",
///         BitbucketDataCenterConfig = new Gcp.DeveloperConnect.Inputs.ConnectionBitbucketDataCenterConfigArgs
///         {
///             HostUri = "https://bitbucket-us-central.gcb-test.com",
///             WebhookSecretSecretVersion = "projects/devconnect-terraform-creds/secrets/bbdc-webhook/versions/latest",
///             ReadAuthorizerCredential = new Gcp.DeveloperConnect.Inputs.ConnectionBitbucketDataCenterConfigReadAuthorizerCredentialArgs
///             {
///                 UserTokenSecretVersion = "projects/devconnect-terraform-creds/secrets/bbdc-read-token/versions/latest",
///             },
///             AuthorizerCredential = new Gcp.DeveloperConnect.Inputs.ConnectionBitbucketDataCenterConfigAuthorizerCredentialArgs
///             {
///                 UserTokenSecretVersion = "projects/devconnect-terraform-creds/secrets/bbdc-auth-token/versions/latest",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/developerconnect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := developerconnect.NewConnection(ctx, "my-connection", &developerconnect.ConnectionArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			ConnectionId: pulumi.String("tf-test-connection"),
/// 			BitbucketDataCenterConfig: &developerconnect.ConnectionBitbucketDataCenterConfigArgs{
/// 				HostUri:                    pulumi.String("https://bitbucket-us-central.gcb-test.com"),
/// 				WebhookSecretSecretVersion: pulumi.String("projects/devconnect-terraform-creds/secrets/bbdc-webhook/versions/latest"),
/// 				ReadAuthorizerCredential: &developerconnect.ConnectionBitbucketDataCenterConfigReadAuthorizerCredentialArgs{
/// 					UserTokenSecretVersion: pulumi.String("projects/devconnect-terraform-creds/secrets/bbdc-read-token/versions/latest"),
/// 				},
/// 				AuthorizerCredential: &developerconnect.ConnectionBitbucketDataCenterConfigAuthorizerCredentialArgs{
/// 					UserTokenSecretVersion: pulumi.String("projects/devconnect-terraform-creds/secrets/bbdc-auth-token/versions/latest"),
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
/// import com.pulumi.gcp.developerconnect.Connection;
/// import com.pulumi.gcp.developerconnect.ConnectionArgs;
/// import com.pulumi.gcp.developerconnect.inputs.ConnectionBitbucketDataCenterConfigArgs;
/// import com.pulumi.gcp.developerconnect.inputs.ConnectionBitbucketDataCenterConfigReadAuthorizerCredentialArgs;
/// import com.pulumi.gcp.developerconnect.inputs.ConnectionBitbucketDataCenterConfigAuthorizerCredentialArgs;
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
///         var my_connection = new Connection("my-connection", ConnectionArgs.builder()
///             .location("us-central1")
///             .connectionId("tf-test-connection")
///             .bitbucketDataCenterConfig(ConnectionBitbucketDataCenterConfigArgs.builder()
///                 .hostUri("https://bitbucket-us-central.gcb-test.com")
///                 .webhookSecretSecretVersion("projects/devconnect-terraform-creds/secrets/bbdc-webhook/versions/latest")
///                 .readAuthorizerCredential(ConnectionBitbucketDataCenterConfigReadAuthorizerCredentialArgs.builder()
///                     .userTokenSecretVersion("projects/devconnect-terraform-creds/secrets/bbdc-read-token/versions/latest")
///                     .build())
///                 .authorizerCredential(ConnectionBitbucketDataCenterConfigAuthorizerCredentialArgs.builder()
///                     .userTokenSecretVersion("projects/devconnect-terraform-creds/secrets/bbdc-auth-token/versions/latest")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-connection:
///     type: gcp:developerconnect:Connection
///     properties:
///       location: us-central1
///       connectionId: tf-test-connection
///       bitbucketDataCenterConfig:
///         hostUri: https://bitbucket-us-central.gcb-test.com
///         webhookSecretSecretVersion: projects/devconnect-terraform-creds/secrets/bbdc-webhook/versions/latest
///         readAuthorizerCredential:
///           userTokenSecretVersion: projects/devconnect-terraform-creds/secrets/bbdc-read-token/versions/latest
///         authorizerCredential:
///           userTokenSecretVersion: projects/devconnect-terraform-creds/secrets/bbdc-auth-token/versions/latest
/// ```
///
/// ## Import
///
/// Connection can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/connections/{{connection_id}}`
///
/// * `{{project}}/{{location}}/{{connection_id}}`
///
/// * `{{location}}/{{connection_id}}`
///
/// When using the `pulumi import` command, Connection can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:developerconnect/connection:Connection default projects/{{project}}/locations/{{location}}/connections/{{connection_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:developerconnect/connection:Connection default {{project}}/{{location}}/{{connection_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:developerconnect/connection:Connection default {{location}}/{{connection_id}}
/// ```
class Connection extends pulumi.CustomResource {
  /// Optional. Allows clients to store small amounts of arbitrary data.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;

  /// Configuration for connections to an instance of Bitbucket Cloud.
  /// Structure is documented below.
  late final pulumi.Output<ConnectionBitbucketCloudConfig?>
      bitbucketCloudConfig;

  /// Configuration for connections to an instance of Bitbucket Data Center.
  /// Structure is documented below.
  late final pulumi.Output<ConnectionBitbucketDataCenterConfig?>
      bitbucketDataCenterConfig;

  /// Required. Id of the requesting object
  /// If auto-generating Id server-side, remove this field and
  /// connection_id from the method_signature of Create RPC
  late final pulumi.Output<String> connectionId;

  /// Output only. [Output only] Create timestamp
  late final pulumi.Output<String> createTime;

  /// The crypto key configuration. This field is used by the Customer-managed
  /// encryption keys (CMEK) feature.
  /// Structure is documented below.
  late final pulumi.Output<ConnectionCryptoKeyConfig?> cryptoKeyConfig;

  /// Output only. [Output only] Delete timestamp
  late final pulumi.Output<String> deleteTime;

  /// Optional. If disabled is set to true, functionality is disabled for this connection.
  /// Repository based API methods and webhooks processing for repositories in
  /// this connection will be disabled.
  late final pulumi.Output<bool?> disabled;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Optional. This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the
  /// client has an up-to-date value before proceeding.
  late final pulumi.Output<String?> etag;

  /// Configuration for connections to github.com.
  /// Structure is documented below.
  late final pulumi.Output<ConnectionGithubConfig?> githubConfig;

  /// Configuration for connections to an instance of GitHub Enterprise.
  /// Structure is documented below.
  late final pulumi.Output<ConnectionGithubEnterpriseConfig?>
      githubEnterpriseConfig;

  /// Configuration for connections to gitlab.com.
  /// Structure is documented below.
  late final pulumi.Output<ConnectionGitlabConfig?> gitlabConfig;

  /// Configuration for connections to an instance of GitLab Enterprise.
  /// Structure is documented below.
  late final pulumi.Output<ConnectionGitlabEnterpriseConfig?>
      gitlabEnterpriseConfig;

  /// Describes stage and necessary actions to be taken by the
  /// user to complete the installation. Used for GitHub and GitHub Enterprise
  /// based connections.
  /// Structure is documented below.
  late final pulumi.Output<List<ConnectionInstallationState>>
      installationStates;

  /// Optional. Labels as key value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;

  /// Identifier. The resource name of the connection, in the format
  /// `projects/{project}/locations/{location}/connections/{connection_id}`.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Output only. Set to true when the connection is being set up or updated in the
  /// background.
  late final pulumi.Output<bool> reconciling;

  /// Output only. A system-assigned unique identifier for a the GitRepositoryLink.
  late final pulumi.Output<String> uid;

  /// Output only. [Output only] Update timestamp
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Connection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Connection]. {@macro pulumi_developerconnect_connection_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Connection(
    String name, {
    ConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:developerconnect/connection:Connection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.bitbucketCloudConfig =
        registerOutput<ConnectionBitbucketCloudConfig?>('bitbucketCloudConfig');
    this.bitbucketDataCenterConfig =
        registerOutput<ConnectionBitbucketDataCenterConfig?>(
            'bitbucketDataCenterConfig');
    this.connectionId = registerOutput<String>('connectionId');
    this.createTime = registerOutput<String>('createTime');
    this.cryptoKeyConfig =
        registerOutput<ConnectionCryptoKeyConfig?>('cryptoKeyConfig');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.disabled = registerOutput<bool?>('disabled');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.etag = registerOutput<String?>('etag');
    this.githubConfig = registerOutput<ConnectionGithubConfig?>('githubConfig');
    this.githubEnterpriseConfig =
        registerOutput<ConnectionGithubEnterpriseConfig?>(
            'githubEnterpriseConfig');
    this.gitlabConfig = registerOutput<ConnectionGitlabConfig?>('gitlabConfig');
    this.gitlabEnterpriseConfig =
        registerOutput<ConnectionGitlabEnterpriseConfig?>(
            'gitlabEnterpriseConfig');
    this.installationStates =
        registerOutput<List<ConnectionInstallationState>>('installationStates');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.reconciling = registerOutput<bool>('reconciling');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
