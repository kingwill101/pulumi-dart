import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_access_token_args.dart';
import 'get_account_access_token_result.dart';
import 'get_account_args.dart';
import 'get_account_id_token_args.dart';
import 'get_account_id_token_result.dart';
import 'get_account_jwt_args.dart';
import 'get_account_jwt_result.dart';
import 'get_account_key_args.dart';
import 'get_account_key_result.dart';
import 'get_account_result.dart';
import 'get_iam_policy_args.dart';
import 'get_iam_policy_result.dart';
import 'get_sargs.dart';
import 'get_sresult.dart';

/// Get the service account from a project. For more information see
/// the official [API](https://cloud.google.com/compute/docs/access/service-accounts) documentation.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const objectViewer = gcp.serviceaccount.getAccount({
///     accountId: "object-viewer",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// object_viewer = gcp.serviceaccount.get_account(account_id="object-viewer")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var objectViewer = Gcp.ServiceAccount.GetAccount.Invoke(new()
///     {
///         AccountId = "object-viewer",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := serviceaccount.LookupAccount(ctx, &serviceaccount.LookupAccountArgs{
/// 			AccountId: "object-viewer",
/// 		}, nil)
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
/// import com.pulumi.gcp.serviceaccount.ServiceaccountFunctions;
/// import com.pulumi.gcp.serviceaccount.inputs.GetAccountArgs;
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
///         final var objectViewer = ServiceaccountFunctions.getAccount(GetAccountArgs.builder()
///             .accountId("object-viewer")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   objectViewer:
///     fn::invoke:
///       function: gcp:serviceaccount:getAccount
///       arguments:
///         accountId: object-viewer
/// ```
///
///
///
/// ### Save Key In Kubernetes Secret
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as kubernetes from "@pulumi/kubernetes";
/// import * as std from "@pulumi/std";
///
/// const myaccount = gcp.serviceaccount.getAccount({
///     accountId: "myaccount-id",
/// });
/// const mykey = new gcp.serviceaccount.Key("mykey", {serviceAccountId: myaccount.then(myaccount => myaccount.name)});
/// const google_application_credentials = new kubernetes.index.Secret("google-application-credentials", {
///     metadata: [{
///         name: "google-application-credentials",
///     }],
///     data: {
///         json: std.base64decodeOutput({
///             input: mykey.privateKey,
///         }).result,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_kubernetes as kubernetes
/// import pulumi_std as std
///
/// myaccount = gcp.serviceaccount.get_account(account_id="myaccount-id")
/// mykey = gcp.serviceaccount.Key("mykey", service_account_id=myaccount.name)
/// google_application_credentials = kubernetes.index.Secret("google-application-credentials",
///     metadata=[{
///         name: google-application-credentials,
///     }],
///     data={
///         json: std.base64decode_output(input=mykey.private_key).result,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Kubernetes = Pulumi.Kubernetes;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myaccount = Gcp.ServiceAccount.GetAccount.Invoke(new()
///     {
///         AccountId = "myaccount-id",
///     });
///
///     var mykey = new Gcp.ServiceAccount.Key("mykey", new()
///     {
///         ServiceAccountId = myaccount.Apply(getAccountResult => getAccountResult.Name),
///     });
///
///     var google_application_credentials = new Kubernetes.Index.Secret("google-application-credentials", new()
///     {
///         Metadata = new[]
///         {
///
///             {
///                 { "name", "google-application-credentials" },
///             },
///         },
///         Data =
///         {
///             { "json", Std.Base64decode.Invoke(new()
///             {
///                 Input = mykey.PrivateKey,
///             }).Result },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi-kubernetes/sdk/v4/go/kubernetes"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myaccount, err := serviceaccount.LookupAccount(ctx, &serviceaccount.LookupAccountArgs{
/// 			AccountId: "myaccount-id",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		mykey, err := serviceaccount.NewKey(ctx, "mykey", &serviceaccount.KeyArgs{
/// 			ServiceAccountId: pulumi.String(myaccount.Name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kubernetes.NewSecret(ctx, "google-application-credentials", &kubernetes.SecretArgs{
/// 			Metadata: []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"name": "google-application-credentials",
/// 				},
/// 			},
/// 			Data: map[string]interface{}{
/// 				"json": std.Base64decode(ctx, &std.Base64decodeArgs{
/// 					Input: mykey.PrivateKey,
/// 				}, nil).Result,
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
/// import com.pulumi.gcp.serviceaccount.ServiceaccountFunctions;
/// import com.pulumi.gcp.serviceaccount.inputs.GetAccountArgs;
/// import com.pulumi.gcp.serviceaccount.Key;
/// import com.pulumi.gcp.serviceaccount.KeyArgs;
/// import com.pulumi.kubernetes.Secret;
/// import com.pulumi.kubernetes.SecretArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Base64decodeArgs;
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
///         final var myaccount = ServiceaccountFunctions.getAccount(GetAccountArgs.builder()
///             .accountId("myaccount-id")
///             .build());
///
///         var mykey = new Key("mykey", KeyArgs.builder()
///             .serviceAccountId(myaccount.name())
///             .build());
///
///         var google_application_credentials = new Secret("google-application-credentials", SecretArgs.builder()
///             .metadata(List.of(Map.of("name", "google-application-credentials")))
///             .data(Map.of("json", StdFunctions.base64decode(Base64decodeArgs.builder()
///                 .input(mykey.privateKey())
///                 .build()).result()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   mykey:
///     type: gcp:serviceaccount:Key
///     properties:
///       serviceAccountId: ${myaccount.name}
///   google-application-credentials:
///     type: kubernetes:Secret
///     properties:
///       metadata:
///         - name: google-application-credentials
///       data:
///         json:
///           fn::invoke:
///             function: std:base64decode
///             arguments:
///               input: ${mykey.privateKey}
///             return: result
/// variables:
///   myaccount:
///     fn::invoke:
///       function: gcp:serviceaccount:getAccount
///       arguments:
///         accountId: myaccount-id
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_serviceaccount_get_account_get_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountResult> getAccount(
  GetAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:serviceaccount/getAccount:getAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountResult.fromMap(result);
}

