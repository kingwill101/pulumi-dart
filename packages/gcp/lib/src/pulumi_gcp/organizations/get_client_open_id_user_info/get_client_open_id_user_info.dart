import 'package:pulumi/pulumi.dart';
import 'get_client_open_id_user_info_result.dart';

/// Get OpenID userinfo about the credentials used with the Google provider,
/// specifically the email.
///
/// This datasource enables you to export the email of the account you've
/// authenticated the provider with; this can be used alongside
/// `data.google_client_config`'s <span pulumi-lang-nodejs="`accessToken`" pulumi-lang-dotnet="`AccessToken`" pulumi-lang-go="`accessToken`" pulumi-lang-python="`access_token`" pulumi-lang-yaml="`accessToken`" pulumi-lang-java="`accessToken`">`access_token`</span> to perform OpenID Connect
/// authentication with GKE and configure an RBAC role for the email used.
///
/// > This resource will only work as expected if the provider is configured to
/// use the `https://www.googleapis.com/auth/userinfo.email` scope! You will
/// receive an error otherwise. The provider uses this scope by default.
///
/// ## Example Usage
///
/// ### Exporting An Email
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// export = async () => {
/// const me = await gcp.organizations.getClientOpenIdUserInfo({});
/// return {
/// "my-email": me.email,
/// };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// me = gcp.organizations.get_client_open_id_user_info()
/// pulumi.export("my-email", me.email)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var me = Gcp.Organizations.GetClientOpenIdUserInfo.Invoke();
///
/// return new Dictionary<string, object?>
/// {
/// ["my-email"] = me.Apply(getClientOpenIdUserInfoResult => getClientOpenIdUserInfoResult.Email),
/// };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// me, err := organizations.GetClientOpenIdUserInfo(ctx, map[string]interface{}{}, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("my-email", me.Email)
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
/// final var me = OrganizationsFunctions.getClientOpenIdUserInfo(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
/// ctx.export("my-email", me.email());
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// me:
/// fn::invoke:
/// function: gcp:organizations:getClientOpenIdUserInfo
/// arguments: {}
/// outputs:
/// my-email: ${me.email}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### OpenID Connect W/ Kubernetes Provider + RBAC IAM Role
///
/// <!--Start PulumiCodeChooser -->
/// ```yaml
/// resources:
/// user:
/// type: kubernetes:ClusterRoleBinding
/// properties:
/// metadata:
/// - name: provider-user-admin
/// roleRef:
/// - apiGroup: rbac.authorization.k8s.io
/// kind: ClusterRole
/// name: cluster-admin
/// subject:
/// - kind: User
/// name: ${providerIdentity.email}
/// variables:
/// providerIdentity:
/// fn::invoke:
/// function: gcp:organizations:getClientOpenIdUserInfo
/// arguments: {}
/// provider:
/// fn::invoke:
/// function: gcp:organizations:getClientConfig
/// arguments: {}
/// myCluster:
/// fn::invoke:
/// function: gcp:container:getCluster
/// arguments:
/// name: my-cluster
/// zone: us-east1-a
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetClientOpenIdUserInfoResult> getClientOpenIdUserInfo({
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:organizations/getClientOpenIdUserInfo:getClientOpenIdUserInfo',
    const <String, dynamic>{},
    options: toDeploymentInvokeOptions(options),
  );
  return GetClientOpenIdUserInfoResult.fromMap(result);
}
