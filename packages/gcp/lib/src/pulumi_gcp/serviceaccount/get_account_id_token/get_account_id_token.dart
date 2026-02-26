import 'package:pulumi/pulumi.dart';
import 'get_account_id_token_args.dart';
import 'get_account_id_token_result.dart';

/// This data source provides a Google OpenID Connect (<span pulumi-lang-nodejs="`oidc`" pulumi-lang-dotnet="`Oidc`" pulumi-lang-go="`oidc`" pulumi-lang-python="`oidc`" pulumi-lang-yaml="`oidc`" pulumi-lang-java="`oidc`">`oidc`</span>) <span pulumi-lang-nodejs="`idToken`" pulumi-lang-dotnet="`IdToken`" pulumi-lang-go="`idToken`" pulumi-lang-python="`id_token`" pulumi-lang-yaml="`idToken`" pulumi-lang-java="`idToken`">`id_token`</span>.  Tokens issued from this data source are typically used to call external services that accept OIDC tokens for authentication (e.g. [Google Cloud Run](https://cloud.google.com/run/docs/authenticating/service-to-service)).
///
/// For more information see
/// [OpenID Connect](https://openid.net/specs/openid-connect-core-1_0.html#IDToken).
///
/// ## Example Usage
///
/// ### ServiceAccount JSON Credential File.
/// <span pulumi-lang-nodejs="`gcp.serviceaccount.getAccountIdToken`" pulumi-lang-dotnet="`gcp.serviceaccount.getAccountIdToken`" pulumi-lang-go="`serviceaccount.getAccountIdToken`" pulumi-lang-python="`serviceaccount_get_account_id_token`" pulumi-lang-yaml="`gcp.serviceaccount.getAccountIdToken`" pulumi-lang-java="`gcp.serviceaccount.getAccountIdToken`">`gcp.serviceaccount.getAccountIdToken`</span> will use the configured provider credentials
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const oidc = gcp.serviceaccount.getAccountIdToken({
/// targetAudience: "https://foo.bar/",
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
/// var oidc = Gcp.ServiceAccount.GetAccountIdToken.Invoke(new()
/// {
/// TargetAudience = "https://foo.bar/",
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["oidcToken"] = oidc.Apply(getAccountIdTokenResult => getAccountIdTokenResult.IdToken),
/// };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// oidc, err := serviceaccount.GetAccountIdToken(ctx, &serviceaccount.GetAccountIdTokenArgs{
/// TargetAudience: "https://foo.bar/",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("oidcToken", oidc.IdToken)
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var oidc = ServiceaccountFunctions.getAccountIdToken(GetAccountIdTokenArgs.builder()
/// .targetAudience("https://foo.bar/")
/// .build());
///
/// ctx.export("oidcToken", oidc.idToken());
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// oidc:
/// fn::invoke:
/// function: gcp:serviceaccount:getAccountIdToken
/// arguments:
/// targetAudience: https://foo.bar/
/// outputs:
/// oidcToken: ${oidc.idToken}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Service Account Impersonation.
/// <span pulumi-lang-nodejs="`gcp.serviceaccount.getAccountIdToken`" pulumi-lang-dotnet="`gcp.serviceaccount.getAccountIdToken`" pulumi-lang-go="`serviceaccount.getAccountIdToken`" pulumi-lang-python="`serviceaccount_get_account_id_token`" pulumi-lang-yaml="`gcp.serviceaccount.getAccountIdToken`" pulumi-lang-java="`gcp.serviceaccount.getAccountIdToken`">`gcp.serviceaccount.getAccountIdToken`</span> will use background impersonated credentials provided by <span pulumi-lang-nodejs="`gcp.serviceaccount.getAccountAccessToken`" pulumi-lang-dotnet="`gcp.serviceaccount.getAccountAccessToken`" pulumi-lang-go="`serviceaccount.getAccountAccessToken`" pulumi-lang-python="`serviceaccount_get_account_access_token`" pulumi-lang-yaml="`gcp.serviceaccount.getAccountAccessToken`" pulumi-lang-java="`gcp.serviceaccount.getAccountAccessToken`">`gcp.serviceaccount.getAccountAccessToken`</span>.
///
/// Note: to use the following, you must grant <span pulumi-lang-nodejs="`targetServiceAccount`" pulumi-lang-dotnet="`TargetServiceAccount`" pulumi-lang-go="`targetServiceAccount`" pulumi-lang-python="`target_service_account`" pulumi-lang-yaml="`targetServiceAccount`" pulumi-lang-java="`targetServiceAccount`">`target_service_account`</span> the
/// `roles/iam.serviceAccountTokenCreator` role on itself.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const impersonated = gcp.serviceaccount.getAccountAccessToken({
/// targetServiceAccount: "impersonated-account@project.iam.gserviceaccount.com",
/// delegates: [],
/// scopes: [
/// "userinfo-email",
/// "cloud-platform",
/// ],
/// lifetime: "300s",
/// });
/// const oidc = gcp.serviceaccount.getAccountIdToken({
/// targetServiceAccount: "impersonated-account@project.iam.gserviceaccount.com",
/// delegates: [],
/// includeEmail: true,
/// targetAudience: "https://foo.bar/",
/// });
/// export const oidcToken = oidc.then(oidc => oidc.idToken);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// impersonated = gcp.serviceaccount.get_account_access_token(target_service_account="impersonated-account@project.iam.gserviceaccount.com",
/// delegates=[],
/// scopes=[
/// "userinfo-email",
/// "cloud-platform",
/// ],
/// lifetime="300s")
/// oidc = gcp.serviceaccount.get_account_id_token(target_service_account="impersonated-account@project.iam.gserviceaccount.com",
/// delegates=[],
/// include_email=True,
/// target_audience="https://foo.bar/")
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
/// var impersonated = Gcp.ServiceAccount.GetAccountAccessToken.Invoke(new()
/// {
/// TargetServiceAccount = "impersonated-account@project.iam.gserviceaccount.com",
/// Delegates = new() { },
/// Scopes = new[]
/// {
/// "userinfo-email",
/// "cloud-platform",
/// },
/// Lifetime = "300s",
/// });
///
/// var oidc = Gcp.ServiceAccount.GetAccountIdToken.Invoke(new()
/// {
/// TargetServiceAccount = "impersonated-account@project.iam.gserviceaccount.com",
/// Delegates = new() { },
/// IncludeEmail = true,
/// TargetAudience = "https://foo.bar/",
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["oidcToken"] = oidc.Apply(getAccountIdTokenResult => getAccountIdTokenResult.IdToken),
/// };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := serviceaccount.GetAccountAccessToken(ctx, &serviceaccount.GetAccountAccessTokenArgs{
/// TargetServiceAccount: "impersonated-account@project.iam.gserviceaccount.com",
/// Delegates:            []interface{}{},
/// Scopes: []string{
/// "userinfo-email",
/// "cloud-platform",
/// },
/// Lifetime: pulumi.StringRef("300s"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// oidc, err := serviceaccount.GetAccountIdToken(ctx, &serviceaccount.GetAccountIdTokenArgs{
/// TargetServiceAccount: pulumi.StringRef("impersonated-account@project.iam.gserviceaccount.com"),
/// Delegates:            []interface{}{},
/// IncludeEmail:         pulumi.BoolRef(true),
/// TargetAudience:       "https://foo.bar/",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("oidcToken", oidc.IdToken)
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var impersonated = ServiceaccountFunctions.getAccountAccessToken(GetAccountAccessTokenArgs.builder()
/// .targetServiceAccount("impersonated-account@project.iam.gserviceaccount.com")
/// .delegates()
/// .scopes(
/// "userinfo-email",
/// "cloud-platform")
/// .lifetime("300s")
/// .build());
///
/// final var oidc = ServiceaccountFunctions.getAccountIdToken(GetAccountIdTokenArgs.builder()
/// .targetServiceAccount("impersonated-account@project.iam.gserviceaccount.com")
/// .delegates()
/// .includeEmail(true)
/// .targetAudience("https://foo.bar/")
/// .build());
///
/// ctx.export("oidcToken", oidc.idToken());
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// impersonated:
/// fn::invoke:
/// function: gcp:serviceaccount:getAccountAccessToken
/// arguments:
/// targetServiceAccount: impersonated-account@project.iam.gserviceaccount.com
/// delegates: []
/// scopes:
/// - userinfo-email
/// - cloud-platform
/// lifetime: 300s
/// oidc:
/// fn::invoke:
/// function: gcp:serviceaccount:getAccountIdToken
/// arguments:
/// targetServiceAccount: impersonated-account@project.iam.gserviceaccount.com
/// delegates: []
/// includeEmail: true
/// targetAudience: https://foo.bar/
/// outputs:
/// oidcToken: ${oidc.idToken}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAccountIdTokenResult> getAccountIdToken(
  GetAccountIdTokenArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:serviceaccount/getAccountIdToken:getAccountIdToken',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAccountIdTokenResult.fromMap(result);
}