/// This data source provides a google `oauth2` `access_token` for a different service account than the one initially running the script.
///
/// For more information see
/// [the official documentation](https://cloud.google.com/iam/docs/creating-short-lived-service-account-credentials) as well as [iamcredentials.generateAccessToken()](https://cloud.google.com/iam/credentials/reference/rest/v1/projects.serviceAccounts/generateAccessToken)
///
/// ## Example Usage
///
/// To allow `service_A` to impersonate `service_B`, grant the [Service Account Token Creator](https://cloud.google.com/iam/docs/service-accounts#the_service_account_token_creator_role) on B to A.
///
/// In the IAM policy below, `service_A` is given the Token Creator role impersonate `service_B`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const token_creator_iam = new gcp.serviceaccount.IAMBinding("token-creator-iam", {
///     serviceAccountId: "projects/-/serviceAccounts/service_B@projectB.iam.gserviceaccount.com",
///     role: "roles/iam.serviceAccountTokenCreator",
///     members: ["serviceAccount:service_A@projectA.iam.gserviceaccount.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// token_creator_iam = gcp.serviceaccount.IAMBinding("token-creator-iam",
///     service_account_id="projects/-/serviceAccounts/service_B@projectB.iam.gserviceaccount.com",
///     role="roles/iam.serviceAccountTokenCreator",
///     members=["serviceAccount:service_A@projectA.iam.gserviceaccount.com"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var token_creator_iam = new Gcp.ServiceAccount.IAMBinding("token-creator-iam", new()
///     {
///         ServiceAccountId = "projects/-/serviceAccounts/service_B@projectB.iam.gserviceaccount.com",
///         Role = "roles/iam.serviceAccountTokenCreator",
///         Members = new[]
///         {
///             "serviceAccount:service_A@projectA.iam.gserviceaccount.com",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := serviceaccount.NewIAMBinding(ctx, "token-creator-iam", &serviceaccount.IAMBindingArgs{
/// 			ServiceAccountId: pulumi.String("projects/-/serviceAccounts/service_B@projectB.iam.gserviceaccount.com"),
/// 			Role:             pulumi.String("roles/iam.serviceAccountTokenCreator"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("serviceAccount:service_A@projectA.iam.gserviceaccount.com"),
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
/// import com.pulumi.gcp.serviceaccount.IAMBinding;
/// import com.pulumi.gcp.serviceaccount.IAMBindingArgs;
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
///         var token_creator_iam = new IAMBinding("token-creator-iam", IAMBindingArgs.builder()
///             .serviceAccountId("projects/-/serviceAccounts/service_B@projectB.iam.gserviceaccount.com")
///             .role("roles/iam.serviceAccountTokenCreator")
///             .members("serviceAccount:service_A@projectA.iam.gserviceaccount.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   token-creator-iam:
///     type: gcp:serviceaccount:IAMBinding
///     properties:
///       serviceAccountId: projects/-/serviceAccounts/service_B@projectB.iam.gserviceaccount.com
///       role: roles/iam.serviceAccountTokenCreator
///       members:
///         - serviceAccount:service_A@projectA.iam.gserviceaccount.com
/// ```
///
///
/// Once the IAM permissions are set, you can apply the new token to a provider bootstrapped with it.  Any resources that references the aliased provider will run as the new identity.
///
/// In the example below, `gcp.organizations.Project` will run as `service_B`.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// export = async () => {
///     const _default = await gcp.organizations.getClientConfig({});
///     const defaultGetAccountAccessToken = await gcp.serviceaccount.getAccountAccessToken({
///         targetServiceAccount: "service_B@projectB.iam.gserviceaccount.com",
///         scopes: [
///             "userinfo-email",
///             "cloud-platform",
///         ],
///         lifetime: "300s",
///     });
///     const me = await gcp.organizations.getClientOpenIdUserInfo({});
///     return {
///         "target-email": me.email,
///     };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.organizations.get_client_config()
/// default_get_account_access_token = gcp.serviceaccount.get_account_access_token(target_service_account="service_B@projectB.iam.gserviceaccount.com",
///     scopes=[
///         "userinfo-email",
///         "cloud-platform",
///     ],
///     lifetime="300s")
/// me = gcp.organizations.get_client_open_id_user_info()
/// pulumi.export("target-email", me.email)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Gcp.Organizations.GetClientConfig.Invoke();
///
///     var defaultGetAccountAccessToken = Gcp.ServiceAccount.GetAccountAccessToken.Invoke(new()
///     {
///         TargetServiceAccount = "service_B@projectB.iam.gserviceaccount.com",
///         Scopes = new[]
///         {
///             "userinfo-email",
///             "cloud-platform",
///         },
///         Lifetime = "300s",
///     });
///
///     var me = Gcp.Organizations.GetClientOpenIdUserInfo.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["target-email"] = me.Apply(getClientOpenIdUserInfoResult => getClientOpenIdUserInfoResult.Email),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := organizations.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = serviceaccount.GetAccountAccessToken(ctx, &serviceaccount.GetAccountAccessTokenArgs{
/// 			TargetServiceAccount: "service_B@projectB.iam.gserviceaccount.com",
/// 			Scopes: []string{
/// 				"userinfo-email",
/// 				"cloud-platform",
/// 			},
/// 			Lifetime: pulumi.StringRef("300s"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		me, err := organizations.GetClientOpenIdUserInfo(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("target-email", me.Email)
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.serviceaccount.ServiceaccountFunctions;
/// import com.pulumi.gcp.serviceaccount.inputs.GetAccountAccessTokenArgs;
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
///         final var default = OrganizationsFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         final var defaultGetAccountAccessToken = ServiceaccountFunctions.getAccountAccessToken(GetAccountAccessTokenArgs.builder()
///             .targetServiceAccount("service_B@projectB.iam.gserviceaccount.com")
///             .scopes(
///                 "userinfo-email",
///                 "cloud-platform")
///             .lifetime("300s")
///             .build());
///
///         final var me = OrganizationsFunctions.getClientOpenIdUserInfo(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         ctx.export("target-email", me.email());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: gcp:organizations:getClientConfig
///       arguments: {}
///   defaultGetAccountAccessToken:
///     fn::invoke:
///       function: gcp:serviceaccount:getAccountAccessToken
///       arguments:
///         targetServiceAccount: service_B@projectB.iam.gserviceaccount.com
///         scopes:
///           - userinfo-email
///           - cloud-platform
///         lifetime: 300s
///   me:
///     fn::invoke:
///       function: gcp:organizations:getClientOpenIdUserInfo
///       arguments: {}
/// outputs:
///   target-email: ${me.email}
/// ```
///
///
/// > *Note*: the generated token is non-refreshable and can have a maximum `lifetime` of `3600` seconds.
/// [args] Arguments passed to this invoke. {@macro pulumi_serviceaccount_get_account_access_token_get_account_access_token_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountAccessTokenResult> getAccountAccessToken(
  GetAccountAccessTokenArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:serviceaccount/getAccountAccessToken:getAccountAccessToken',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountAccessTokenResult.fromMap(result);
}

