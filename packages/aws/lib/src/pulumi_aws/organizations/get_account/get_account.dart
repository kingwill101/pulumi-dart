import 'package:pulumi/pulumi.dart';
import 'get_account_args.dart';
import 'get_account_result.dart';

/// Get information about an account in an organization.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.organizations.getAccount({
/// accountId: "AWS ACCOUNT ID",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.organizations.get_account(account_id="AWS ACCOUNT ID")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Organizations.GetAccount.Invoke(new()
/// {
/// AccountId = "AWS ACCOUNT ID",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := organizations.LookupAccount(ctx, &organizations.LookupAccountArgs{
/// AccountId: "AWS ACCOUNT ID",
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
/// import com.pulumi.aws.organizations.OrganizationsFunctions;
/// import com.pulumi.aws.organizations.inputs.GetAccountArgs;
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
/// final var example = OrganizationsFunctions.getAccount(GetAccountArgs.builder()
/// .accountId("AWS ACCOUNT ID")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:organizations:getAccount
/// arguments:
/// accountId: AWS ACCOUNT ID
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAccountResult> getAccount(
  GetAccountArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:organizations/getAccount:getAccount',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAccountResult.fromMap(result);
}
