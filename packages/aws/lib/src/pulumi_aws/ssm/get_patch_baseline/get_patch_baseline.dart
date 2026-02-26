import 'package:pulumi/pulumi.dart';
import 'get_patch_baseline_args.dart';
import 'get_patch_baseline_result.dart';

/// Provides an SSM Patch Baseline data source. Useful if you wish to reuse the default baselines provided.
///
/// ## Example Usage
///
/// To retrieve a baseline provided by AWS:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const centos = aws.ssm.getPatchBaseline({
/// owner: "AWS",
/// namePrefix: "AWS-",
/// operatingSystem: "CENTOS",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// centos = aws.ssm.get_patch_baseline(owner="AWS",
/// name_prefix="AWS-",
/// operating_system="CENTOS")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var centos = Aws.Ssm.GetPatchBaseline.Invoke(new()
/// {
/// Owner = "AWS",
/// NamePrefix = "AWS-",
/// OperatingSystem = "CENTOS",
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
/// _, err := ssm.LookupPatchBaseline(ctx, &ssm.LookupPatchBaselineArgs{
/// Owner:           "AWS",
/// NamePrefix:      pulumi.StringRef("AWS-"),
/// OperatingSystem: pulumi.StringRef("CENTOS"),
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
/// import com.pulumi.aws.ssm.inputs.GetPatchBaselineArgs;
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
/// final var centos = SsmFunctions.getPatchBaseline(GetPatchBaselineArgs.builder()
/// .owner("AWS")
/// .namePrefix("AWS-")
/// .operatingSystem("CENTOS")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// centos:
/// fn::invoke:
/// function: aws:ssm:getPatchBaseline
/// arguments:
/// owner: AWS
/// namePrefix: AWS-
/// operatingSystem: CENTOS
/// ```
/// <!--End PulumiCodeChooser -->
///
/// To retrieve a baseline on your account:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const defaultCustom = aws.ssm.getPatchBaseline({
/// owner: "Self",
/// namePrefix: "MyCustomBaseline",
/// defaultBaseline: true,
/// operatingSystem: "WINDOWS",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default_custom = aws.ssm.get_patch_baseline(owner="Self",
/// name_prefix="MyCustomBaseline",
/// default_baseline=True,
/// operating_system="WINDOWS")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var defaultCustom = Aws.Ssm.GetPatchBaseline.Invoke(new()
/// {
/// Owner = "Self",
/// NamePrefix = "MyCustomBaseline",
/// DefaultBaseline = true,
/// OperatingSystem = "WINDOWS",
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
/// _, err := ssm.LookupPatchBaseline(ctx, &ssm.LookupPatchBaselineArgs{
/// Owner:           "Self",
/// NamePrefix:      pulumi.StringRef("MyCustomBaseline"),
/// DefaultBaseline: pulumi.BoolRef(true),
/// OperatingSystem: pulumi.StringRef("WINDOWS"),
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
/// import com.pulumi.aws.ssm.inputs.GetPatchBaselineArgs;
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
/// final var defaultCustom = SsmFunctions.getPatchBaseline(GetPatchBaselineArgs.builder()
/// .owner("Self")
/// .namePrefix("MyCustomBaseline")
/// .defaultBaseline(true)
/// .operatingSystem("WINDOWS")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// defaultCustom:
/// fn::invoke:
/// function: aws:ssm:getPatchBaseline
/// arguments:
/// owner: Self
/// namePrefix: MyCustomBaseline
/// defaultBaseline: true
/// operatingSystem: WINDOWS
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetPatchBaselineResult> getPatchBaseline(
  GetPatchBaselineArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssm/getPatchBaseline:getPatchBaseline',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPatchBaselineResult.fromMap(result);
}
