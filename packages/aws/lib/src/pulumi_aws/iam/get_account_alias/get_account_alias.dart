import 'package:pulumi/pulumi.dart';
import 'get_account_alias_result.dart';

/// The IAM Account Alias data source allows access to the account alias
/// for the effective account in which this provider is working.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.iam.getAccountAlias({});
/// export const accountAlias = current.then(current => current.accountAlias);
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.iam.get_account_alias()
/// pulumi.export("accountAlias", current.account_alias)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var current = Aws.Iam.GetAccountAlias.Invoke();
///
/// return new Dictionary<string, object?>
/// {
/// ["accountAlias"] = current.Apply(getAccountAliasResult => getAccountAliasResult.AccountAlias),
/// };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// current, err := iam.LookupAccountAlias(ctx, map[string]interface{}{}, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("accountAlias", current.AccountAlias)
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
/// import com.pulumi.aws.iam.IamFunctions;
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
/// final var current = IamFunctions.getAccountAlias(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
/// ctx.export("accountAlias", current.accountAlias());
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// current:
/// fn::invoke:
/// function: aws:iam:getAccountAlias
/// arguments: {}
/// outputs:
/// accountAlias: ${current.accountAlias}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAccountAliasResult> getAccountAlias({
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getAccountAlias:getAccountAlias',
    const <String, dynamic>{},
    options: toDeploymentInvokeOptions(options),
  );
  return GetAccountAliasResult.fromMap(result);
}
