import 'package:pulumi/pulumi.dart';
import 'get_engine_version_args3.dart';
import 'get_engine_version_result3.dart';

/// Information about an RDS engine version.
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
/// const test = aws.rds.getEngineVersion({
/// engine: "mysql",
/// preferredVersions: [
/// "8.0.27",
/// "8.0.26",
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.rds.get_engine_version(engine="mysql",
/// preferred_versions=[
/// "8.0.27",
/// "8.0.26",
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = Aws.Rds.GetEngineVersion.Invoke(new()
/// {
/// Engine = "mysql",
/// PreferredVersions = new[]
/// {
/// "8.0.27",
/// "8.0.26",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := rds.GetEngineVersion(ctx, &rds.GetEngineVersionArgs{
/// Engine: "mysql",
/// PreferredVersions: []string{
/// "8.0.27",
/// "8.0.26",
/// },
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
/// import com.pulumi.aws.rds.RdsFunctions;
/// import com.pulumi.aws.rds.inputs.GetEngineVersionArgs;
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
/// final var test = RdsFunctions.getEngineVersion(GetEngineVersionArgs.builder()
/// .engine("mysql")
/// .preferredVersions(
/// "8.0.27",
/// "8.0.26")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// test:
/// fn::invoke:
/// function: aws:rds:getEngineVersion
/// arguments:
/// engine: mysql
/// preferredVersions:
/// - 8.0.27
/// - 8.0.26
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With <span pulumi-lang-nodejs="`filter`" pulumi-lang-dotnet="`Filter`" pulumi-lang-go="`filter`" pulumi-lang-python="`filter`" pulumi-lang-yaml="`filter`" pulumi-lang-java="`filter`">`filter`</span>
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.rds.getEngineVersion({
/// engine: "aurora-postgresql",
/// version: "10.14",
/// includeAll: true,
/// filters: [{
/// name: "engine-mode",
/// values: ["serverless"],
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.rds.get_engine_version(engine="aurora-postgresql",
/// version="10.14",
/// include_all=True,
/// filters=[{
/// "name": "engine-mode",
/// "values": ["serverless"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = Aws.Rds.GetEngineVersion.Invoke(new()
/// {
/// Engine = "aurora-postgresql",
/// Version = "10.14",
/// IncludeAll = true,
/// Filters = new[]
/// {
/// new Aws.Rds.Inputs.GetEngineVersionFilterInputArgs
/// {
/// Name = "engine-mode",
/// Values = new[]
/// {
/// "serverless",
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := rds.GetEngineVersion(ctx, &rds.GetEngineVersionArgs{
/// Engine:     "aurora-postgresql",
/// Version:    pulumi.StringRef("10.14"),
/// IncludeAll: pulumi.BoolRef(true),
/// Filters: []rds.GetEngineVersionFilter{
/// {
/// Name: "engine-mode",
/// Values: []string{
/// "serverless",
/// },
/// },
/// },
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
/// import com.pulumi.aws.rds.RdsFunctions;
/// import com.pulumi.aws.rds.inputs.GetEngineVersionArgs;
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
/// final var test = RdsFunctions.getEngineVersion(GetEngineVersionArgs.builder()
/// .engine("aurora-postgresql")
/// .version("10.14")
/// .includeAll(true)
/// .filters(GetEngineVersionFilterArgs.builder()
/// .name("engine-mode")
/// .values("serverless")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// test:
/// fn::invoke:
/// function: aws:rds:getEngineVersion
/// arguments:
/// engine: aurora-postgresql
/// version: '10.14'
/// includeAll: true
/// filters:
/// - name: engine-mode
/// values:
/// - serverless
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetEngineVersionResult3> getEngineVersion3(
  GetEngineVersionArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getEngineVersion:getEngineVersion',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEngineVersionResult3.fromMap(result);
}
