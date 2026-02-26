import 'package:pulumi/pulumi.dart';
import 'get_account_jwt_args.dart';
import 'get_account_jwt_result.dart';

/// This data source provides a [self-signed JWT](https://cloud.google.com/iam/docs/create-short-lived-credentials-direct#sa-credentials-jwt).  Tokens issued from this data source are typically used to call external services that accept JWTs for authentication.
///
/// ## Example Usage
///
/// Note: in order to use the following, the caller must have _at least_ `roles/iam.serviceAccountTokenCreator` on the <span pulumi-lang-nodejs="`targetServiceAccount`" pulumi-lang-dotnet="`TargetServiceAccount`" pulumi-lang-go="`targetServiceAccount`" pulumi-lang-python="`target_service_account`" pulumi-lang-yaml="`targetServiceAccount`" pulumi-lang-java="`targetServiceAccount`">`target_service_account`</span>.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foo = gcp.serviceaccount.getAccountJwt({
/// targetServiceAccount: "impersonated-account@project.iam.gserviceaccount.com",
/// payload: JSON.stringify({
/// foo: "bar",
/// sub: "subject",
/// }),
/// expiresIn: 60,
/// });
/// export const jwt = foo.then(foo => foo.jwt);
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// foo = gcp.serviceaccount.get_account_jwt(target_service_account="impersonated-account@project.iam.gserviceaccount.com",
/// payload=json.dumps({
/// "foo": "bar",
/// "sub": "subject",
/// }),
/// expires_in=60)
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
/// var foo = Gcp.ServiceAccount.GetAccountJwt.Invoke(new()
/// {
/// TargetServiceAccount = "impersonated-account@project.iam.gserviceaccount.com",
/// Payload = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["foo"] = "bar",
/// ["sub"] = "subject",
/// }),
/// ExpiresIn = 60,
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["jwt"] = foo.Apply(getAccountJwtResult => getAccountJwtResult.Jwt),
/// };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "encoding/json"
///
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "foo": "bar",
/// "sub": "subject",
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// foo, err := serviceaccount.GetAccountJwt(ctx, &serviceaccount.GetAccountJwtArgs{
/// TargetServiceAccount: "impersonated-account@project.iam.gserviceaccount.com",
/// Payload:              json0,
/// ExpiresIn:            pulumi.IntRef(60),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("jwt", foo.Jwt)
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var foo = ServiceaccountFunctions.getAccountJwt(GetAccountJwtArgs.builder()
/// .targetServiceAccount("impersonated-account@project.iam.gserviceaccount.com")
/// .payload(serializeJson(
/// jsonObject(
/// jsonProperty("foo", "bar"),
/// jsonProperty("sub", "subject")
/// )))
/// .expiresIn(60)
/// .build());
///
/// ctx.export("jwt", foo.jwt());
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// foo:
/// fn::invoke:
/// function: gcp:serviceaccount:getAccountJwt
/// arguments:
/// targetServiceAccount: impersonated-account@project.iam.gserviceaccount.com
/// payload:
/// fn::toJSON:
/// foo: bar
/// sub: subject
/// expiresIn: 60
/// outputs:
/// jwt: ${foo.jwt}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAccountJwtResult> getAccountJwt(
  GetAccountJwtArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:serviceaccount/getAccountJwt:getAccountJwt',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAccountJwtResult.fromMap(result);
}
