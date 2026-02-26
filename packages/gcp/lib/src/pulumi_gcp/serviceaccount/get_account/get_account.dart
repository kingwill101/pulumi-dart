import 'package:pulumi/pulumi.dart';
import 'get_account_args.dart';
import 'get_account_result.dart';

/// Get the service account from a project. For more information see
/// the official [API](https://cloud.google.com/compute/docs/access/service-accounts) documentation.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const objectViewer = gcp.serviceaccount.getAccount({
/// accountId: "object-viewer",
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
/// var objectViewer = Gcp.ServiceAccount.GetAccount.Invoke(new()
/// {
/// AccountId = "object-viewer",
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
/// _, err := serviceaccount.LookupAccount(ctx, &serviceaccount.LookupAccountArgs{
/// AccountId: "object-viewer",
/// }, nil)
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var objectViewer = ServiceaccountFunctions.getAccount(GetAccountArgs.builder()
/// .accountId("object-viewer")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// objectViewer:
/// fn::invoke:
/// function: gcp:serviceaccount:getAccount
/// arguments:
/// accountId: object-viewer
/// ```
/// <!--End PulumiCodeChooser -->
///
///
/// ### Save Key In Kubernetes Secret
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as kubernetes from "@pulumi/kubernetes";
/// import * as std from "@pulumi/std";
///
/// const myaccount = gcp.serviceaccount.getAccount({
/// accountId: "myaccount-id",
/// });
/// const mykey = new gcp.serviceaccount.Key("mykey", {serviceAccountId: myaccount.then(myaccount => myaccount.name)});
/// const google_application_credentials = new kubernetes.index.Secret("google-application-credentials", {
/// metadata: [{
/// name: "google-application-credentials",
/// }],
/// data: {
/// json: std.base64decodeOutput({
/// input: mykey.privateKey,
/// }).result,
/// },
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
/// metadata=[{
/// name: google-application-credentials,
/// }],
/// data={
/// json: std.base64decode_output(input=mykey.private_key).result,
/// })
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
/// var myaccount = Gcp.ServiceAccount.GetAccount.Invoke(new()
/// {
/// AccountId = "myaccount-id",
/// });
///
/// var mykey = new Gcp.ServiceAccount.Key("mykey", new()
/// {
/// ServiceAccountId = myaccount.Apply(getAccountResult => getAccountResult.Name),
/// });
///
/// var google_application_credentials = new Kubernetes.Index.Secret("google-application-credentials", new()
/// {
/// Metadata = new[]
/// {
///
/// {
/// { "name", "google-application-credentials" },
/// },
/// },
/// Data =
/// {
/// { "json", Std.Base64decode.Invoke(new()
/// {
/// Input = mykey.PrivateKey,
/// }).Result },
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
/// "github.com/pulumi/pulumi-kubernetes/sdk/v4/go/kubernetes"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// myaccount, err := serviceaccount.LookupAccount(ctx, &serviceaccount.LookupAccountArgs{
/// AccountId: "myaccount-id",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// mykey, err := serviceaccount.NewKey(ctx, "mykey", &serviceaccount.KeyArgs{
/// ServiceAccountId: pulumi.String(myaccount.Name),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = kubernetes.NewSecret(ctx, "google-application-credentials", &kubernetes.SecretArgs{
/// Metadata: []map[string]interface{}{
/// map[string]interface{}{
/// "name": "google-application-credentials",
/// },
/// },
/// Data: map[string]interface{}{
/// "json": std.Base64decode(ctx, &std.Base64decodeArgs{
/// Input: mykey.PrivateKey,
/// }, nil).Result,
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var myaccount = ServiceaccountFunctions.getAccount(GetAccountArgs.builder()
/// .accountId("myaccount-id")
/// .build());
///
/// var mykey = new Key("mykey", KeyArgs.builder()
/// .serviceAccountId(myaccount.name())
/// .build());
///
/// var google_application_credentials = new Secret("google-application-credentials", SecretArgs.builder()
/// .metadata(List.of(Map.of("name", "google-application-credentials")))
/// .data(Map.of("json", StdFunctions.base64decode(Base64decodeArgs.builder()
/// .input(mykey.privateKey())
/// .build()).result()))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// mykey:
/// type: gcp:serviceaccount:Key
/// properties:
/// serviceAccountId: ${myaccount.name}
/// google-application-credentials:
/// type: kubernetes:Secret
/// properties:
/// metadata:
/// - name: google-application-credentials
/// data:
/// json:
/// fn::invoke:
/// function: std:base64decode
/// arguments:
/// input: ${mykey.privateKey}
/// return: result
/// variables:
/// myaccount:
/// fn::invoke:
/// function: gcp:serviceaccount:getAccount
/// arguments:
/// accountId: myaccount-id
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAccountResult> getAccount(
  GetAccountArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:serviceaccount/getAccount:getAccount',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAccountResult.fromMap(result);
}
