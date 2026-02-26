import 'package:pulumi/pulumi.dart';
import 'get_regions_args.dart';
import 'get_regions_result.dart';

/// The <span pulumi-lang-nodejs="`aws.account.getRegions`" pulumi-lang-dotnet="`aws.account.getRegions`" pulumi-lang-go="`account.getRegions`" pulumi-lang-python="`account_get_regions`" pulumi-lang-yaml="`aws.account.getRegions`" pulumi-lang-java="`aws.account.getRegions`">`aws.account.getRegions`</span> data source lets you query AWS region information for any account in your AWS Organization. It uses the AWS Account REST Service to show all regions, including those that are enabled, disabled, or in the process of being enabled or disabled. You can list regions for any organization account, see all possible region opt-in statuses (`ENABLED`, `ENABLING`, `DISABLING`, `DISABLED`, `ENABLED_BY_DEFAULT`), and check which regions are being enabled or disabled.
///
/// This is more comprehensive than the<span pulumi-lang-nodejs=" aws.getRegions " pulumi-lang-dotnet=" aws.getRegions " pulumi-lang-go=" getRegions " pulumi-lang-python=" get_regions " pulumi-lang-yaml=" aws.getRegions " pulumi-lang-java=" aws.getRegions "> aws.getRegions </span>data source, which only uses the EC2 REST service and is limited to the current account and a subset of region statuses.
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
/// const example = aws.account.getRegions({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.account.get_regions()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Account.GetRegions.Invoke();
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
/// _, err := account.GetRegions(ctx, &account.GetRegionsArgs{}, nil)
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
/// import com.pulumi.aws.account.inputs.GetRegionsArgs;
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
/// final var example = AccountFunctions.getRegions(GetRegionsArgs.builder()
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:account:getRegions
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRegionsResult> getRegions(
  GetRegionsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:account/getRegions:getRegions',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionsResult.fromMap(result);
}