/// This data source provides a Google OpenID Connect (`oidc`) `id_token`.  Tokens issued from this data source are typically used to call external services that accept OIDC tokens for authentication (e.g. [Google Cloud Run](https://cloud.google.com/run/docs/authenticating/service-to-service)).
///
/// For more information see
/// [OpenID Connect](https://openid.net/specs/openid-connect-core-1_0.html#IDToken).
///
/// ## Example Usage
///
/// ### ServiceAccount JSON Credential File.
/// `gcp.serviceaccount.getAccountIdToken` will use the configured provider credentials
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const oidc = gcp.serviceaccount.getAccountIdToken({
///     targetAudience: "https://foo.bar/",
/// });
/// export const oidcToken = oidc.then(oidc => oidc.idToken);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// oidc = gcp.serviceaccount.get_account_id_token(target_audience="https://foo.bar/")
/// pulumi.export("oidcToken", oidc.id_token)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var oidc = Gcp.ServiceAccount.GetAccountIdToken.Invoke(new()
///     {
///         TargetAudience = "https://foo.bar/",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["oidcToken"] = oidc.Apply(getAccountIdTokenResult => getAccountIdTokenResult.IdToken),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		oidc, err := serviceaccount.GetAccountIdToken(ctx, &serviceaccount.GetAccountIdTokenArgs{
/// 			TargetAudience: "https://foo.bar/",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("oidcToken", oidc.IdToken)
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
/// import com.pulumi.gcp.serviceaccount.ServiceaccountFunctions;
/// import com.pulumi.gcp.serviceaccount.inputs.GetAccountIdTokenArgs;
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
///         final var oidc = ServiceaccountFunctions.getAccountIdToken(GetAccountIdTokenArgs.builder()
///             .targetAudience("https://foo.bar/")
///             .build());
///
///         ctx.export("oidcToken", oidc.idToken());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   oidc:
///     fn::invoke:
///       function: gcp:serviceaccount:getAccountIdToken
///       arguments:
///         targetAudience: https://foo.bar/
/// outputs:
///   oidcToken: ${oidc.idToken}
/// ```
///
///
/// ### Service Account Impersonation.
/// `gcp.serviceaccount.getAccountIdToken` will use background impersonated credentials provided by `gcp.serviceaccount.getAccountAccessToken`.
///
/// Note: to use the following, you must grant `target_service_account` the
/// `roles/iam.serviceAccountTokenCreator` role on itself.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const impersonated = gcp.serviceaccount.getAccountAccessToken({
///     targetServiceAccount: "impersonated-account@project.iam.gserviceaccount.com",
///     delegates: [],
///     scopes: [
///         "userinfo-email",
///         "cloud-platform",
///     ],
///     lifetime: "300s",
/// });
/// const oidc = gcp.serviceaccount.getAccountIdToken({
///     targetServiceAccount: "impersonated-account@project.iam.gserviceaccount.com",
///     delegates: [],
///     includeEmail: true,
///     targetAudience: "https://foo.bar/",
/// });
/// export const oidcToken = oidc.then(oidc => oidc.idToken);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// impersonated = gcp.serviceaccount.get_account_access_token(target_service_account="impersonated-account@project.iam.gserviceaccount.com",
///     delegates=[],
///     scopes=[
///         "userinfo-email",
///         "cloud-platform",
///     ],
///     lifetime="300s")
/// oidc = gcp.serviceaccount.get_account_id_token(target_service_account="impersonated-account@project.iam.gserviceaccount.com",
///     delegates=[],
///     include_email=True,
///     target_audience="https://foo.bar/")
/// pulumi.export("oidcToken", oidc.id_token)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var impersonated = Gcp.ServiceAccount.GetAccountAccessToken.Invoke(new()
///     {
///         TargetServiceAccount = "impersonated-account@project.iam.gserviceaccount.com",
///         Delegates = new() { },
///         Scopes = new[]
///         {
///             "userinfo-email",
///             "cloud-platform",
///         },
///         Lifetime = "300s",
///     });
///
///     var oidc = Gcp.ServiceAccount.GetAccountIdToken.Invoke(new()
///     {
///         TargetServiceAccount = "impersonated-account@project.iam.gserviceaccount.com",
///         Delegates = new() { },
///         IncludeEmail = true,
///         TargetAudience = "https://foo.bar/",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["oidcToken"] = oidc.Apply(getAccountIdTokenResult => getAccountIdTokenResult.IdToken),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := serviceaccount.GetAccountAccessToken(ctx, &serviceaccount.GetAccountAccessTokenArgs{
/// 			TargetServiceAccount: "impersonated-account@project.iam.gserviceaccount.com",
/// 			Delegates:            []interface{}{},
/// 			Scopes: []string{
/// 				"userinfo-email",
/// 				"cloud-platform",
/// 			},
/// 			Lifetime: pulumi.StringRef("300s"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		oidc, err := serviceaccount.GetAccountIdToken(ctx, &serviceaccount.GetAccountIdTokenArgs{
/// 			TargetServiceAccount: pulumi.StringRef("impersonated-account@project.iam.gserviceaccount.com"),
/// 			Delegates:            []interface{}{},
/// 			IncludeEmail:         pulumi.BoolRef(true),
/// 			TargetAudience:       "https://foo.bar/",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("oidcToken", oidc.IdToken)
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
/// import com.pulumi.gcp.serviceaccount.ServiceaccountFunctions;
/// import com.pulumi.gcp.serviceaccount.inputs.GetAccountAccessTokenArgs;
/// import com.pulumi.gcp.serviceaccount.inputs.GetAccountIdTokenArgs;
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
///         final var impersonated = ServiceaccountFunctions.getAccountAccessToken(GetAccountAccessTokenArgs.builder()
///             .targetServiceAccount("impersonated-account@project.iam.gserviceaccount.com")
///             .delegates()
///             .scopes(
///                 "userinfo-email",
///                 "cloud-platform")
///             .lifetime("300s")
///             .build());
///
///         final var oidc = ServiceaccountFunctions.getAccountIdToken(GetAccountIdTokenArgs.builder()
///             .targetServiceAccount("impersonated-account@project.iam.gserviceaccount.com")
///             .delegates()
///             .includeEmail(true)
///             .targetAudience("https://foo.bar/")
///             .build());
///
///         ctx.export("oidcToken", oidc.idToken());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   impersonated:
///     fn::invoke:
///       function: gcp:serviceaccount:getAccountAccessToken
///       arguments:
///         targetServiceAccount: impersonated-account@project.iam.gserviceaccount.com
///         delegates: []
///         scopes:
///           - userinfo-email
///           - cloud-platform
///         lifetime: 300s
///   oidc:
///     fn::invoke:
///       function: gcp:serviceaccount:getAccountIdToken
///       arguments:
///         targetServiceAccount: impersonated-account@project.iam.gserviceaccount.com
///         delegates: []
///         includeEmail: true
///         targetAudience: https://foo.bar/
/// outputs:
///   oidcToken: ${oidc.idToken}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_serviceaccount_get_account_id_token_get_account_id_token_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountIdTokenResult> getAccountIdToken(
  GetAccountIdTokenArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:serviceaccount/getAccountIdToken:getAccountIdToken',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountIdTokenResult.fromMap(result);
}

/// This data source provides a [self-signed JWT](https://cloud.google.com/iam/docs/create-short-lived-credentials-direct#sa-credentials-jwt).  Tokens issued from this data source are typically used to call external services that accept JWTs for authentication.
///
/// ## Example Usage
///
/// Note: in order to use the following, the caller must have _at least_ `roles/iam.serviceAccountTokenCreator` on the `target_service_account`.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foo = gcp.serviceaccount.getAccountJwt({
///     targetServiceAccount: "impersonated-account@project.iam.gserviceaccount.com",
///     payload: JSON.stringify({
///         foo: "bar",
///         sub: "subject",
///     }),
///     expiresIn: 60,
/// });
/// export const jwt = foo.then(foo => foo.jwt);
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// foo = gcp.serviceaccount.get_account_jwt(target_service_account="impersonated-account@project.iam.gserviceaccount.com",
///     payload=json.dumps({
///         "foo": "bar",
///         "sub": "subject",
///     }),
///     expires_in=60)
/// pulumi.export("jwt", foo.jwt)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = Gcp.ServiceAccount.GetAccountJwt.Invoke(new()
///     {
///         TargetServiceAccount = "impersonated-account@project.iam.gserviceaccount.com",
///         Payload = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["foo"] = "bar",
///             ["sub"] = "subject",
///         }),
///         ExpiresIn = 60,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["jwt"] = foo.Apply(getAccountJwtResult => getAccountJwtResult.Jwt),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"foo": "bar",
/// 			"sub": "subject",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		foo, err := serviceaccount.GetAccountJwt(ctx, &serviceaccount.GetAccountJwtArgs{
/// 			TargetServiceAccount: "impersonated-account@project.iam.gserviceaccount.com",
/// 			Payload:              json0,
/// 			ExpiresIn:            pulumi.IntRef(60),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("jwt", foo.Jwt)
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
/// import com.pulumi.gcp.serviceaccount.ServiceaccountFunctions;
/// import com.pulumi.gcp.serviceaccount.inputs.GetAccountJwtArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         final var foo = ServiceaccountFunctions.getAccountJwt(GetAccountJwtArgs.builder()
///             .targetServiceAccount("impersonated-account@project.iam.gserviceaccount.com")
///             .payload(serializeJson(
///                 jsonObject(
///                     jsonProperty("foo", "bar"),
///                     jsonProperty("sub", "subject")
///                 )))
///             .expiresIn(60)
///             .build());
///
///         ctx.export("jwt", foo.jwt());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   foo:
///     fn::invoke:
///       function: gcp:serviceaccount:getAccountJwt
///       arguments:
///         targetServiceAccount: impersonated-account@project.iam.gserviceaccount.com
///         payload:
///           fn::toJSON:
///             foo: bar
///             sub: subject
///         expiresIn: 60
/// outputs:
///   jwt: ${foo.jwt}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_serviceaccount_get_account_jwt_get_account_jwt_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountJwtResult> getAccountJwt(
  GetAccountJwtArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:serviceaccount/getAccountJwt:getAccountJwt',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountJwtResult.fromMap(result);
}

