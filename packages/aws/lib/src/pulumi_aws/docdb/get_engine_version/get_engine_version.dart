import 'package:pulumi/pulumi.dart';
import 'get_engine_version_args.dart';
import 'get_engine_version_result.dart';

/// Information about a DocumentDB engine version.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.docdb.getEngineVersion({
/// version: "3.6.0",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.docdb.get_engine_version(version="3.6.0")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = Aws.DocDB.GetEngineVersion.Invoke(new()
/// {
/// Version = "3.6.0",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/docdb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := docdb.GetEngineVersion(ctx, &docdb.GetEngineVersionArgs{
/// Version: pulumi.StringRef("3.6.0"),
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
/// import com.pulumi.aws.docdb.DocdbFunctions;
/// import com.pulumi.aws.docdb.inputs.GetEngineVersionArgs;
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
/// final var test = DocdbFunctions.getEngineVersion(GetEngineVersionArgs.builder()
/// .version("3.6.0")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// test:
/// fn::invoke:
/// function: aws:docdb:getEngineVersion
/// arguments:
/// version: 3.6.0
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetEngineVersionResult> getEngineVersion(
  GetEngineVersionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:docdb/getEngineVersion:getEngineVersion',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEngineVersionResult.fromMap(result);
}
