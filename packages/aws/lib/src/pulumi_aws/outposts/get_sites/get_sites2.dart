import 'package:pulumi/pulumi.dart';
import 'get_sites_args2.dart';
import 'get_sites_result2.dart';

/// Provides details about multiple Outposts Sites.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const all = aws.outposts.getSites({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// all = aws.outposts.get_sites()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var all = Aws.Outposts.GetSites.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/outposts"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := outposts.GetSites(ctx, &outposts.GetSitesArgs{}, nil)
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
/// import com.pulumi.aws.outposts.OutpostsFunctions;
/// import com.pulumi.aws.outposts.inputs.GetSitesArgs;
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
/// final var all = OutpostsFunctions.getSites(GetSitesArgs.builder()
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// all:
/// fn::invoke:
/// function: aws:outposts:getSites
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetSitesResult2> getSites2(
  GetSitesArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:outposts/getSites:getSites',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSitesResult2.fromMap(result);
}
