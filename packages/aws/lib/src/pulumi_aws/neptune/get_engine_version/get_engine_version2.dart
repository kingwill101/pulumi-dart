import 'package:pulumi/pulumi.dart';
import 'get_engine_version_args2.dart';
import 'get_engine_version_result2.dart';

/// Information about a Neptune engine version.
///
/// > **Note:** If AWS returns multiple matching engine versions, this data source will produce a `multiple Neptune engine versions` error. To avoid this, provide additional criteria to narrow the results or use the <span pulumi-lang-nodejs="`latest`" pulumi-lang-dotnet="`Latest`" pulumi-lang-go="`latest`" pulumi-lang-python="`latest`" pulumi-lang-yaml="`latest`" pulumi-lang-java="`latest`">`latest`</span> argument to select a single version. See the Argument Reference for details.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.neptune.getEngineVersion({
/// preferredVersions: [
/// "1.4.5.0",
/// "1.4.4.0",
/// "1.4.3.0",
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.neptune.get_engine_version(preferred_versions=[
/// "1.4.5.0",
/// "1.4.4.0",
/// "1.4.3.0",
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
/// var test = Aws.Neptune.GetEngineVersion.Invoke(new()
/// {
/// PreferredVersions = new[]
/// {
/// "1.4.5.0",
/// "1.4.4.0",
/// "1.4.3.0",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/neptune"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := neptune.GetEngineVersion(ctx, &neptune.GetEngineVersionArgs{
/// PreferredVersions: []string{
/// "1.4.5.0",
/// "1.4.4.0",
/// "1.4.3.0",
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
/// import com.pulumi.aws.neptune.NeptuneFunctions;
/// import com.pulumi.aws.neptune.inputs.GetEngineVersionArgs;
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
/// final var test = NeptuneFunctions.getEngineVersion(GetEngineVersionArgs.builder()
/// .preferredVersions(
/// "1.4.5.0",
/// "1.4.4.0",
/// "1.4.3.0")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// test:
/// fn::invoke:
/// function: aws:neptune:getEngineVersion
/// arguments:
/// preferredVersions:
/// - 1.4.5.0
/// - 1.4.4.0
/// - 1.4.3.0
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetEngineVersionResult2> getEngineVersion2(
  GetEngineVersionArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:neptune/getEngineVersion:getEngineVersion',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEngineVersionResult2.fromMap(result);
}
