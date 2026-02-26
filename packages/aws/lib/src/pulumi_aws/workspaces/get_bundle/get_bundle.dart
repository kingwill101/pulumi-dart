import 'package:pulumi/pulumi.dart';
import 'get_bundle_args.dart';
import 'get_bundle_result.dart';

/// Retrieve information about an AWS WorkSpaces bundle.
///
/// ## Example Usage
///
/// ### By ID
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.workspaces.getBundle({
/// bundleId: "wsb-b0s22j3d7",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.workspaces.get_bundle(bundle_id="wsb-b0s22j3d7")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Workspaces.GetBundle.Invoke(new()
/// {
/// BundleId = "wsb-b0s22j3d7",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workspaces"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := workspaces.GetBundle(ctx, &workspaces.GetBundleArgs{
/// BundleId: pulumi.StringRef("wsb-b0s22j3d7"),
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
/// import com.pulumi.aws.workspaces.WorkspacesFunctions;
/// import com.pulumi.aws.workspaces.inputs.GetBundleArgs;
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
/// final var example = WorkspacesFunctions.getBundle(GetBundleArgs.builder()
/// .bundleId("wsb-b0s22j3d7")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:workspaces:getBundle
/// arguments:
/// bundleId: wsb-b0s22j3d7
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### By Owner & Name
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.workspaces.getBundle({
/// owner: "AMAZON",
/// name: "Value with Windows 10 and Office 2016",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.workspaces.get_bundle(owner="AMAZON",
/// name="Value with Windows 10 and Office 2016")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Workspaces.GetBundle.Invoke(new()
/// {
/// Owner = "AMAZON",
/// Name = "Value with Windows 10 and Office 2016",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workspaces"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := workspaces.GetBundle(ctx, &workspaces.GetBundleArgs{
/// Owner: pulumi.StringRef("AMAZON"),
/// Name:  pulumi.StringRef("Value with Windows 10 and Office 2016"),
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
/// import com.pulumi.aws.workspaces.WorkspacesFunctions;
/// import com.pulumi.aws.workspaces.inputs.GetBundleArgs;
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
/// final var example = WorkspacesFunctions.getBundle(GetBundleArgs.builder()
/// .owner("AMAZON")
/// .name("Value with Windows 10 and Office 2016")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:workspaces:getBundle
/// arguments:
/// owner: AMAZON
/// name: Value with Windows 10 and Office 2016
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetBundleResult> getBundle(
  GetBundleArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:workspaces/getBundle:getBundle',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBundleResult.fromMap(result);
}