/// Get service account public key. For more information, see [the official documentation](https://cloud.google.com/iam/docs/creating-managing-service-account-keys) and [API](https://cloud.google.com/iam/reference/rest/v1/projects.serviceAccounts.keys/get).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myaccount = new gcp.serviceaccount.Account("myaccount", {accountId: "dev-foo-account"});
/// const mykeyKey = new gcp.serviceaccount.Key("mykey", {serviceAccountId: myaccount.name});
/// const mykey = gcp.serviceaccount.getAccountKeyOutput({
///     name: mykeyKey.name,
///     publicKeyType: "TYPE_X509_PEM_FILE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// myaccount = gcp.serviceaccount.Account("myaccount", account_id="dev-foo-account")
/// mykey_key = gcp.serviceaccount.Key("mykey", service_account_id=myaccount.name)
/// mykey = gcp.serviceaccount.get_account_key_output(name=mykey_key.name,
///     public_key_type="TYPE_X509_PEM_FILE")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myaccount = new Gcp.ServiceAccount.Account("myaccount", new()
///     {
///         AccountId = "dev-foo-account",
///     });
///
///     var mykeyKey = new Gcp.ServiceAccount.Key("mykey", new()
///     {
///         ServiceAccountId = myaccount.Name,
///     });
///
///     var mykey = Gcp.ServiceAccount.GetAccountKey.Invoke(new()
///     {
///         Name = mykeyKey.Name,
///         PublicKeyType = "TYPE_X509_PEM_FILE",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myaccount, err := serviceaccount.NewAccount(ctx, "myaccount", &serviceaccount.AccountArgs{
/// 			AccountId: pulumi.String("dev-foo-account"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		mykeyKey, err := serviceaccount.NewKey(ctx, "mykey", &serviceaccount.KeyArgs{
/// 			ServiceAccountId: myaccount.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_ = serviceaccount.GetAccountKeyOutput(ctx, serviceaccount.GetAccountKeyOutputArgs{
/// 			Name:          mykeyKey.Name,
/// 			PublicKeyType: pulumi.String("TYPE_X509_PEM_FILE"),
/// 		}, nil)
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
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.serviceaccount.Key;
/// import com.pulumi.gcp.serviceaccount.KeyArgs;
/// import com.pulumi.gcp.serviceaccount.ServiceaccountFunctions;
/// import com.pulumi.gcp.serviceaccount.inputs.GetAccountKeyArgs;
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
///         var myaccount = new Account("myaccount", AccountArgs.builder()
///             .accountId("dev-foo-account")
///             .build());
///
///         var mykeyKey = new Key("mykeyKey", KeyArgs.builder()
///             .serviceAccountId(myaccount.name())
///             .build());
///
///         final var mykey = ServiceaccountFunctions.getAccountKey(GetAccountKeyArgs.builder()
///             .name(mykeyKey.name())
///             .publicKeyType("TYPE_X509_PEM_FILE")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myaccount:
///     type: gcp:serviceaccount:Account
///     properties:
///       accountId: dev-foo-account
///   mykeyKey:
///     type: gcp:serviceaccount:Key
///     name: mykey
///     properties:
///       serviceAccountId: ${myaccount.name}
/// variables:
///   mykey:
///     fn::invoke:
///       function: gcp:serviceaccount:getAccountKey
///       arguments:
///         name: ${mykeyKey.name}
///         publicKeyType: TYPE_X509_PEM_FILE
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_serviceaccount_get_account_key_get_account_key_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountKeyResult> getAccountKey(
  GetAccountKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:serviceaccount/getAccountKey:getAccountKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountKeyResult.fromMap(result);
}

