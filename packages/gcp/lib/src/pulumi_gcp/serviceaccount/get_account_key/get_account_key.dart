import 'package:pulumi/pulumi.dart';
import 'get_account_key_args.dart';
import 'get_account_key_result.dart';

/// Get service account public key. For more information, see [the official documentation](https://cloud.google.com/iam/docs/creating-managing-service-account-keys) and [API](https://cloud.google.com/iam/reference/rest/v1/projects.serviceAccounts.keys/get).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myaccount = new gcp.serviceaccount.Account("myaccount", {accountId: "dev-foo-account"});
/// const mykeyKey = new gcp.serviceaccount.Key("mykey", {serviceAccountId: myaccount.name});
/// const mykey = gcp.serviceaccount.getAccountKeyOutput({
/// name: mykeyKey.name,
/// publicKeyType: "TYPE_X509_PEM_FILE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// myaccount = gcp.serviceaccount.Account("myaccount", account_id="dev-foo-account")
/// mykey_key = gcp.serviceaccount.Key("mykey", service_account_id=myaccount.name)
/// mykey = gcp.serviceaccount.get_account_key_output(name=mykey_key.name,
/// public_key_type="TYPE_X509_PEM_FILE")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myaccount = new Gcp.ServiceAccount.Account("myaccount", new()
/// {
/// AccountId = "dev-foo-account",
/// });
///
/// var mykeyKey = new Gcp.ServiceAccount.Key("mykey", new()
/// {
/// ServiceAccountId = myaccount.Name,
/// });
///
/// var mykey = Gcp.ServiceAccount.GetAccountKey.Invoke(new()
/// {
/// Name = mykeyKey.Name,
/// PublicKeyType = "TYPE_X509_PEM_FILE",
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
/// myaccount, err := serviceaccount.NewAccount(ctx, "myaccount", &serviceaccount.AccountArgs{
/// AccountId: pulumi.String("dev-foo-account"),
/// })
/// if err != nil {
/// return err
/// }
/// mykeyKey, err := serviceaccount.NewKey(ctx, "mykey", &serviceaccount.KeyArgs{
/// ServiceAccountId: myaccount.Name,
/// })
/// if err != nil {
/// return err
/// }
/// _ = serviceaccount.GetAccountKeyOutput(ctx, serviceaccount.GetAccountKeyOutputArgs{
/// Name:          mykeyKey.Name,
/// PublicKeyType: pulumi.String("TYPE_X509_PEM_FILE"),
/// }, nil)
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var myaccount = new Account("myaccount", AccountArgs.builder()
/// .accountId("dev-foo-account")
/// .build());
///
/// var mykeyKey = new Key("mykeyKey", KeyArgs.builder()
/// .serviceAccountId(myaccount.name())
/// .build());
///
/// final var mykey = ServiceaccountFunctions.getAccountKey(GetAccountKeyArgs.builder()
/// .name(mykeyKey.name())
/// .publicKeyType("TYPE_X509_PEM_FILE")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// myaccount:
/// type: gcp:serviceaccount:Account
/// properties:
/// accountId: dev-foo-account
/// mykeyKey:
/// type: gcp:serviceaccount:Key
/// name: mykey
/// properties:
/// serviceAccountId: ${myaccount.name}
/// variables:
/// mykey:
/// fn::invoke:
/// function: gcp:serviceaccount:getAccountKey
/// arguments:
/// name: ${mykeyKey.name}
/// publicKeyType: TYPE_X509_PEM_FILE
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAccountKeyResult> getAccountKey(
  GetAccountKeyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:serviceaccount/getAccountKey:getAccountKey',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAccountKeyResult.fromMap(result);
}
