import 'package:pulumi/pulumi.dart';
import 'get_assets_args.dart';
import 'get_assets_result.dart';

/// Information about hardware assets in an Outpost.
///
/// ## Example Usage
///
/// ### Basic
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.outposts.getAssets({
/// arn: exampleAwsOutpostsOutpost.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.outposts.get_assets(arn=example_aws_outposts_outpost["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Outposts.GetAssets.Invoke(new()
/// {
/// Arn = exampleAwsOutpostsOutpost.Arn,
/// });
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
/// _, err := outposts.GetAssets(ctx, &outposts.GetAssetsArgs{
/// Arn: exampleAwsOutpostsOutpost.Arn,
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
/// import com.pulumi.aws.outposts.OutpostsFunctions;
/// import com.pulumi.aws.outposts.inputs.GetAssetsArgs;
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
/// final var example = OutpostsFunctions.getAssets(GetAssetsArgs.builder()
/// .arn(exampleAwsOutpostsOutpost.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:outposts:getAssets
/// arguments:
/// arn: ${exampleAwsOutpostsOutpost.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With Host ID Filter
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.outposts.getAssets({
/// arn: exampleAwsOutpostsOutpost.arn,
/// hostIdFilters: ["h-x38g5n0yd2a0ueb61"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.outposts.get_assets(arn=example_aws_outposts_outpost["arn"],
/// host_id_filters=["h-x38g5n0yd2a0ueb61"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Outposts.GetAssets.Invoke(new()
/// {
/// Arn = exampleAwsOutpostsOutpost.Arn,
/// HostIdFilters = new[]
/// {
/// "h-x38g5n0yd2a0ueb61",
/// },
/// });
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
/// _, err := outposts.GetAssets(ctx, &outposts.GetAssetsArgs{
/// Arn: exampleAwsOutpostsOutpost.Arn,
/// HostIdFilters: []string{
/// "h-x38g5n0yd2a0ueb61",
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
/// import com.pulumi.aws.outposts.OutpostsFunctions;
/// import com.pulumi.aws.outposts.inputs.GetAssetsArgs;
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
/// final var example = OutpostsFunctions.getAssets(GetAssetsArgs.builder()
/// .arn(exampleAwsOutpostsOutpost.arn())
/// .hostIdFilters("h-x38g5n0yd2a0ueb61")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:outposts:getAssets
/// arguments:
/// arn: ${exampleAwsOutpostsOutpost.arn}
/// hostIdFilters:
/// - h-x38g5n0yd2a0ueb61
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With Status ID Filter
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.outposts.getAssets({
/// arn: exampleAwsOutpostsOutpost.arn,
/// statusIdFilters: ["ACTIVE"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.outposts.get_assets(arn=example_aws_outposts_outpost["arn"],
/// status_id_filters=["ACTIVE"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Outposts.GetAssets.Invoke(new()
/// {
/// Arn = exampleAwsOutpostsOutpost.Arn,
/// StatusIdFilters = new[]
/// {
/// "ACTIVE",
/// },
/// });
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
/// _, err := outposts.GetAssets(ctx, &outposts.GetAssetsArgs{
/// Arn: exampleAwsOutpostsOutpost.Arn,
/// StatusIdFilters: []string{
/// "ACTIVE",
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
/// import com.pulumi.aws.outposts.OutpostsFunctions;
/// import com.pulumi.aws.outposts.inputs.GetAssetsArgs;
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
/// final var example = OutpostsFunctions.getAssets(GetAssetsArgs.builder()
/// .arn(exampleAwsOutpostsOutpost.arn())
/// .statusIdFilters("ACTIVE")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:outposts:getAssets
/// arguments:
/// arn: ${exampleAwsOutpostsOutpost.arn}
/// statusIdFilters:
/// - ACTIVE
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAssetsResult> getAssets(
  GetAssetsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:outposts/getAssets:getAssets',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAssetsResult.fromMap(result);
}
