import 'package:pulumi/pulumi.dart';
import 'get_primary_contact_args.dart';
import 'get_primary_contact_result.dart';

/// Data source for the primary contact information associated with an AWS Account.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.account.getPrimaryContact({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.account.get_primary_contact()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = Aws.Account.GetPrimaryContact.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/account"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := account.LookupPrimaryContact(ctx, &account.LookupPrimaryContactArgs{}, nil)
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
/// import com.pulumi.aws.account.AccountFunctions;
/// import com.pulumi.aws.account.inputs.GetPrimaryContactArgs;
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
/// final var test = AccountFunctions.getPrimaryContact(GetPrimaryContactArgs.builder()
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// test:
/// fn::invoke:
/// function: aws:account:getPrimaryContact
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetPrimaryContactResult> getPrimaryContact(
  GetPrimaryContactArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:account/getPrimaryContact:getPrimaryContact',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPrimaryContactResult.fromMap(result);
}
