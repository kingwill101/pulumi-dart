import 'package:pulumi/pulumi.dart';
import 'get_patch_baselines_args.dart';
import 'get_patch_baselines_result.dart';

/// Data source for retrieving AWS SSM (Systems Manager) Patch Baselines.
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
/// const example = aws.ssm.getPatchBaselines({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssm.get_patch_baselines()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Ssm.GetPatchBaselines.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ssm.GetPatchBaselines(ctx, &ssm.GetPatchBaselinesArgs{}, nil)
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
/// import com.pulumi.aws.ssm.SsmFunctions;
/// import com.pulumi.aws.ssm.inputs.GetPatchBaselinesArgs;
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
/// final var example = SsmFunctions.getPatchBaselines(GetPatchBaselinesArgs.builder()
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ssm:getPatchBaselines
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With Filters
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ssm.getPatchBaselines({
/// filters: [
/// {
/// key: "OWNER",
/// values: ["AWS"],
/// },
/// {
/// key: "OPERATING_SYSTEM",
/// values: ["WINDOWS"],
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssm.get_patch_baselines(filters=[
/// {
/// "key": "OWNER",
/// "values": ["AWS"],
/// },
/// {
/// "key": "OPERATING_SYSTEM",
/// "values": ["WINDOWS"],
/// },
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
/// var example = Aws.Ssm.GetPatchBaselines.Invoke(new()
/// {
/// Filters = new[]
/// {
/// new Aws.Ssm.Inputs.GetPatchBaselinesFilterInputArgs
/// {
/// Key = "OWNER",
/// Values = new[]
/// {
/// "AWS",
/// },
/// },
/// new Aws.Ssm.Inputs.GetPatchBaselinesFilterInputArgs
/// {
/// Key = "OPERATING_SYSTEM",
/// Values = new[]
/// {
/// "WINDOWS",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ssm.GetPatchBaselines(ctx, &ssm.GetPatchBaselinesArgs{
/// Filters: []ssm.GetPatchBaselinesFilter{
/// {
/// Key: "OWNER",
/// Values: []string{
/// "AWS",
/// },
/// },
/// {
/// Key: "OPERATING_SYSTEM",
/// Values: []string{
/// "WINDOWS",
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
/// import com.pulumi.aws.ssm.SsmFunctions;
/// import com.pulumi.aws.ssm.inputs.GetPatchBaselinesArgs;
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
/// final var example = SsmFunctions.getPatchBaselines(GetPatchBaselinesArgs.builder()
/// .filters(
/// GetPatchBaselinesFilterArgs.builder()
/// .key("OWNER")
/// .values("AWS")
/// .build(),
/// GetPatchBaselinesFilterArgs.builder()
/// .key("OPERATING_SYSTEM")
/// .values("WINDOWS")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ssm:getPatchBaselines
/// arguments:
/// filters:
/// - key: OWNER
/// values:
/// - AWS
/// - key: OPERATING_SYSTEM
/// values:
/// - WINDOWS
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetPatchBaselinesResult> getPatchBaselines(
  GetPatchBaselinesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssm/getPatchBaselines:getPatchBaselines',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPatchBaselinesResult.fromMap(result);
}