/// Retrieves the current IAM policy data for a service account.
///
/// ## example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foo = gcp.serviceaccount.getIamPolicy({
///     serviceAccountId: testAccount.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foo = gcp.serviceaccount.get_iam_policy(service_account_id=test_account["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = Gcp.ServiceAccount.GetIamPolicy.Invoke(new()
///     {
///         ServiceAccountId = testAccount.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := serviceaccount.GetIamPolicy(ctx, &serviceaccount.GetIamPolicyArgs{
/// 			ServiceAccountId: testAccount.Name,
/// 		}, nil)
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
/// import com.pulumi.gcp.serviceaccount.ServiceaccountFunctions;
/// import com.pulumi.gcp.serviceaccount.inputs.GetIamPolicyArgs;
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
///         final var foo = ServiceaccountFunctions.getIamPolicy(GetIamPolicyArgs.builder()
///             .serviceAccountId(testAccount.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   foo:
///     fn::invoke:
///       function: gcp:serviceaccount:getIamPolicy
///       arguments:
///         serviceAccountId: ${testAccount.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_serviceaccount_get_iam_policy_get_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIamPolicyResult> getIamPolicy(
  GetIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:serviceaccount/getIamPolicy:getIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIamPolicyResult.fromMap(result);
}

/// Gets a list of all service accounts from a project.
/// See [the official documentation](https://cloud.google.com/iam/docs/service-account-overview)
/// and [API](https://cloud.google.com/iam/docs/reference/rest/v1/projects.serviceAccounts).
///
/// ## Example Usage
///
/// Get all service accounts from a project
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = gcp.serviceaccount.getS({
///     project: "example-project",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.serviceaccount.get_s(project="example-project")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Gcp.ServiceAccount.GetS.Invoke(new()
///     {
///         Project = "example-project",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := serviceaccount.GetS(ctx, &serviceaccount.GetSArgs{
/// 			Project: pulumi.StringRef("example-project"),
/// 		}, nil)
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
/// import com.pulumi.gcp.serviceaccount.ServiceaccountFunctions;
/// import com.pulumi.gcp.serviceaccount.inputs.GetSArgs;
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
///         final var example = ServiceaccountFunctions.getS(GetSArgs.builder()
///             .project("example-project")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: gcp:serviceaccount:getS
///       arguments:
///         project: example-project
/// ```
///
///
/// Get all service accounts that are prefixed with `"foo"`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foo = gcp.serviceaccount.getS({
///     prefix: "foo",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foo = gcp.serviceaccount.get_s(prefix="foo")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = Gcp.ServiceAccount.GetS.Invoke(new()
///     {
///         Prefix = "foo",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := serviceaccount.GetS(ctx, &serviceaccount.GetSArgs{
/// 			Prefix: pulumi.StringRef("foo"),
/// 		}, nil)
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
/// import com.pulumi.gcp.serviceaccount.ServiceaccountFunctions;
/// import com.pulumi.gcp.serviceaccount.inputs.GetSArgs;
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
///         final var foo = ServiceaccountFunctions.getS(GetSArgs.builder()
///             .prefix("foo")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   foo:
///     fn::invoke:
///       function: gcp:serviceaccount:getS
///       arguments:
///         prefix: foo
/// ```
///
///
/// Get all service accounts that contain `"bar"`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bar = gcp.serviceaccount.getS({
///     regex: ".*bar.*",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bar = gcp.serviceaccount.get_s(regex=".*bar.*")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bar = Gcp.ServiceAccount.GetS.Invoke(new()
///     {
///         Regex = ".*bar.*",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := serviceaccount.GetS(ctx, &serviceaccount.GetSArgs{
/// 			Regex: pulumi.StringRef(".*bar.*"),
/// 		}, nil)
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
/// import com.pulumi.gcp.serviceaccount.ServiceaccountFunctions;
/// import com.pulumi.gcp.serviceaccount.inputs.GetSArgs;
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
///         final var bar = ServiceaccountFunctions.getS(GetSArgs.builder()
///             .regex(".*bar.*")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   bar:
///     fn::invoke:
///       function: gcp:serviceaccount:getS
///       arguments:
///         regex: .*bar.*
/// ```
///
///
/// Get all service accounts that are prefixed with `"foo"` and contain `"bar"`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const fooBar = gcp.serviceaccount.getS({
///     prefix: "foo",
///     regex: ".*bar.*",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foo_bar = gcp.serviceaccount.get_s(prefix="foo",
///     regex=".*bar.*")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fooBar = Gcp.ServiceAccount.GetS.Invoke(new()
///     {
///         Prefix = "foo",
///         Regex = ".*bar.*",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := serviceaccount.GetS(ctx, &serviceaccount.GetSArgs{
/// 			Prefix: pulumi.StringRef("foo"),
/// 			Regex:  pulumi.StringRef(".*bar.*"),
/// 		}, nil)
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
/// import com.pulumi.gcp.serviceaccount.ServiceaccountFunctions;
/// import com.pulumi.gcp.serviceaccount.inputs.GetSArgs;
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
///         final var fooBar = ServiceaccountFunctions.getS(GetSArgs.builder()
///             .prefix("foo")
///             .regex(".*bar.*")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   fooBar:
///     fn::invoke:
///       function: gcp:serviceaccount:getS
///       arguments:
///         prefix: foo
///         regex: .*bar.*
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_serviceaccount_get_s_get_sargs_doc}
/// [options] Invoke options controlling this call.
Future<GetSResult> getS(GetSArgs args, {pulumi.InvokeOptions? options}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:serviceaccount/getS:getS',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSResult.fromMap(result);
}
