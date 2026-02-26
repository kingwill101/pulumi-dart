import 'package:pulumi/pulumi.dart';
import 'get_account_access_token_args.dart';
import 'get_account_access_token_result.dart';

/// This data source provides a google <span pulumi-lang-nodejs="`oauth2`" pulumi-lang-dotnet="`Oauth2`" pulumi-lang-go="`oauth2`" pulumi-lang-python="`oauth2`" pulumi-lang-yaml="`oauth2`" pulumi-lang-java="`oauth2`">`oauth2`</span> <span pulumi-lang-nodejs="`accessToken`" pulumi-lang-dotnet="`AccessToken`" pulumi-lang-go="`accessToken`" pulumi-lang-python="`access_token`" pulumi-lang-yaml="`accessToken`" pulumi-lang-java="`accessToken`">`access_token`</span> for a different service account than the one initially running the script.
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
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const token_creator_iam = new gcp.serviceaccount.IAMBinding("token-creator-iam", {
/// serviceAccountId: "projects/-/serviceAccounts/service_B@projectB.iam.gserviceaccount.com",
/// role: "roles/iam.serviceAccountTokenCreator",
/// members: ["serviceAccount:service_A@projectA.iam.gserviceaccount.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// token_creator_iam = gcp.serviceaccount.IAMBinding("token-creator-iam",
/// service_account_id="projects/-/serviceAccounts/service_B@projectB.iam.gserviceaccount.com",
/// role="roles/iam.serviceAccountTokenCreator",
/// members=["serviceAccount:service_A@projectA.iam.gserviceaccount.com"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var token_creator_iam = new Gcp.ServiceAccount.IAMBinding("token-creator-iam", new()
/// {
/// ServiceAccountId = "projects/-/serviceAccounts/service_B@projectB.iam.gserviceaccount.com",
/// Role = "roles/iam.serviceAccountTokenCreator",
/// Members = new[]
/// {
/// "serviceAccount:service_A@projectA.iam.gserviceaccount.com",
/// },
/// });
///
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
/// _, err := serviceaccount.NewIAMBinding(ctx, "token-creator-iam", &serviceaccount.IAMBindingArgs{
/// ServiceAccountId: pulumi.String("projects/-/serviceAccounts/service_B@projectB.iam.gserviceaccount.com"),
/// Role:             pulumi.String("roles/iam.serviceAccountTokenCreator"),
/// Members: pulumi.StringArray{
/// pulumi.String("serviceAccount:service_A@projectA.iam.gserviceaccount.com"),
/// },
/// })
/// if err != nil {
/// return err
/// }
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var token_creator_iam = new IAMBinding("token-creator-iam", IAMBindingArgs.builder()
/// .serviceAccountId("projects/-/serviceAccounts/service_B@projectB.iam.gserviceaccount.com")
/// .role("roles/iam.serviceAccountTokenCreator")
/// .members("serviceAccount:service_A@projectA.iam.gserviceaccount.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// token-creator-iam:
/// type: gcp:serviceaccount:IAMBinding
/// properties:
/// serviceAccountId: projects/-/serviceAccounts/service_B@projectB.iam.gserviceaccount.com
/// role: roles/iam.serviceAccountTokenCreator
/// members:
/// - serviceAccount:service_A@projectA.iam.gserviceaccount.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// Once the IAM permissions are set, you can apply the new token to a provider bootstrapped with it.  Any resources that references the aliased provider will run as the new identity.
///
/// In the example below, <span pulumi-lang-nodejs="`gcp.organizations.Project`" pulumi-lang-dotnet="`gcp.organizations.Project`" pulumi-lang-go="`organizations.Project`" pulumi-lang-python="`organizations.Project`" pulumi-lang-yaml="`gcp.organizations.Project`" pulumi-lang-java="`gcp.organizations.Project`">`gcp.organizations.Project`</span> will run as `service_B`.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// export = async () => {
/// const _default = await gcp.organizations.getClientConfig({});
/// const defaultGetAccountAccessToken = await gcp.serviceaccount.getAccountAccessToken({
/// targetServiceAccount: "service_B@projectB.iam.gserviceaccount.com",
/// scopes: [
/// "userinfo-email",
/// "cloud-platform",
/// ],
/// lifetime: "300s",
/// });
/// const me = await gcp.organizations.getClientOpenIdUserInfo({});
/// return {
/// "target-email": me.email,
/// };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.organizations.get_client_config()
/// default_get_account_access_token = gcp.serviceaccount.get_account_access_token(target_service_account="service_B@projectB.iam.gserviceaccount.com",
/// scopes=[
/// "userinfo-email",
/// "cloud-platform",
/// ],
/// lifetime="300s")
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
/// var @default = Gcp.Organizations.GetClientConfig.Invoke();
///
/// var defaultGetAccountAccessToken = Gcp.ServiceAccount.GetAccountAccessToken.Invoke(new()
/// {
/// TargetServiceAccount = "service_B@projectB.iam.gserviceaccount.com",
/// Scopes = new[]
/// {
/// "userinfo-email",
/// "cloud-platform",
/// },
/// Lifetime = "300s",
/// });
///
/// var me = Gcp.Organizations.GetClientOpenIdUserInfo.Invoke();
///
/// return new Dictionary<string, object?>
/// {
/// ["target-email"] = me.Apply(getClientOpenIdUserInfoResult => getClientOpenIdUserInfoResult.Email),
/// };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := organizations.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = serviceaccount.GetAccountAccessToken(ctx, &serviceaccount.GetAccountAccessTokenArgs{
/// TargetServiceAccount: "service_B@projectB.iam.gserviceaccount.com",
/// Scopes: []string{
/// "userinfo-email",
/// "cloud-platform",
/// },
/// Lifetime: pulumi.StringRef("300s"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// me, err := organizations.GetClientOpenIdUserInfo(ctx, map[string]interface{}{}, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("target-email", me.Email)
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var default = OrganizationsFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
/// final var defaultGetAccountAccessToken = ServiceaccountFunctions.getAccountAccessToken(GetAccountAccessTokenArgs.builder()
/// .targetServiceAccount("service_B@projectB.iam.gserviceaccount.com")
/// .scopes(
/// "userinfo-email",
/// "cloud-platform")
/// .lifetime("300s")
/// .build());
///
/// final var me = OrganizationsFunctions.getClientOpenIdUserInfo(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
/// ctx.export("target-email", me.email());
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// default:
/// fn::invoke:
/// function: gcp:organizations:getClientConfig
/// arguments: {}
/// defaultGetAccountAccessToken:
/// fn::invoke:
/// function: gcp:serviceaccount:getAccountAccessToken
/// arguments:
/// targetServiceAccount: service_B@projectB.iam.gserviceaccount.com
/// scopes:
/// - userinfo-email
/// - cloud-platform
/// lifetime: 300s
/// me:
/// fn::invoke:
/// function: gcp:organizations:getClientOpenIdUserInfo
/// arguments: {}
/// outputs:
/// target-email: ${me.email}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// > *Note*: the generated token is non-refreshable and can have a maximum <span pulumi-lang-nodejs="`lifetime`" pulumi-lang-dotnet="`Lifetime`" pulumi-lang-go="`lifetime`" pulumi-lang-python="`lifetime`" pulumi-lang-yaml="`lifetime`" pulumi-lang-java="`lifetime`">`lifetime`</span> of <span pulumi-lang-nodejs="`3600`" pulumi-lang-dotnet="`3600`" pulumi-lang-go="`3600`" pulumi-lang-python="`3600`" pulumi-lang-yaml="`3600`" pulumi-lang-java="`3600`">`3600`</span> seconds.
Future<GetAccountAccessTokenResult> getAccountAccessToken(
  GetAccountAccessTokenArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:serviceaccount/getAccountAccessToken:getAccountAccessToken',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAccountAccessTokenResult.fromMap(result);
}
