import 'package:pulumi/pulumi.dart';
import 'get_region_args.dart';
import 'get_region_result.dart';

/// <span pulumi-lang-nodejs="`aws.getRegion`" pulumi-lang-dotnet="`aws.getRegion`" pulumi-lang-go="`getRegion`" pulumi-lang-python="`get_region`" pulumi-lang-yaml="`aws.getRegion`" pulumi-lang-java="`aws.getRegion`">`aws.getRegion`</span> provides details about a specific AWS Region.
///
/// As well as validating a given Region name this resource can be used to
/// discover the name of the Region configured within the provider. The latter
/// can be useful in a child module which is inheriting an AWS provider
/// configuration from its parent module.
///
/// ## Example Usage
///
/// The following example shows how the resource might be used to obtain
/// the name of the AWS Region configured on the provider.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getRegion({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_region()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var current = Aws.GetRegion.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := aws.GetRegion(ctx, &aws.GetRegionArgs{}, nil)
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetRegionArgs;
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
/// final var current = AwsFunctions.getRegion(GetRegionArgs.builder()
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// current:
/// fn::invoke:
/// function: aws:getRegion
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRegionResult> getRegion(
  GetRegionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:index/getRegion:getRegion',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionResult.fromMap(result);
}
